class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show, :edit, :update, :destroy]

  def index
    @accessories = Accessory.all
  end

  def show
  end

  # GET /accessories/new
  def new
    @accessory = Accessory.new
  end

  # GET /accessories/1/edit
  def edit
  end

  def create
    @accessory = Accessory.new(accessory_params)

      if @accessory.save
        flash[:success2] = "Accessories Is Successfully Inserted."
        redirect_to accessories_path(@accessory)

      else
        render 'new'
      end
    end

  def update

    if @accessory.update(accessory_params)
      flash[:info2] = "Accessories Was Successfully Updated."
      redirect_to accessories_path(@accessory)

    else
      render 'edit'
    end

end

  def destroy
    @accessory.destroy
    flash[:danger2] = "Accessories Was Successfully Deleted."
    redirect_to accessories_path(@accessory)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessory
      @accessory = Accessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessory_params
      params.require(:accessory).permit(:Name, :user_id,:image)
    end
end
