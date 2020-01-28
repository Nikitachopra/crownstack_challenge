module Api
    module V1
        class UsersController < ApplicationController

            def get_cart
                cart = Cart.find_by_user_id(params[:id])
                render json: {status: "success",data:cart},status: :ok
            end
        end
    end
end