class PersonalDatasController < ApplicationController
  active_scaffold :personal_data do |config|
    config.list.columns.exclude :family_name, :first_name, :last_name
    config.list.columns << :full_name
    @metadata = Metadata.find(:all, :conditions => ["model='personal_datas'", "locale='ru'"])
    @metadata.each do |meta|
      config.columns[meta.name_in_model].label = meta.name_in_view
      config.columns[meta.name_in_model].description = meta.description
    end
  end
end
