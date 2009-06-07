class MetadatasController < ApplicationController
  active_scaffold :metadata do |config|
    config.label = 'Администрирование'

    config.columns[:name_in_view].label = 'Название'
    config.columns[:description].label = 'Описание'
    config.columns[:unit].label = 'Единица измерения (необязательно)'
    
    config.create.columns = [:model, :name_in_view, :description, :unit]
    config.list.columns = [:name_in_view, :description, :unit]
    config.show.columns = [:name_in_view, :description, :unit]
    config.update.columns = [:name_in_view, :description, :unit]
  end
end
