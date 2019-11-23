class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.string :email
      t.text :password_digest
      t.string :phone
      t.text :address
      t.string :role
      t.text :admin_note

      t.timestamps
    end
  end
end
