class PagesController < ApplicationController
  def home
    @page_title = "Home"
    @page_finder = "home"
    @banner_title = "LOCODI"
    @banner_tag = "Loveworld Community Development Initiative"

    #@blog = Nokogiri::HTML(open("http://embracingthelove.blogspot.com/feeds/posts/default/"))
    #@blog_1_title = @blog.xpath("//title").first
    
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
    @col_width = "col-xs-12 col-sm-6 col-md-3 col-lg-2 well-center"

    # Find a non-dB way of looping over leaders in a partial
  end

  def support
    @page_title = "Support Us"
    @page_finder = "support"
    @banner_title = "Support Our Work"
  end

  def join
    @page_title = "Join Us"
    @page_finder = "join"
  end

  def sponsor
    @page_title = "Sponsor a Child"
    @page_finder = "sponsor"
  end

  def calendar
    @page_title = "Events"
    @page_finder  = "calendar"
  end

  def social
    @page_title = "Social"
    @page_finder = "social"
    @banner_title = "Latest Info"
  end
end
