class GiftsController < ApplicationController
    skip_before_action :authenticate_user
    def index
        render json: Gift.all
    end

    def show
        gift = Gift.find_by(id: params[:id])
        render json: gift, include: "recipients"
    end

    def create
        gift = Gift.create(gift_params)
        gifts = gift.user
        render json: gifts, status: :created
    end

    def update
        gift = Gift.find_by(id: params[:id])
        gift.update(gift_params)
        render json: gift, status: :ok
    end

    def destroy
        gift = Gift.find_by(id: params[:id])
        gifts = gift.user
        gift.destroy
        render json: gifts
    end

    private 

    def gift_params
        params.permit(:id, :name, :description, :photo_url, :bought, :made, :priority, :wrapped, :price, :user_id, :recipient_id)
    end
end
