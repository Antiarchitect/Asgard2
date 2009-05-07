class Patient < ActiveRecord::Base
  has_many :doctoral_conclusions
  has_many :personal_datas
  has_many :visits
end
