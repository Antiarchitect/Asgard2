class CreatePersonalDatas < ActiveRecord::Migration
  def self.up
    create_table :personal_datas do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.boolean :gender
      t.integer :passport_seria
      t.integer :passport_number
      t.integer :policy_seria
      t.integer :policy_number

      t.timestamps
    end
  end

  def self.down
    drop_table :personal_datas
  end
end
