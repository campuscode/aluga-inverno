class AddPropertyTypeRefToProperties < ActiveRecord::Migration[5.1]
  def change
    add_reference :properties, :property_type, foreign_key: true
  end
end
