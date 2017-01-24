class ItemController < ApplicationController
    def index
        @foo = "bar"
        @items = @user.items.as_json
        respond_to do |format|
            format.html
            format.json { render :json => @items }
        end
    end
end
