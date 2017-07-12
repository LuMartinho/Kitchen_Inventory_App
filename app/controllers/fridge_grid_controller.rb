class FridgeGridController < ApplicationController
  def index
      @fridges = Fridge.all
  end
end
