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

    # image placeholders don't currently fit to width on small screens
    # Find a non-dB way of looping over history in a partial
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

  def join
    @page_title = "Join Us"
    @page_finder = "join"
  end

  def calendar
    @page_title = "Events"
    @page_finder  = "calendar"
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

  def donate
    #handle the params here.
    @amt_var_field = params[:amt_var_field] || '1000'
    @amt = if params[:amt] && params[:amt] != "var" then params[:amt] else @amt_var_field end
    @recur = params[:recur] || 'once'
    @recur_months = params[:recur_months] || '12'

    values = {
      business: "#{Rails.application.secrets.paypal_email}",
      no_shipping: 1,
      upload: 1,
      return: "#{Rails.application.secrets.app_host}#{support_path}",
      invoice: Time.now.strftime("%Y%m%d%H%M%S"),
      item_name: "Donation to LOCODI",
      cmd: "_xclick", # Remove when recurring is established
      amount: @amt, # Remove when recurring is established
      quantity: '1' # Remove when recurring is established
    }

    # See step # 2: http://www.gotealeaf.com/blog/paypal-recurring-payments
    # if @recur == 'monthly'
    #   values.merge(
    #     cmd: "_xclick-subscriptions",
    #     a3: @amt,
    #     p3: 1,
    #     srt: @recur_months,
    #     t3: "Monthly"
    #   )
    # else
    #   values.merge(
    #     cmd: "_xclick",
    #     amount: @amt,
    #     quantity: '1'
    #   )
    # end

    @paypal_URL = "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query

    redirect_to @paypal_URL
  end
end
