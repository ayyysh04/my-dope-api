class Api::V1::ProductsController < ApplicationController

  # Index Action :index renders all items in the products table
  def index
    products = Product.all
    render json: products, status: 200
  end

  # Create Action :As the name implies this action lets us create a new product.
  # If the product saves correctly, we render the json data for the product.
  # If the product does not save correctly we render an error object.
  def create
    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      price: prod_params[:price],
      description: prod_params[:description]
    )
    
    if product.save
      render json: product, status: 200
    else
      render json: {error: "Error creating review."}
    end
  end

  # Show Action: This method looks up the product by the id, if it is found we render the json object
  # Otherwise we render an error object.
  def show
    product = Product.find_by(id: params[:id])
    
    if product
      render json: product, status: 200
    else
      render json: {error: "Product Not Found."}
    end
  end

  # Private Method for Action Controller Parameters :This private method is only available to this controller.
  # https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-i-require
  # It uses the the built-in methods .require and .permit provided by ActionController
  # It's a common Rails convention to use strong parameters to sanitize and whitelist parameters coming from the client to prevent mass assignment vulnerabilities.

  private
  
  def prod_params
    # specifies that the request must include a product parameter and permits only the specified attributes (:name, :brand, :price, :description).
    params.require(:product).permit([
      :name,
      :brand,
      :price,
      :description
    ])
  end
end