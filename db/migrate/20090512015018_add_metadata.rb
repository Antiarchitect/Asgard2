class AddMetadata < ActiveRecord::Migration
  def self.up
    Metadata.delete_all
    

# for patients
#
#
#
############################################################################
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
    Metadata.create(
      :model => 'patients' ,
      :name_in_model => 'name',
      :name_in_view => 'ФИО',
      :description => 'Фамилия, Имя и Отчество пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'patients' ,
      :name_in_model => 'passport',
      :name_in_view => 'Паспорт',
      :description => 'Серия и номер паспорта пациента',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'patients' ,
      :name_in_model => 'policy',
      :name_in_view => 'Полис',
      :description => 'Серия и номер полиса медицинского страхования',
      :locale => 'ru'
    )

    
# for personal_datas
#
#
#
############################################################################
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
#
#
#
############################################################################
		Metadata.create(
      :model => 'doctoral_conclusions' ,
      :name_in_model => 'doctor_speciality',
      :name_in_view => 'Специальность',
      :description => 'Специальность врача',
      :locale => 'ru'
    )
		Metadata.create(
      :model => 'doctoral_conclusions' ,
      :name_in_model => 'conclusion',
      :name_in_view => 'Заключение',
      :description => 'Заключение врача',
      :locale => 'ru'
    )


# for visits
#
#
#
############################################################################
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


#for objective_datas
#
#
#
############################################################################
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param1',
      :name_in_view => 'Возраст',
      :description => 'Возраст пациента',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param2',
      :name_in_view => 'Рост',
      :description => 'Рост пациента',
      :unit => 'см',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param3',
      :name_in_view => 'Вес',
      :description => 'Вес пациента',
      :unit => 'кг',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param4',
      :name_in_view => 'Окр. гр. кл.',
      :description => 'Окружность грудной клетки',
      :unit => 'см',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param5',
      :name_in_view => 'Темпер.',
      :description => 'Температура тела',
      :unit => '°C',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param6',
      :name_in_view => 'АД сист.',
      :description => 'Артериальное давление систолическое',
      :unit => 'мм рт.ст.',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param7',
      :name_in_view => 'АД диаст.',
      :description => 'Артериальное давление диастолическое',
      :unit => 'мм рт.ст.',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param8',
      :name_in_view => 'ЧСС',
      :description => 'Частота сердечных сокращений в минуту',
      :unit => '',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param9',
      :name_in_view => 'ЧД',
      :description => 'Частота дыхания в минуту',
      :unit => '',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param10',
      :name_in_view => 'Профстаж',
      :description => 'Стаж профессиональный',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param11',
      :name_in_view => 'Стаж общ.',
      :description => 'Стаж общий',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param12',
      :name_in_view => 'КСН',
      :description => 'Количество случаев нетрудоспособности',
      :unit => 'Дней в году',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param13',
      :name_in_view => 'КДН',
      :description => 'Количество дней нетрудоспособности',
      :unit => 'дней',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param14',
      :name_in_view => 'Длит. заб.',
      :description => 'Длительность заболевания',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param15',
      :name_in_view => 'Лет в дм',
      :description => 'Продолжительность жизни в данной местности',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param16',
      :name_in_view => 'Стаж кур.',
      :description => 'Стаж курения',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param17',
      :name_in_view => 'Возр. кур.',
      :description => 'С какого возраста начал курить',
#      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param18',
      :name_in_view => 'Числ. сиг.',
      :description => 'Количество выкуриваемых сигарет в день',
      :unit => 'штук',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param19',
      :name_in_view => 'ИК',
      :description => 'Индекс курильщика',
      :unit => 'Числ. сиг. x 12',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param20',
      :name_in_view => 'ИК п/лет',
      :description => 'Индекс курильщика "пачка/лет"',
      :unit => 'Числ. сиг. x Стаж кур. / 20',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param21',
      :name_in_view => 'Дл. воз. от к.',
      :description => 'Длительность воздержания от курения',
      :unit => 'лет',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'objective_datas' ,
      :name_in_model => 'param22',
      :name_in_view => 'Руб/мес',
      :description => 'Количество денег, затрачиваемых в месяц на сигареты',
      :unit => 'рублей',
      :locale => 'ru'
    )


