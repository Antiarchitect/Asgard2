class CreateObjecitveDatas < ActiveRecord::Migration
  def self.up
    create_table :objecitve_datas do |t|
      t.integer :visit_id
      t.float :param1
      t.float :param2
      t.float :param3
      t.float :param4
      t.float :param5
      t.float :param6
      t.float :param7
      t.float :param8
      t.float :param9
      t.float :param10
      t.float :param11
      t.float :param12
      t.float :param13
      t.float :param14
      t.float :param15
      t.float :param16
      t.float :param17
      t.float :param18
      t.float :param19
      t.float :param20
      t.float :param21
      t.float :param22
      t.float :param23
      t.float :param24
      t.float :param25
      t.float :param26
      t.float :param27
      t.float :param28
      t.float :param29
      t.float :param30
      t.float :param31
      t.float :param32
      t.float :param33
      t.float :param34
      t.float :param35
      t.float :param36
      t.float :param37
      t.float :param38
      t.float :param39
      t.float :param40
      t.float :param41
      t.float :param42
      t.float :param43
      t.float :param44
      t.float :param45
      t.float :param46
      t.float :param47
      t.float :param48
      t.float :param49
      t.float :param50


      t.timestamps
    end
  end

  def self.down
    drop_table :objecitve_datas
  end
end
