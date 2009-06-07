class CreateMetadatas < ActiveRecord::Migration
  def self.up
    create_table :metadatas do |t|
      t.integer :model_id
      t.string :name_in_model
      t.string :name_in_view
      t.string :description
      t.string :unit
      t.string :locale
      
      t.timestamps
    end
  end

  def self.down
    drop_table :metadatas
  end
end
