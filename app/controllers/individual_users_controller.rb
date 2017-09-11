class IndividualUsersController < ApplicationController
before_action :authenticate_user!
before_action :find_individual, only: [:show, :update, :destroy]
  def index
    @individuals= IndividualUser.all
    render json: @individuals
  end
  def create
    @individual= IndividualUser.new(individual_params)
    if @individual.save
      render json: @individual
    end
  end
  def show
    render json: @individual
  end
  def update
    if @individual.update(individual_params)
      render json: @individual
    else
      render json: @individual
    end
  end
  def destroy
    @individual.destroy
  end

private
def individual_params
  params.require(:individual_user).permit(:user_id, :first_name, :last_name, :dob, :gender, :contact_number, :city, :state, :pincode)
end
def find_individual
  @individual= IndividualUser.find(params[:id])
end

end
