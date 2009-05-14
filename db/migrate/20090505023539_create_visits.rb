class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.integer :patient_id
      t.date :start_date
      t.date :end_date
      t.text :epicrysis

      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
