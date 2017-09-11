class AddDetailsToBrands < ActiveRecord::Migration[5.1]
  def change
    add_reference :brands, :user, foreign_key: true
    add_column :brands, :brand_name, :string
    add_column :brands, :brand_contact_number, :string
    add_column :brands, :brand_bussiness_type, :string
    add_column :brands, :brand_size, :string
    add_column :brands, :brand_establishment_year, :number
    add_column :brands, :brand_address_line1, :text
    add_column :brands, :brand_address_line2, :text
    add_column :brands, :brand_address_city, :string
    add_column :brands, :brand_address_state, :string
    add_column :brands, :brand_address_pincode, :string
    add_column :brands, :brand_description, :string
    add_column :brands, :brand_keywords, :text
    add_column :brands, :brand_landline_number, :string
    add_column :brands, :brand_contact_person_name, :string
    add_column :brands, :brand_website_link, :string
  end
end
