class LaboratoryBloodTestsController < ApplicationController
  active_scaffold :laboratory_blood_test do |config|
    config.list.columns = []
    config.create.columns = []
    config.update.columns = []
    @metadata = Metadata.find(:all, :conditions => ["model='laboratory_blood_tests'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
        if meta.unit.blank?
          config.columns[meta.name_in_model].description = meta.description
        else
          config.columns[meta.name_in_model].description = meta.description + ' (' + meta.unit + ')'
        end
        config.list.columns << meta.name_in_model
        config.create.columns << meta.name_in_model
        config.update.columns << meta.name_in_model
      end
    end
    config.label = 'Лабораторное исследование крови'
  end
end
