class AddTestData < ActiveRecord::Migration
  def self.up
    Metadata.delete_all
    Metadata.create(
      :model => 'patients' ,
      :name_in_model => 'date_of_birdth',
      :name_in_view => 'Дата рождения',
      :description => 'Описание даты рождения',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'patients' ,
      :name_in_model => 'id',
      :name_in_view => 'Номер карты',
      :description => 'Номер карты пациента',
      :locale => 'ru'
    )
  end

  def self.down
    Metadata.delete_all
  end

end
