class PersonalData < ActiveRecord::Base
  belongs_to :patient

  def to_label
    'Персональные данные'
  end
end
