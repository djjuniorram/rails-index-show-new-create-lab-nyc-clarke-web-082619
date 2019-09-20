class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        render :index
    end

    def show
        @coupon = Coupon.find(params[:id])
        render :show
    end

    def new
        @coupon = Coupon.new
        render :new
    end

    def create
        @coupon = Coupon.create(coupons_params)
        redirect_to coupon_path(@coupon)
    end

    def coupons_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end
