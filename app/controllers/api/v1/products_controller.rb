module Api
    module V1
        class ProductsController < ApplicationController
            def index
                products = Product.order('created_at DESC')
                render json: products, status: :ok
            end

            def show
                product = Product.find(params[:id])
                # product = User.find(params[:id]).products
                render json: product, status: :ok
            end

            def myproducts
                product = User.find(params[:id]).products
                render json: product, status: :ok
            end

            def create
                product = Product.new(product_params)

                if product.save
                    render json: {message: "Product added", data: product}, status: :ok
                else
                    render json: {message: "Error creating user", data: product.errors}, status: :bad_request
                end
            end

            def update
                product = Product.find(params[:id])

                if product.update(product_params)
                    render json: {message: "Product updated", data: product}, status: :ok
                else
                    render json: {message: "Error updating user", data: product.errors}, status: :bad_request
                end
            end

            def destroy
                product = Product.find(params[:id])
                product.destroy
                render json: {message: "Product Deleted", data: product}, status: :ok
            end

            private 
            def product_params
                params.permit(:user_id, :title, :categories, :desc, :price, :rentRate, :rentInterval, :views)
            end

        end
    end
end