class StaticController < ApplicationController
  def home
    @about = Page.find_by_title_en('About us')
  end
end
