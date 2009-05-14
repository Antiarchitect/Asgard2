class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :doctoral_conclusions
  has_many :laboratory_blood_tests
  has_many :objective_datas
  has_many :personal_datas
  

  def to_label
    ' '
  end
end
