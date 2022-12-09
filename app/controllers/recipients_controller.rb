class RecipientsController < ApplicationController
    skip_before_action :authenticate_user

    def index
        render json: Recipient.all
    end

    def show
        recipient = Recipient.find_by(id: params[:id])
        render json: recipient, include: :gifts
    end

    def create
        recipient = Recipient.create(recipient_params)
        recipients = recipient.user
        render json: recipients, status: :created
    end

    def update
        recipient = Recipient.find_by(id: params[:id])
        recipient.update(recipient_params)
        render json: recipient, status: :ok
    end

    def destroy
        recipient = Recipient.find_by(id: params[:id])
        recipients = recipient.user
        recipient.destroy
        render json: recipients
    end

    private 

    def recipient_params
        params.permit(:id, :name, :relationship, :priority, :user_id)
    end
end