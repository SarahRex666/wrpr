class RecipientsController < ApplicationController

    def index
        render json: Recipient.all
    end

    def show
        recipient = Recipient.find_by(id: params[:id])
        render json: recipient, status: ok
    end

    def create
        recipient = Recipient.create(recipient_params)
        render json: recipient, status: :created
    end

    def update
        recipient = Recipient.find_by(id: params[:id])
        recipient.update(recipient_params)
        render json: recipient, status: :ok
    end

    def destroy
        recipient = Recipient.find_by(id: params[:id])
        recipient.destroy
        render json: ""
    end

    private 

    def recipient_params
        params.permit(:id, :name, :description, :photo_url, :bought, :made, :priority, :wrapped, :price, recipient_id, :user_id)
    end
end