class Metadata < ActiveRecord::Base
  def self.find_metadatas(model, locale)
    self.find(:all, :conditions => ["model='#{model}' AND locale='#{locale}'"])
  end
end
