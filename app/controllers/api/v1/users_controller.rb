module Api
    module V1
        class UsersController < ApplicationController
            def show
                user = User.find(params[:id])
                render json: user, status: :ok
            end

            def create
                @user = User.new(user_params)

                if @user.save
                    render json: {message: "User created", data: @user}, status: :ok
                else
                    render json: {message: "Error creating user", data: @user.errors}, status: :bad_request
                end
            end

            def update
                user = User.find(params[:id])

                if user.update(user_params)
                    render json: {message: "User data updated", data: user}, status: :ok
                else
                    render json: {message: "Error updating user", data: user.errors}, status: :bad_request
                end
            end

            def destroy
                user = User.find(params[:id])
                user.destroy
                render json: {message: "User Deleted", data: user}, status: :ok
            end

            def login
                email = ActiveSupport::JSON.decode(request.body.read)['email']
                password = ActiveSupport::JSON.decode(request.body.read)['password']
                user = User.where(email:email).first
                # render json: user
                if user.password == password
                    render json: user, status: :ok
                else
                    render json: {message: "Wrong Credentials"}, status: :unauthorized
                end
            end

            private 
            def user_params
                params.permit(:email, :password, :name, :address, :phone)
            end
            
            def login_params
                params.permit(:email, :password)
            end

        end
    end
end