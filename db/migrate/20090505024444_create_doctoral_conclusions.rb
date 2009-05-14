class CreateDoctoralConclusions < ActiveRecord::Migration
  def self.up
    create_table :doctoral_conclusions do |t|
      t.integer :visit_id
      t.string :doctor_speciality
      t.text :conclusion

      t.timestamps
    end
  end

  def self.down
    drop_table :doctoral_conclusions
  end
end
