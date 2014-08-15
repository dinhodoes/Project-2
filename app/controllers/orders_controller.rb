class OrdersController < ApplicationController
  
  def home
    
  end

  def index
    @orders = Order.where(:customer_id => current_customer.id)
  end

  def new
    @order = Order.new
  end
  
  def create 
    @order = Order.new(params.require(:order).permit(:customer_id, :first_name, :last_name, :date_select, :quantity, :flavor)) 
    if @order.save
      redirect_to home_customers_path 
    else 
      render 'new' 
    end
  end

  def show
    # @order = Order.all
    @order = Order.find(params[:id])
  end

  def edit

  end
  
  def update
    @order = Order.new
  end

  def destroy
   
  end
end