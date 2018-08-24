class SearchController < ApplicationController
  def index
    @word = params[:q]
    @search = Post.ransack(@word)
    @posts = @search.result
    @q = Post.search
  end
end
