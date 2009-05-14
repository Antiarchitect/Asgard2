class LaboratoryBloodTest < ActiveRecord::Base
  belongs_to :visit

  def to_label
    'Лабораторное исследование крови'
  end
end
