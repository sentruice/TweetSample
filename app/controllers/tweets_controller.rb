class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweets = Tweet.order("created_at DESC")
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new
    @tweet.content = params[:tweet][:content]
    @tweet.save
    redirect_to '/tweets/index'
  end
end
