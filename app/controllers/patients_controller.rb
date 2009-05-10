class PatientsController < ApplicationController
  active_scaffold :patient do |config|
    config.columns[:id].label = 'Номер карты'
    config.columns[:date_of_birdth].label = 'Дата рождения'
    config.columns[:date_of_birdth].description = "рождения дата"
    config.label = 'Пациент'
    config.list.columns = [:id, :date_of_birdth]
    config.columns[:date_of_birdth].description = "рождения дата"
    config.list.sorting = {:id => 'ASC'}
  end
end
