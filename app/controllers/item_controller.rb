class ItemController < ApplicationController
    def index
        @foo = "bar"
    end

	def new
		@item = Item.new
	end
end
