class AddDetailsToIndividualUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :individual_users, :user, foreign_key: true
    add_column :individual_users, :first_name, :string
    add_column :individual_users, :last_name, :string
    add_column :individual_users, :dob, :date
    add_column :individual_users, :gender, :string
    add_column :individual_users, :contact_number, :string
    add_column :individual_users, :city, :string
    add_column :individual_users, :state, :string
    add_column :individual_users, :pincode, :string
  end
end
