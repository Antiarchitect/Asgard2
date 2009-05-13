class PersonalDatasController < ApplicationController
  active_scaffold :personal_data do |config|
    @metadata = Metadata.find(:all, :conditions => ["model='personal_datas'", "locale='ru'"])
    @metadata.each do |meta|
      unless config.columns[meta.name_in_model].nil?
        config.columns[meta.name_in_model].label = meta.name_in_view
        config.columns[meta.name_in_model].description = meta.description
      end
    end
    config.label = 'Персональные данные'
    config.list.columns = [:last_name, :first_name, :middle_name, :gender, :address, :phone_number, :mobile_phone_number, :passport_seria, :passport_number, :policy_seria, :policy_number]
    config.list.sorting = {:last_name => 'ASC'}
  end
end