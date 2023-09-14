class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @inkuru = Article.find(params[:id])
  end
end