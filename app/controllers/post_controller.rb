class PostController < ApplicationController

  before_action :set_order, only: [:create]
  
  def index
    @post = Post.new
    @post.recipe_processes.build
    @tags = Tag.all
    @foodstuffs = Foodstuff.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, flash: {notice: 'Yes!! Success'}
    else
      redirect_to posts_path, flash: {error: 'duplicated'}
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to posts_path, flash: {notice: 'destroy!! Success'}
  end
  
  private
  def post_params
    params.require(:post).permit(
      :name,
      :description,
      { 
        :tag_ids => [],
        :foodstuff_ids => []
      },
      recipe_processes_attributes:[
        :title,
        :description,
        :order,
      ]
      )
  end
  
  def set_order
    order_num = 1
    process_order = params[:post][:recipe_processes_attributes]
    process_order.each do |k, v|
      v[:order] = order_num
      order_num += 1
    end
  end
  
end
