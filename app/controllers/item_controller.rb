class ItemController < ApplicationController
    def index
        @foo = "bar"
    end

	def new
		@item = Item.new
	end

    def create
        @item = Item.new(item_params)
        if @item.save´
            flash[:success] = "item created"
        end
    end

     private
     def item_params
         params.require(
            :item).permit(
            :name,
            :price,
            :category_id,
            :user_id)
     end
end
