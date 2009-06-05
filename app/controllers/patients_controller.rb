class PatientsController < ApplicationController
  active_scaffold :patient do |config|
    config.columns =  [:id, :last_name, :first_name, :middle_name, :date_of_birdth, :passport_seria, :passport_number, :policy_seria, :policy_number]
    @metadata = Metadata.find_metadatas('patients', 'ru')
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.create.columns = [:date_of_birdth]
    config.label = 'Пациенты'
    config.list.columns = [:id, :last_name, :first_name, :middle_name, :date_of_birdth, :passport_seria, :passport_number, :policy_seria, :policy_number]
    config.list.sorting = {:id => 'ASC'}
    config.nested.add_link('Список посещений', [:visits])
    config.show.columns = [:date_of_birdth]
    config.update.columns = [:date_of_birdth]
  end
end
