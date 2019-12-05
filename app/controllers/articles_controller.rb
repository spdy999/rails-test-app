class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    render plain: params[:article].inspect
    # @article = Article.new(article_params)
    # if @article.save
    #   flash[:success] = "Article was successfully created"
    #   redirect_to article_path(@article)
    # end
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
