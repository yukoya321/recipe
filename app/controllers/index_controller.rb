class IndexController < ApplicationController
   
   def index
     @post = Post.limit(10).order('created_at DESC')
     @q = Post.search
   end
end
