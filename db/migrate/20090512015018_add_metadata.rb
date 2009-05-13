class AddMetadata < ActiveRecord::Migration
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
      :name_in_model => 'middle_name',
      :name_in_view => 'Отчество',
      :description => 'Отчество пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'last_name',
      :name_in_view => 'Фамилия',
      :description => 'Фамилия пациента',
      :locale => 'ru'
    )
#    Metadata.create(
#      :model => 'personal_datas' ,
#      :name_in_model => 'name',
#      :name_in_view => 'ФИО',
#      :description => 'Фамилия, Имя и Отчество пациента',
#      :locale => 'ru'
#    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'gender',
      :name_in_view => 'Пол',
      :description => 'Пол пациента (Мужской/Женский)',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'passport_seria',
      :name_in_view => 'Серия паспорта',
      :description => 'Серия паспорта гражданина Российской Федерации',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'passport_number',
      :name_in_view => 'Номер паспорта',
      :description => 'Номер паспорта гражданина Российской Федерации',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'policy_seria',
      :name_in_view => 'Серия полиса',
      :description => 'Серия полиса медицинского страхования',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'policy_number',
      :name_in_view => 'Номер полиса',
      :description => 'Номер полиса медицинского страхования',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'name',
      :name_in_view => 'ФИО',
      :description => 'Фамилия, Имя и Отчество пациента',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'address',
      :name_in_view => 'Адрес',
      :description => 'Адрес проживания пациента',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'phone_number',
      :name_in_view => 'Телефон',
      :description => 'Номер телефона пациента',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'personal_datas' ,
      :name_in_model => 'mobile_phone_number',
      :name_in_view => 'Моб. телефон',
      :description => 'Номер мобильного телефона пациента',
      :locale => 'ru'
    )

		# for doctoral_conclusions
		Metadata.create(
      :model => 'doctoral_conclusions' ,
      :name_in_model => 'doctor_speciality',
      :name_in_view => 'Телефон',
      :description => 'Номер телефона пациента',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'doctoral_conclusions' ,
      :name_in_model => 'conclusion',
      :name_in_view => '',
      :description => 'Номер мобильного телефона пациента',
      :locale => 'ru'
    )

		# for visits
		Metadata.create(
      :model => 'visits' ,
      :name_in_model => 'start_date',
      :name_in_view => 'Дата поступления',
      :description => 'Дата поступления пациента для диспансерного обследования',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'visits' ,
      :name_in_model => 'end_date',
      :name_in_view => 'Дата выписки',
      :description => 'Дата выписки пациента',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'visits' ,
      :name_in_model => 'epicrysis',
      :name_in_view => 'Эпикриз',
      :description => 'Выписной эпикриз',
      :locale => 'ru'
    )
  end

  def self.down
    Metadata.delete_all
  end

end
