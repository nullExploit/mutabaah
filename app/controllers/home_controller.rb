class HomeController < ApplicationController
  def index
  end

  def article
    @articles = Article.paginate(page: params[:page])
  end
end
