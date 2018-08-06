class SearchController < ApplicationController
  def index
    @post = Post.limit(10).order('created_at DESC')
  end
end
