class BrandsController < ApplicationController
before_action :authenticate_user!
before_action :find_brand, only: [:show, :update, :destroy]
  def index
    @brands= Brand.all
    render json: @brands
  end
  def create
    @brand= Brand.new(brand_params)
    if @brand.save
      render json: @brand
    end
  end
  def show
    render json: @brand
  end
  def update
    if @brand.update(brand_params)
      render json: @brand
    else
      render json: @brand
    end
  end
  def destroy
    @brand.destroy
  end
  private
  def brand_params
    params.require(:brand).permit(:user_id , :brand_name , :brand_contact_number , :brand_bussiness_type , :brand_size , :brand_establishment_year , :brand_address_line1 , :brand_address_line2 , :brand_address_city , :brand_address_state , :brand_address_pincode , :brand_description , :brand_keywords , :brand_landline_number , :brand_contact_person_name , :brand_website_link)
  end
  def find_brand
    @brand= Brand.find(params[:id])
  end

end
