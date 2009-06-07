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
    metadatas = Metadata.find(:all, :conditions => "model_id='#{record.model_id}' AND locale='ru'")
    names_in_model = []
    metadatas.each do |meta|
      names_in_model << (meta.name_in_model).to_i
    end     
    last = names_in_model.max
    record.name_in_model = last + 1
  end

  def before_update_save(record)
    record.locale ='ru'
  end
end
