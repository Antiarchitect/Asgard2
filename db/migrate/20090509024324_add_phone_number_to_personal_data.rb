class AddPhoneNumberToPersonalData < ActiveRecord::Migration
  def self.up
    add_column :personal_datas, :phone_number, :string
    add_column :personal_datas, :mobile_phone_number, :string
  end

  def self.down
    remove_column :personal_datas, :mobile_phone_number
    remove_column :personal_datas, :phone_number
  end
end
