class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :phone
      t.string :address
      t.string :type
      t.string :hashed_password
      t.text :admin_note

      t.timestamps
    end
  end
end
