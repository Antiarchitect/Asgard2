class MetadatasController < ApplicationController
  active_scaffold :metadata do |config|
    config.label = 'Администрирование'

    config.columns[:name_in_view].label = 'Название'
    config.columns[:description].label = 'Описание'
    config.columns[:unit].label = 'Единица измерения (необязательно)'
    config.columns[:model_id].label = 'Категория'
    
    config.create.columns = [:model_id, :name_in_view, :description, :unit]
    config.list.columns = [:model_id, :name_in_view, :description, :unit, :locale, :name_in_model]
    config.show.columns = [:name_in_view, :description, :unit]
    config.update.columns = [:model_id, :name_in_view, :description, :unit]
  end

  protected

  def before_create_save(record)
    record.locale ='ru'         
    last = Metadata.find_numerical_names_in_model(record.model_id, record.locale).max
    record.name_in_model = last + 1
  end

  def before_update_save(record)
    record.locale ='ru'
  end
end
