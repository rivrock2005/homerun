class OrdersController < ApplicationController

  def index
    @orders = Order.includes(:product).all

    end

    def show
      @order = Order.find(params[:id])
      before_action :authenticate_user!
    end

    def new
    end

    def create
    end

    def destroy
    end
  end
