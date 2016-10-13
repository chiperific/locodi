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

  def initiatives
    @page_title = "Initiatives"
    @page_finder = "initiatives"
    @banner_title = "Our Initiatives"

    require 'open-uri'
    @blog_page = Nokogiri::HTML(open("http://embracingthelove.blogspot.com/feeds/posts/default/-/Initiatives"))
    @blogs = @blog_page.css('entry')
  end

  def leaders
    @page_title = "Leaders"
    @page_finder = "leaders"
    @banner_title = "Our Leaders"
    @col_width = "col-xs-12 col-sm-6 well-center"
  end

  def support
    @page_title = "Support"
    @page_finder = "support"
    @banner_title = "Support our Work"
  end

  def missionaries
    @page_title = "Missionaries"
    @page_finder = "missionaries"
    @banner_title = "Support our Missionaries"

    if params[:finder]
      finder = params[:finder].gsub("-","/")
      @missionary = "view_entity/91/837/" + finder
      @chooser = 1
    else
      #@missionary = "view_all/91/837"
      @chooser = 0
    end

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
