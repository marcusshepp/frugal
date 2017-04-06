class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Created New Category"
            redirect_to categories_path
        end
    end

    def show
      @category = Category.find(params[:id])
    end

    def edit
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      if @category.update(category_params)
        redirect_to @category
      else
        render 'edit'
      end
    end

    def index
      @categories = Category.all
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
