class CreateMetadatas < ActiveRecord::Migration
  def self.up
    create_table :metadatas do |t|
      t.string :model
      t.string :name_in_model
      t.string :name_in_view
      t.text :description
      t.string :locale
      
      t.timestamps
    end
  end

  def self.down
    drop_table :metadatas
  end
end
