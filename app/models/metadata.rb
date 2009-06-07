class Metadata < ActiveRecord::Base
  belogns_to :model
  
  def self.find_metadatas(model, locale)
    find(:all, :conditions => ["model='#{model}' AND locale='#{locale}'"])
  end
end
