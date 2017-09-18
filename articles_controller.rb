class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to  articles_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    @article.update(article_params)
    if @article.save
      redirect_to show_article_path
    else render "edit"
    end
end
  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
  params.require(:article).permit(:titre, :description, :contenu, :auteur)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
