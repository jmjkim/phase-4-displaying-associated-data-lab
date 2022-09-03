class UsersController < ApplicationController
    def show
        user_with_items = User.find_by(id: params[:id]).as_json(include: {items: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at])

        render json: user_with_items
    end
end
