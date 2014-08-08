class CustomersController < ApplicationController
  
  def home
    
  end

  def index
    @customers = Customer.all
  end

  # Prepare to show the sign-up form
  def new
    @customer = Customer.new
    @is_signup = true
  end
  # Actually build the user
  def create
    @customer = Customer.new(params.require(:customer).permit(:name, :email, :address, :password, :password_confirmation))
    if @customer.save
      session[:customer_id] = @customer.id.to_s
      redirect_to customers_path
    else
      redirect_to new_customer_path
    end
  end

  def show
  end

  def edit
  end
  
  def update
  end

  def destroy
    Customer.find(params[:id]).destroy
    # Exactly the same idea as this little number:
    redirect_to customers_path
  end
end