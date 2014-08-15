class InventoriesController < ApplicationController
  before_action :check_admin, only: [:new, :edit, :create, :destroy, :update] 

  def index
    @inventories = Inventory.all
  end

  def edit
    
  end

  def update
    @inventory = Inventory.new
    redirect_to update_inventories_path
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

  private

  def check_admin
    unless current_customer && current_customer.is_admin
      redirect_to home_customers_path 
    end
  end

end