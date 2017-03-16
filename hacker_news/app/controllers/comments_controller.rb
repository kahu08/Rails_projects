class CommentsController < ApplicationController
  def new
    @news = News.find(params[:news_id])
    @comment = @news.comments.new
  end

  def create
    @news = News.find(params[:news_id])
    @comment = @news.comments.new(comment_params)
    if @comment.save
      redirect_to news_path(@comment.news)
    else
      render :new
    end
  end

  def edit
    @news = News.find(params[:news_id])
    @comment = Comment.find(params[:id])
    render :edit
  end
  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to news_index_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:news_id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :comment)
  end
end
