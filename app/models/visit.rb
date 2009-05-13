class Visit < ActiveRecord::Base
  belongs_to :patient

  def to_label
    'Посещения'
  end
end
