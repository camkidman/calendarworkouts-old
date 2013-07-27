class CreatePersonalInfo < ActiveRecord::Migration
  def change
    create_table :personal_info do |t|
    	t.integer :height
      t.integer :weight
      t.integer :age
      t.string :gender
      t.string :activity_level
      t.integer :user_id
      t.integer :bicep
      t.integer :waist
      t.integer :thighs
      t.integer :hips
      t.integer :chest
      t.integer :calves
      t.integer :shoulders
      t.timestamps
    end
  end
end
