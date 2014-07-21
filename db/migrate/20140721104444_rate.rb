class Rate < ActiveRecord::Migration
  def change
  	add_column :locations, :rate, :integer
  end
end
