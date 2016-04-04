class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
     t.integer :user_id
     t.string :street, :null => false, :default => ""
     t.string :city,   :null => false, :default => ""
     t.string :state,  :null => false, :default => ""
     t.string :zip,    :null => false, :default => ""
     t.timestamps

    end
  end
end
