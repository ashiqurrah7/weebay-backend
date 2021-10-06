module Api
    module V1
        class BoughtsController < ApplicationController
            def show
                bought = Product.joins("RIGHT JOIN boughts ON products.id = boughts.product_id WHERE boughts.user_id = '#{params[:id]}'")
                render json: bought, status: :ok
            end

            def create
                bought = Bought.new(bought_params)

                if bought.save
                    render json: {message: "Product bought", data: bought}, status: :ok
                else
                    render json: {message: "Error buying product", data: bought.errors}, status: :bad_request
                end
            end

            private 
            def bought_params
                params.permit(:user_id, :product_id)
            end

        end
    end
end