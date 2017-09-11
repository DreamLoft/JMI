class OrganisationsController < ApplicationController
before_action :authenticate_user!
before_action :find_organisation, only: [:show, :update, :destroy]
  def index
    @organisations= Organisation.all
    render json: @organisations
  end
  def create
    @organisation= Organisation.new(organisation_params)
    if @organisation.save
      render json: @organisation
    end
  end
  def show
    render json: @organisation
  end
  def update
    if @organisation.update(organisation_params)
      render json: @organisation
    else
      render json: @organisation
    end
  end
  def destroy
  end

private
def organisation_params
  params.require(:organisation).permit(:user_id, :community_name , :community_contact_number, :community_category, :community_size, :community_establishment_year, :community_address_line1, :community_address_line2, :community_address_city, :community_address_state, :community_address_pincode, :community_description )
end
def find_organisation
  @organisation= Organisation.find(params[:id])
end
end
