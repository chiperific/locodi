class PagesController < ApplicationController

  def home
    @page_title = "Home"
    @page_finder = "home"
    @banner_title = "LOCODI"
    @banner_tag = "Loveworld Community Development Initiative"


    require 'open-uri'
    @blog_page = Nokogiri::HTML(open("http://embracingthelove.blogspot.com/feeds/posts/default"))
    @blogs = @blog_page.css('entry')[0..2]
  end

  def work
    @page_title = "Our Work"
    @page_finder = "work"
    @banner_title = "Our Work"

    require 'open-uri'
    @blog_page = Nokogiri::HTML(open("http://embracingthelove.blogspot.com/feeds/posts/default/-/Initiatives"))
    @blogs = @blog_page.css('entry')
  end

  def leaders
    @page_title = "Leaders"
    @page_finder = "leaders"
    @banner_title = "Our Leaders"
    @col_width = "col-xs-12 col-sm-6 well-center"

    # Find a non-dB way of looping over leaders in a partial
  end

  def support
    @page_title = "Support"
    @page_finder = "support"
    @banner_title = "Support our Work"

    @amt_var_field = params[:amt_var_field] || '1000'
    @amt = if params[:amt] && params[:amt] != "var" then params[:amt] else @amt_var_field end

    @recur = params[:recur] || 'once'
    @recur_months = params[:recur_months] || '12'

  end

  def sponsor_child
    @page_title = "Sponsor a Child"
    @page_finder = "sponsor_child"
  end

  # def sponsor_pastor
  #   @page_title = "Sponsor a Pastor"
  #   @page_finder = "sponsor_pastor"
  # end

  def join
    @page_title = "Join Us"
    @page_finder = "join"
  end

  def blog
    @page_title = "Blog"
    @page_finder = "blog"

    require 'open-uri'
    @blog_page = Nokogiri::HTML(open("http://embracingthelove.blogspot.com/feeds/posts/default"))
    @blogs = @blog_page.css('entry')[0..5]

    @banner_title = "From our blog: " + @blog_page.css('title').first.text.split.map(&:capitalize).join(' ')
    @banner_tag = @blog_page.css('subtitle').text
  end

  def social
    @page_title = "Social"
    @page_finder = "social"
    @banner_title = "LOCODI Online"
  end
end
