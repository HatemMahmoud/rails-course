class CommentsController < ApplicationController
 
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment])
    redirect_to @article, notice: 'Comment was successfully created.'
  end
 
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article
  end
 
end