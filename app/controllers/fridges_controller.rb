class FridgesController < ApplicationController
  before_action :set_fridge, only: [:show, :edit, :update, :destroy]

  def index
    @fridges = Fridge.where(user_id: current_user)
  end


  def show
  end

  def new
    @fridge = current_user.fridges.build
  end

  def edit
  end

  def create
    @fridge = current_user.fridges.build(fridge_params)
    if @fridge.save
        flash[:success2] = "Item Is Successfully Inserted In To Your Fridge."
        redirect_to fridges_path(@fridge)

      else
        render 'new'
      end
    end

  def update

      if @fridge.update(fridge_params)
        flash[:info2] = "Item Is Successfully Updated In Your Fridge."
        redirect_to fridges_path(@fridge)

      else
        render 'edit'
      end

  end

  def destroy
    @fridge.destroy
    flash[:danger2] = "Item Was Successfully Deleted In To Your Fridge."
    redirect_to fridges_path(@fridge)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fridge
      @fridge = Fridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fridge_params
      params.require(:fridge).permit(:Name, :Quantity, :Description, :Amount, :image)
    end
end
