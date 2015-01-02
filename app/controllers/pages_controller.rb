class PagesController < ApplicationController
  def home
    @page_title = "Home"
    @page_finder = "home"
    @banner_title = "LOCODI"
    @banner_tag = "The tagline of the century"
  end

  def work
    @page_title = "Our Work"
    @page_finder = "work"
    @banner_title = "Our Work"
  end

  def leaders
    @page_title = "Leaders"
    @page_finder = "leaders"
    @banner_title = "Our Leaders"
  end

  def history
    @page_title = "History"
    @page_finder = "history"
    @banner_title = "Our History"
  end

  def support
    @page_title = "Support Us"
    @page_finder = "support"
    @banner_title = "Support Our Work"
  end

  def calendar
    @page_title = "Events"
    @page_finder  = "calendar"
  end

  def social
    @page_title = "Social"
    @page_finder = "social"
    @banner_title = "The Latest"
  end
end
