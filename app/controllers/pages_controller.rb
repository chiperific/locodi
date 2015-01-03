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

    # image placeholders don't currently fit to width on small screens
  end

  def leaders
    @page_title = "Leaders"
    @page_finder = "leaders"
    @banner_title = "Our Leaders"
    @col_width = "col-xs-12 col-sm-6 col-md-3 col-lg-2 well-center"

    # Find a non-dB way of looping over leaders in a partial
  end

  def history
    @page_title = "History"
    @page_finder = "history"
    @banner_title = "Our History"

    # image placeholders don't currently fit to width on small screens
    # Find a non-dB way of looping over history in a partial
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
    @banner_title = "Latest Info"
  end
end
