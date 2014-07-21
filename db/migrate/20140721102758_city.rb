class City < ActiveRecord::Migration
  def change
  	add_column :locations, :city, :string
  	add_column :locations, :streen , :string
  end
end
