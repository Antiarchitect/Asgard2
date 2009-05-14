class CreateAnalyses < ActiveRecord::Migration
  def self.up
    create_table :analyses do |t|
      t.string :type
      t.integer :patient_id
      t.decimal :param1
      t.decimal :param2
      t.decimal :param3
      t.decimal :param4
      t.decimal :param5
      t.decimal :param6
      t.decimal :param7
      t.decimal :param8
      t.decimal :param9
      t.decimal :param10
      t.decimal :param11
      t.decimal :param12
      t.decimal :param13
      t.decimal :param14
      t.decimal :param15
      t.decimal :param16
      t.decimal :param17
      t.decimal :param18
      t.decimal :param19
      t.decimal :param20
      t.decimal :param21
      t.decimal :param22
      t.decimal :param23
      t.decimal :param24
      t.decimal :param25
      t.decimal :param26
      t.decimal :param27
      t.decimal :param28
      t.decimal :param29
      t.decimal :param30
      t.decimal :param31
      t.decimal :param32
      t.decimal :param33
      t.decimal :param34
      t.decimal :param35
      t.decimal :param36
      t.decimal :param37
      t.decimal :param38
      t.decimal :param39
      t.decimal :param40
      t.decimal :param41
      t.decimal :param42
      t.decimal :param43
      t.decimal :param44
      t.decimal :param45
      t.decimal :param46
      t.decimal :param47
      t.decimal :param48
      t.decimal :param49
      t.decimal :param50


      t.timestamps
    end
  end

  def self.down
    drop_table :analyses
  end
end
