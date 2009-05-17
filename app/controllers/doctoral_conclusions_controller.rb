class DoctoralConclusionsController < ApplicationController
  active_scaffold :doctoral_conclusion do |config|
    @metadata = Metadata.find(:all, :conditions => ["model='doctoral_conclusions'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.create.columns = [:doctor_speciality, :conclusion]
    config.label = 'Заключения врачей'
    config.list.columns = [:doctor_speciality, :conclusion]
    config.list.sorting = {:doctor_speciality => 'ASC'}
    config.show.columns = [:doctor_speciality, :conclusion]
    config.update.columns = [:doctor_speciality, :conclusion]
  end
end