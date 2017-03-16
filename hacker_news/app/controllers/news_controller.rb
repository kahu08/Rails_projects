class NewsController < ApplicationController
  def index
    @newss = News.all
  render :index
  end
  def show
    @news = News.find(params[:id])
    render :show
  end

  def new
    @news = News.new
    render :new
  end

  def create
      @news = News.new(list_params)
      if @news.save
        redirect_to  news_index_path
      else
        render :new
      end
  end

  def edit
    @news = News.find(params[:id])
    render :edit
  end
  def update
    @news = News.find(params[:id])
    if @news.update(list_params)
      redirect_to news_index_path
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to news_index_path
  end


    private
      def list_params
        params.require(:news).permit(:information, :upvote)
      end
end
