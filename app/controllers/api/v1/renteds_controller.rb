module Api
    module V1
        class RentedsController < ApplicationController
            def show
                rented = Product.joins("RIGHT JOIN renteds ON products.id = renteds.product_id WHERE renteds.user_id = '#{params[:id]}'")
                render json: rented, status: :ok
            end

            def create
                rented = Rented.new(rented_params)

                if rented.save
                    render json: {message: "Product added", data: rented}, status: :ok
                else
                    render json: {message: "Error creating user", data: rented.errors}, status: :bad_request
                end
            end

            private 
            def rented_params
                params.permit(:user_id, :product_id)
            end

        end
    end
end