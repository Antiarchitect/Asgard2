class PatientsController < ApplicationController
  active_scaffold :patient do |config|
#    config.list.columns.exclude :family_name, :first_name, :last_name
#    config.list.columns << :first_and_last_name
#    config.columns << :full_name
    @metadata = Metadata.find(:all, :conditions => ["model='patients'", "locale='ru'"])
    @metadata.each do |meta|
      config.columns[meta.name_in_model].label = meta.name_in_view
      config.columns[meta.name_in_model].description = meta.description
    end
#    config.columns[:id].label = 'Номер карты'
#    config.columns[:date_of_birdth].label = 'Дата рождения'
#    config.columns[:date_of_birdth].description = "рождения дата"
    config.label = 'Пациент'
    config.list.columns = [:id, :date_of_birdth]
    config.list.sorting = {:id => 'ASC'}
  end
end
