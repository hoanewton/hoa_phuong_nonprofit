class AddStatusToSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :status, :integer, index: true
  end
end
