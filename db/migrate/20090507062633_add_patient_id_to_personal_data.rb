class AddPatientIdToPersonalData < ActiveRecord::Migration
  def self.up
    add_column :personal_datas, :patient_id, :integer
  end

  def self.down
    remove_column :personal_datas, :patient_id
  end
end
