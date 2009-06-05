class ObjectiveDatasController < ApplicationController
  active_scaffold :objective_data do |config|
    config.actions.exclude :live_search
    config.create.columns = []
    config.list.columns = []
    config.show.columns = []
    config.update.columns = []
    @metadata = Metadata.find_metadatas('objective_datas', 'ru')
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
        if meta.unit.blank?
          config.columns[meta.name_in_model].description = meta.description
        else
          config.columns[meta.name_in_model].description = meta.description + ' (' + meta.unit + ')'
        end
        config.create.columns << meta.name_in_model
        config.list.columns << meta.name_in_model
        config.show.columns << meta.name_in_model
        config.update.columns << meta.name_in_model
      end
    end
    config.label = 'Объективные данные пациента'
  end
end
