class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save!
    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  def edit

  end

  def show
    @id = params[:id]
    @article = Article.find(@id)
  end

  def update
  end

  def destroy
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
