class HomeController < ApplicationController
  def index
  end

  def article
    @articles = Article.all
  end
end
