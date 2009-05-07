class AddPatientIdToVisit < ActiveRecord::Migration
  def self.up
    add_column :visits, :patient_id, :integer
  end

  def self.down
    remove_column :visits, :patient_id
  end
end
