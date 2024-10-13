class HomeController < ApplicationController
  def index
    @articles = Article.all.includes(:user)
  end
end