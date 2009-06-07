class Metadata < ActiveRecord::Base
  belongs_to :model
  def to_label
    'Служебные данные'
  end
  
  def self.find_metadatas(model, locale)
    id = Model.find_model_id(model)
    find(:all, :conditions => ["model_id='#{id}' AND locale='#{locale}'"])
  end

  def self.find_numerical_names_in_model(model_id, locale)
    metadatas = find(:all, :conditions => "model_id='#{model_id}' AND locale='#{locale}'")
    names_in_model = []
    metadatas.each do |meta|
      names_in_model << (meta.name_in_model).to_i
    end
    names_in_model
  end
end
