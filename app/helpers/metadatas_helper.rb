module MetadatasHelper
  def model_id_form_column(record, input_name)
    models = Model.find_models
    list = []
    i = 0
    models.each do |model|
      list[i] = [model.description, model.id]
      i += 1
    end
    select :record, :model_id, list, :name => input_name
  end
end
