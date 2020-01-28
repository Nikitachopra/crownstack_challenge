module Api
  module V1
    class CategoriesController < ApplicationController

      def index
        categories = Category.all
        render json: {status: "success",data: categories},status: :ok
      end

      def category_products
        category = Category.find(params[:id])
        if category
            products = category.products
            render json: {status: "success",data:products},status: :ok
        end
      end

    end
  end
end