class CitologyTest < ActiveRecord::Base
  belongs_to :visit

  def to_label
    'Кислотно-щелочное состояние крови. Бронхоальвеолярный лаваж. Цитология'
  end
end
