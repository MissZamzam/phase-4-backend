class CustomersController < ApplicationController
    def index 
        render json: Customer.all
    end

    def show 
        customer = find_customer
        render json: customer
    end

    private
    
    def find_customer
        Customer.find(params[:id])
    end
end
