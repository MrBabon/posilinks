class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new(articles_params)
  end

  def create
    @article = Article.new(articles_params)

    if @article.save
      redirect_to @article, notice: "Votre article à étais créer avec succés"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(articles_params)
      redirect_to @article, notice: "Modification réussite"
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to organizations_path, notice: "Article supprimé"
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :content, :photo)
  end

end
