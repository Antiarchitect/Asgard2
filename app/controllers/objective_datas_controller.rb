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
      name = 'param' + meta.name_in_model
      unless config.columns[name].nil?
        count_2 += 1
        config.columns[name].label = meta.name_in_view
        config.columns[name].description = meta.description
        if meta.unit.blank?
          config.columns[name].description = meta.description
        else
          config.columns[name].description = meta.description + ' (' + meta.unit + ')'
        end
        config.create.columns << name
        config.list.columns << name
        config.show.columns << name
        config.update.columns << name
      end
    end
    config.label = count_1.to_s + ' ' + count_2.to_s + 'Объективные данные пациента'
  end
end
