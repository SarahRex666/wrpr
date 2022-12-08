class RecipientsController < ApplicationController
    skip_before_action :authenticate_user, only: [:create, :show]

    def index
        render json: Recipient.all
    end

    def show
        recipient = Recipient.find_by(id: params[:id])
        render json: recipient, include: :gifts
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
        params.permit(:id, :name, :relationship, :priority, :user_id)
    end
end