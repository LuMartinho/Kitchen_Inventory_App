class FridgeGridController < ApplicationController
  def index
        @fridges = Fridge.where(user_id: current_user)
  end
end
