class MetadatasController < ApplicationController
  active_scaffold :metadata do |config|
    config.label = 'Администрирование'
  end
end
