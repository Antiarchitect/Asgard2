class AddTestData < ActiveRecord::Migration
  def self.up
    Metadata.delete_all

    # for patients
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
    
    # for personal_datas
    Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'first_name',
      :name_in_view => 'Имя',
      :description => 'Имя пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'last_name',
      :name_in_view => 'Отчество',
      :description => 'Отчество пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'family_name',
      :name_in_view => 'Фамилия',
      :description => 'Фамилия пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'name',
      :name_in_view => 'ФИО',
      :description => 'Фамилия, Имя и Отчество пациента',
      :locale => 'ru'
    )
  end

  def self.down
    Metadata.delete_all
  end

end
