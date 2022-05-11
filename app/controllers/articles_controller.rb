class ArticlesController < ApplicationController
  def index
    #variable de instancia
    @articles = Article.all
  end

  # Show
  def show
    @article = Article.find(params[:id])
  end
end
