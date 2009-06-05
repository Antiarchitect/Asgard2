class Metadata < ActiveRecord::Base
  def self.find_metadatas(model, locale)
    find(:all, :conditions => ["model='#{model}' AND locale='#{locale}'"])
  end
end
