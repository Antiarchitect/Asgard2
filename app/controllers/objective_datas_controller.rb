class ObjectiveDatasController < ApplicationController
  active_scaffold :objective_data do |config|
    config.actions.exclude :live_search
    config.create.columns = []
    config.list.columns = []
    config.show.columns = []
    config.update.columns = []
    count_1 = 0
    count_2 = 0
    @metadata = Metadata.find_metadatas('objective_datas', 'ru')
    @metadata.each do |meta|
      count_1 += 1
      unless config.columns[meta.name_in_model].nil?
        count_2 += 1
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
    config.label = count_1.to_s + ' ' + count_2.to_s + 'Объективные данные пациента'
  end
end
