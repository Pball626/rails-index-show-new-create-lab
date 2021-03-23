class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all 
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.create(params[:store, :coupon_code])
        @coupon.save
        redirect_to(@coupon)
    end

    def edit
        # @coupon = Coupon.find(params[:id])
    end
end
