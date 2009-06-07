class AddModels < ActiveRecord::Migration
  def self.up
    Model.delete_all

    Metadata.create(
      :name => 'patients',
      :description => 'Пациенты'
    )
    Metadata.create(
      :name => 'personal_datas',
      :description => 'Персональные данные пациента'
    )
    Metadata.create(
      :name => 'doctoral_conclusions',
      :description => 'Заключения врачей'
    )
    Metadata.create(
      :name => 'visits',
      :description => 'Посещения пациента'
    )
    Metadata.create(
      :name => 'objective_datas',
      :description => 'Объективные данные пациента'
    )
    Metadata.create(
      :name => 'laboratory_blood_tests',
      :description => 'Лабораторное исследование крови'
    )
    Metadata.create(
      :name => 'citology_tests',
      :description => 'Кислотно-щелочное состояние крови / Бронхоальвеолярный лаваж / Цитология'
    )
    Metadata.create(
      :name => 'endoscopic_tests',
      :description => 'Газотранспортная функция крови / Эндоскопическое исследование'
    )
    Metadata.create(
      :name => 'neurohormonal_tests',
      :description => 'Спектр жирных кислот / Нейрогормональное исследование'
    )
    Metadata.create(
      :name => 'immunological_tests',
      :description => 'Иммунологическое исследование / Иммуноферментный анализ / Социальные инфекции / Томограмма'
    )
    Metadata.create(
      :name => 'ultrasound_tests',
      :description => 'Спирограмма, бронхопровокационные пробы / Электрокардиография / Ультразвуковое исследование сердца'
    )

  end

  def self.down
  end
end
