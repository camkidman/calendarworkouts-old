class AddGymToPersonalData < ActiveRecord::Migration
  def change
    add_column :personal_data, :gym, :boolean
  end
end
