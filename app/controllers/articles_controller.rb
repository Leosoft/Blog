class ArticlesController < ApplicationController
  def index
    # variable de instancia
    @articles = Article.all
  end

  # Show
  def show
    @article = Article.find(params[:id])
  end

  # New
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
