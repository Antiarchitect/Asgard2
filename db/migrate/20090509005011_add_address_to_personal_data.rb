class AddAddressToPersonalData < ActiveRecord::Migration
  def self.up
    add_column :personal_datas, :address, :string
  end

  def self.down
    remove_column :personal_datas, :address
  end
end
