class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :objective_datas
  has_many :personal_datas
  has_many :doctoral_conclusions

  def to_label
    'Посещения'
  end
end
