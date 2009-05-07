class AddPatientIdToDoctoralConclusion < ActiveRecord::Migration
  def self.up
    add_column :doctoral_conclusions, :patient_id, :integer
  end

  def self.down
    remove_column :doctoral_conclusions, :patient_id
  end
end
