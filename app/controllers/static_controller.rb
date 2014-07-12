class StaticController < ApplicationController
  def home
    @about = Page.find_by_title_en('About us')
    @contact = Page.find_by_title_en('Contact us')
  end
end
