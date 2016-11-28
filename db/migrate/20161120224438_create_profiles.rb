class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :contact_number
      t.string :location
      t.string :makeup_type
      t.string :bio

      t.timestamps
    end
  end
end
