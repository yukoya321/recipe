class PostController < ApplicationController
  def index
    @post = Post.new
    @post.recipe_processes.build
=begin
    @user.tags.build
    @user.foodstuffs.build
=end   
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
      recipe_processes_attributes:[
        :title,
        :description,
        :order,
        :post_id
      ],
      :tag_ids => [],
      :foodstuff_ids =>  []
      )
  end

end
