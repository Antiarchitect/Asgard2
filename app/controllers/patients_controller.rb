class PatientsController < ApplicationController
  active_scaffold :patient do |config|
    config.columns << :name
    @metadata = Metadata.find(:all, :conditions => ["model='patients'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.create.columns = [:date_of_birdth]
    config.label = 'Пациент'
    config.list.columns = [:id, :name, :date_of_birdth]
    config.list.sorting = {:id => 'ASC'}
    config.nested.add_link('Персональные данные', [:visits])
    config.show.columns = [:date_of_birdth]
    config.update.columns = [:date_of_birdth]
  end
end
