class ArticlesController < ApplicationController
  def show
    @inkuru = Article.find(params[:id])
  end
end