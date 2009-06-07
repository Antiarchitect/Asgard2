class Metadata < ActiveRecord::Base
  belongs_to :model
  def to_label
    'Служебные данные'
  end
  
  def self.find_metadatas(model, locale)
    id = Model.find_model_id(model)
    find(:all, :conditions => ["model_id='#{id}' AND locale='#{locale}'"])
  end
end
