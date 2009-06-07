module MetadatasHelper
  def model_form_column(record, input_name)
    models = Model.find_models
    list = []
    i = 0
    models.each do |model|
      list[i] = [model.description, model.name]
      i += 1
    end
    select :record, :model, list, :name => input_name
  end
end
