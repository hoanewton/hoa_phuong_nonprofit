class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description
      t.text :contact
      t.text :address
      t.text :admin_note

      t.timestamps
    end
  end
end
