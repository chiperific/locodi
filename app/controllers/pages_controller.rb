class PagesController < ApplicationController
  def home
    @page_title = "Home"
    @page_finder = "home"
  end

  def work
    @page_title = "Our Work"
    @page_finder = "work"
  end

  def leaders
    @page_title = "Our Leaders"
    @page_finder = "leaders"
  end

  def history
    @page_title = "History"
    @page_finder = "history"
  end

  def support
    @page_title = "Support Us"
    @page_finder = "support"
  end

  def social
    @page_title = "Social"
    @page_finder = "social"
  end
end
