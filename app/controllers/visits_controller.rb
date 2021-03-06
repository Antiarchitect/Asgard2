class VisitsController < ApplicationController
  active_scaffold :visit do |config|
    @metadata = Metadata.find_metadatas('visits', 'ru')
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.create.columns = [:start_date, :end_date, :epicrysis]
    config.label = 'Посещения'
    config.list.columns = [:start_date, :end_date, :epicrysis]
    config.list.sorting = {:start_date => 'DESC'}
    config.nested.add_link('История посещения', [:personal_datas, :doctoral_conclusions, :objective_datas, :laboratory_blood_tests, :citology_tests, :endoscopic_tests])
    config.show.columns = [:start_date, :end_date, :epicrysis]
    config.update.columns = [:start_date, :end_date, :epicrysis]
  end
end
