class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :state
      t.string :country
      t.string :username
      t.integer :birthday
      t.integer :birthmonth
      t.integer :birthyear

      t.timestamps
    end
  end
end
