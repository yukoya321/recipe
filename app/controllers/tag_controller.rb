class TagController < ApplicationController
  
  def index
    @tag = Tag.new
    @tags = Tag.order('id DESC')
  end
  
  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, flash: {notice: 'Yes!! Success'}
    else
      redirect_to tags_path, flash: {error: 'duplicated'}
    end
  end
  
  def destroy
    @tag = Tag.find_by(id: params[:id])
    @tag.destroy
    redirect_to tags_path, flash: {notice: 'destroy!! Success'}
  end
  
  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
