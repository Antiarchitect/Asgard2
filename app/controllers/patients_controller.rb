class PatientsController < ApplicationController
  active_scaffold :patient do |config|
    config.columns << :name
    config.create.columns.exclude :name
    config.update.columns.exclude :name
    @metadata = Metadata.find(:all, :conditions => ["model='patients'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.nested.add_link('Персональные данные', [:personal_datas, :visits, :doctoral_conclusions])
    config.label = 'Пациент'
    config.list.columns = [:id, :name, :date_of_birdth]
    config.list.sorting = {:id => 'ASC'}
  end
end
