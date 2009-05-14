class VisitsController < ApplicationController
  active_scaffold :visit do |config|
    @metadata = Metadata.find(:all, :conditions => ["model='visits'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.label = 'Посещения'
    config.list.columns = [:start_date, :end_date, :epicrysis]
    config.list.sorting = {:start_date => 'DESC'}
    config.nested.add_link('Данные по визиту', [:personal_datas, :doctoral_conclusions])
  end
end
