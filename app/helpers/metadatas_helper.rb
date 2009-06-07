module MetadatasHelper
  def model_form_column(record, input_name)
     select :record, :gender, [['Мужской', true], ['Женский', false]], :name => input_name
  end
end
