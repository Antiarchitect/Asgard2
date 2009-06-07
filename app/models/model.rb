class Model < ActiveRecord::Base
  has_many :metadatas

  def self.find_model_id(model_name)
    model = find(:first, :conditions => ["name='#{model_name}'"])
    if model[:id]
      model[:id]
    else
      flash[:notice] = 'База данных "Типы анализов" пуста'
    end
  end

  def self.find_models
    find(:all)
  end
end
