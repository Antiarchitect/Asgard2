class DoctoralConclusion < ActiveRecord::Base
  belongs_to :patient
  
  def to_label
    'Заключения врачей'
  end
end
