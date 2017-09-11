class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
        #  ,  :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :individual_users
  has_many :brands
  has_many :organisations
end
