class AddModels < ActiveRecord::Migration
  def self.up
    Model.delete_all

    Model.create(
      :name => 'patients',
      :description => 'Пациенты'
    )
    Model.create(
      :name => 'personal_datas',
      :description => 'Персональные данные пациента'
    )
    Model.create(
      :name => 'doctoral_conclusions',
      :description => 'Заключения врачей'
    )
    Model.create(
      :name => 'visits',
      :description => 'Посещения пациента'
    )
    Model.create(
      :name => 'objective_datas',
      :description => 'Объективные данные пациента'
    )
    Model.create(
      :name => 'laboratory_blood_tests',
      :description => 'Лабораторное исследование крови'
    )
    Model.create(
      :name => 'citology_tests',
      :description => 'Кислотно-щелочное состояние крови / Бронхоальвеолярный лаваж / Цитология'
    )
    Model.create(
      :name => 'endoscopic_tests',
      :description => 'Газотранспортная функция крови / Эндоскопическое исследование'
    )
    Model.create(
      :name => 'neurohormonal_tests',
      :description => 'Спектр жирных кислот / Нейрогормональное исследование'
    )
    Model.create(
      :name => 'immunological_tests',
      :description => 'Иммунологическое исследование / Иммуноферментный анализ / Социальные инфекции / Томограмма'
    )
    Model.create(
      :name => 'ultrasound_tests',
      :description => 'Спирограмма, бронхопровокационные пробы / Электрокардиография / Ультразвуковое исследование сердца'
    )

  end

  def self.down
    Model.delete_all
  end
end
