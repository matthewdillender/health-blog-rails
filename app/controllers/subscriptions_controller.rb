# app/controllers/subscriptions_controller.rb

class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :update, :destroy]

  # GET /subscriptions
  def index
    @subscriptions = Subscription.all
    render json: @subscriptions
  end

  # GET /subscriptions/1
  def show
    render json: @subscription
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      render json: @subscription, status: :created, location: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscriptions/1
  def update
    if @subscription.update(subscription_params)
      render json: @subscription
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subscription_params
      params.require(:subscription).permit(:user_id, :plan_id, :start_date, :end_date, :status)
    end
end
