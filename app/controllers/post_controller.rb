class PostController < ApplicationController

  before_action :set_process_order, :set_foodstuff_amount_order, only: [:create]
  
  def index
    @post = Post.new
    @post.recipe_processes.build
    @post.foodstuff_amounts.build
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, flash: {notice: 'Yes!! Success'}
    else
      render action: :index
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
      :image,
      { 
        :tag_ids => [],
        :foodstuff_ids => []
      },
      foodstuff_amounts_attributes:[
        :foodstuff,
        :amount,
        :order,
      ],
      recipe_processes_attributes:[
        :title,
        :description,
        :order,
      ]
      )
  end
  
  def set_process_order
    order_num = 0
    process_order = params[:post][:recipe_processes_attributes]
    process_order.each do |k, v|
      order_num += 1
      v[:order] = order_num
    end
  end
  def set_foodstuff_amount_order
    order_num = 0
    foodstuff_amount_order = params[:post][:foodstuff_amounts_attributes]
    foodstuff_amount_order.each do |k, v|
      order_num += 1
      v[:order] = order_num
    end
  end
  
end
