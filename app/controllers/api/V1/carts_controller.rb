module Api
    module V1
        class CartsController < ApplicationController
            skip_before_action :verify_authenticity_token

            def add_product
                product_id = params[:product_id]
                user = User.find(params[:user_id])
                cart = Cart.find_by_user_id(params[:user_id]) #Based on the assumption cart is created with the creation of the user
                if Product.find(product_id) && user
                    cart.product << product_id
                    if cart.save
                        render json: {status: "success",data:cart},status: :ok
                    else
                        render json: {status: "failed", data:cart.errors},status: :unprocessable_entity
                    end
                else
                    render json: {status: "Failed",data:"Product or User not found"},status: :unprocessable_entity
                end
            end

        end
    end
end