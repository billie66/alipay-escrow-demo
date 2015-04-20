class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:course_id, :trade_no, :trade_status, :subject, :total_fee)
    end
end
