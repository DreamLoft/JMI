class AddDetailsToOrganisations < ActiveRecord::Migration[5.1]
  def change
    add_reference :organisations, :user, foreign_key: true
    add_column :organisations, :community_name, :string
    add_column :organisations, :community_contact_number, :string
    add_column :organisations, :community_category, :string
    add_column :organisations, :community_size, :string
    add_column :organisations, :community_establishment_year, :number
    add_column :organisations, :community_address_line1, :text
    add_column :organisations, :community_address_line2, :text
    add_column :organisations, :community_address_city, :string
    add_column :organisations, :community_address_state, :string
    add_column :organisations, :community_address_pincode, :string
    add_column :organisations, :community_description, :string
  end
end
