class GiftsController < ApplicationController
    def index
        render json: Gift.all
    end

    def show
        gift = Gift.find_by(id: params[:id])
        render json: gift, status: ok
    end

    def create
        gift = Gift.create(gift_params)
        render json: gift, status: :created
    end

    def update
        gift = Gift.find_by(id: params[:id])
        gift.update(gift_params)
        render json: gift, status: :ok
    end

    def destroy
        gift = Gift.find_by(id: params[:id])
        gift.destroy
        render json: ""
    end

    private 

    def gift_params
        params.permit(:id, :name, :relationship, :priority, :user_id)
    end
end
