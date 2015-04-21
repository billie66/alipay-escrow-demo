class OrdersController < ApplicationController
  def new
    @course = Course.find(params[:course_id]) if params[:course_id].present?
    @order = Order.new
    @trade_no = Time.now.to_i.to_s
  end

  def create
    redirect_to :root
  end

  private

  def order_params
    params.require(:order).permit(:course_id, :trade_no, :trade_status, :subject, :total_fee)
  end
end
