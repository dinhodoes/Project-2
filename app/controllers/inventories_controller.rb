class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def edit
  end

  def update
  end

  # Sample URL getting here: http://localhost:3000/inventories/097c4d9a7134be087f234
  # HTTP verb (or method) that gets us here is ........ DELETE
  def destroy
    Inventory.find(params[:id]).destroy
    redirect_to inventories_path
  end

  # Set (make the form)
  def new
    @inventory = Inventory.new
  end

  # Spike (from posted back junk, save a new Inventory item)
  def create
    inventory = Inventory.new(params.require(:inventory).
      permit(:name, :qty_on_hand))
    if inventory.save
      redirect_to inventories_path
    end
  end
end