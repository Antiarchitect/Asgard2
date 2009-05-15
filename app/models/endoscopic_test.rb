class EndoscopicTest < ActiveRecord::Base
  belongs_to :visit

  def to_label
    'Газотранспортная функция крови / Эндоскопическое исследование'
  end
end
