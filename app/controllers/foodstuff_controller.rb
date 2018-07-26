class FoodstuffController < ApplicationController
  def index
    @foodstuff = Foodstuff.new
    @foodstuffs = Foodstuff.order('id DESC')
  end
  
  def create
    @foodstuff = Foodstuff.new(foodstuff_params)
    if @foodstuff.save
      redirect_to foodstuffs_path, flash: {notice: 'Yes!! Success'}
    else
      redirect_to foodstuffs_path, flash: {error: 'duplicated'}
    end
  end
  
  def destroy
    @foodstuff = Foodstuff.find_by(id: params[:id])
    @foodstuff.destroy
    redirect_to foodstuffs_path, flash: {notice: 'destroy!! Success'}
  end
  
  private
  def foodstuff_params
    params.require(:foodstuff).permit(:name)
  end
end
