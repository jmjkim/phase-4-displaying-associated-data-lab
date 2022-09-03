class ItemsController < ApplicationController
    def index
        # render json: Item.all, except: [:created_at, :updated_at]
        items = Item.all.map { |item| 
        user = User.find(item.user_id)

        user.as_json
        item.as_json(include: {user: {except: [:user_id, :created_at, :updated_at]}}, except: [:created_at, :updated_at])}

        render json: items
    end
end
