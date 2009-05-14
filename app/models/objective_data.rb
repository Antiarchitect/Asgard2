class ObjectiveData < ActiveRecord::Base
  belongs_to :visit

  def to_label
    'Объективные даныые'
  end
end
