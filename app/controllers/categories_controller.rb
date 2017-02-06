class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Created New Category"
            redirect_to @category
        end
    end

    private
    def category_params
        params.require(
            :category
        ).permit(
            :name,
            :user_id
        )
    end
end
