class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @inkuru = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    if @article.save
      flash[:notice] = "Article was created successfully"
      redirect_to @article
    else
      render 'new', status: 422
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end
end