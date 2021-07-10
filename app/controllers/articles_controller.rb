class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create

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
end
