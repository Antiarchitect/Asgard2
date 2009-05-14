class DoctoralConclusion < ActiveRecord::Base
  belongs_to :visit
  
  def to_label
    'Заключения врачей'
  end
end
