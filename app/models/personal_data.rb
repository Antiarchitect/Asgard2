class PersonalData < ActiveRecord::Base
  belongs_to :visit

  def to_label
    'Персональные данные'
  end
end
