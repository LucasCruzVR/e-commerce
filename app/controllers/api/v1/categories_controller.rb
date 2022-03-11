module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :set_category, only: %i[show update destroy]

      def index
        @categories = ECommerce::Models::Category.all
      end

      def show; end

      def create
        context = Category::Create.call(category_params: category_params)
        @category = context.category

        if context.success?
          render :show, status: :created
        else
          render json: formatError(context, :category), status: context.status
        end
      end

      def update
        context = Category::Update.call(category_params: category_params,
                                        category: @category)
        @category = context.category

        if context.success?
          render :show, status: :ok
        else
          render json: formatError(context, :category), status: context.status
        end
      end

      def destroy
        context = Category::Destroy.call(category: @category)

        if context.success?
          head :ok
        else
          render json: formatError(context, :category), status: context.status
        end
      end

      private

      def set_category
        @category = ECommerce::Models::Category.find(params[:id])
      end

      def category_params
        params.permit(:id, :name, :status)
      end
    end
  end
end
