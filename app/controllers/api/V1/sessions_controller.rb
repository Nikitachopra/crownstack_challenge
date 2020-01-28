module Api
    module V1
        class SessionsController < ApplicationController
            skip_before_action :verify_authenticity_token

            def create
                @user = User.where(email: params[:email]).first

                if @user&.valid_password?(params[:password])
                    jwt = JWT.encode(
                        {user_id: @user.id,exp: 60.days.from_now.to_i},
                        Rails.application.secrets.secret_key_base,
                        'HS256'
                    )
                    @user.update_attributes(authenticity_token: jwt) #We can use this to authenticate user in every user logged in function
                    render json: {status: "success",data:jwt},status: :ok
                else
                    render json: {status: "error",data:"Invalid email/password"},status: :unprocessable_entity
                end
            end
        end
    end
end