#for laboratory_blood_tests
#
#
#
############################################################################
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param1',
      :name_in_view => 'Эритроц.',
      :description => 'Эритроциты',
      :unit => 'x(10^12)/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param2',
      :name_in_view => 'Hb',
      :description => 'Гемоглобин',
      :unit => 'г/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param3',
      :name_in_view => 'Цвет.п.',
      :description => 'Цветной показатель',
      :unit => '',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param4',
      :name_in_view => 'Ретикул.',
      :description => 'Ретикулоциты',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param5',
      :name_in_view => 'Лейкоц.',
      :description => 'Лейкоциты',
      :unit => 'x(10^9)/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param6',
      :name_in_view => 'П/я',
      :description => 'Палочкоядерные клетки',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param7',
      :name_in_view => 'С/я',
      :description => 'Сегментоядерные клетки',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param8',
      :name_in_view => 'Эоз.',
      :description => 'Эозинофилы',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param9',
      :name_in_view => 'Баз.',
      :description => 'Базофилы',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param10',
      :name_in_view => 'Мон.',
      :description => 'Моноциты',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param11',
      :name_in_view => 'Лим.',
      :description => 'Лимфоциты',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param12',
      :name_in_view => 'Тромб.',
      :description => 'Тромбоциты',
      :unit => 'x(10^9)/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param13',
      :name_in_view => 'СОЭ',
      :description => 'Скорость оседания эритроцитов',
      :unit => 'мм/час',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param14',
      :name_in_view => 'Глюкоза',
      :description => 'Глюкоза',
      :unit => 'ммоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param15',
      :name_in_view => 'О. белок',
      :description => 'Общий белок',
      :unit => 'г/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param16',
      :name_in_view => 'Мочевина',
      :description => 'Мочевина крови',
      :unit => 'мкмоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param17',
      :name_in_view => 'Креатин.',
      :description => 'Креатинин',
      :unit => 'мкмоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param18',
      :name_in_view => 'Бил.общ.',
      :description => 'Билирубин общий',
      :unit => 'мкмоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param19',
      :name_in_view => 'Бил.пр.',
      :description => 'Билирубин прямой',
      :unit => 'мкмоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param20',
      :name_in_view => 'Бил.непр.',
      :description => 'Билирубин непрямой',
      :unit => 'мкмоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param21',
      :name_in_view => 'Фибрин',
      :description => 'Фибриноген',
      :unit => 'г/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param22',
      :name_in_view => 'ПТИ',
      :description => 'Протромбиновый индекс',
      :unit => '%',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param23',
      :name_in_view => 'Холест.',
      :description => 'Холестерин',
      :unit => 'ммоль/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param24',
      :name_in_view => 'Тим.пр.',
      :description => 'Тимоловая проба',
      :unit => 'ед.S-H.',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param25',
      :name_in_view => 'Сулем.пр.',
      :description => 'Сулемовая проба',
      :unit => 'ед. Сулемы',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param26',
      :name_in_view => 'АЛАТ',
      :description => 'Аланиаминотрансфераза',
      :unit => 'МЕ/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param27',
      :name_in_view => 'АСАТ',
      :description => 'Аспартатаминотрансфераза',
      :unit => 'МЕ/л',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param28',
      :name_in_view => 'СРБ',
      :description => '"С" реактивный белок',
      :unit => '1 - положительный, 2 - отрицательный',
      :locale => 'ru'
    )
    Metadata.create(
      :model => 'laboratory_blood_tests' ,
      :name_in_model => 'param29',
      :name_in_view => 'Серомук',
      :description => 'Серомукоид',
      :unit => 'усл. ед.',
      :locale => 'ru'
    )
  end

  def self.down
    Metadata.delete_all
  end

end
