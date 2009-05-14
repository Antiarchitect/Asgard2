class ObjectiveDatasController < ApplicationController
  active_scaffold :objective_data do |config|
    config.list.columns = []
    @metadata = Metadata.find(:all, :conditions => ["model='objective_datas'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
        config.list.columns << meta.name_in_model
      end
    end
    config.label = 'Объективные данные пациента'
  end
end
