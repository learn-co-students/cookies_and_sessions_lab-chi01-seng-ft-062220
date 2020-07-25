class ProductsController < ApplicationController

    def index
        cart
        @product = Product.create(params[:product])
    end

    def add
        cart << params[:product][:name]
        render :index
    end
end
