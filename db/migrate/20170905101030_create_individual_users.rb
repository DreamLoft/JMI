class CreateIndividualUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :individual_users do |t|

      t.timestamps
    end
  end
end
