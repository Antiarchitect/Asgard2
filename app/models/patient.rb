class Patient < ActiveRecord::Base
  has_many :doctoral_conclusions
  has_many :personal_datas,
           :order => 'created_at DESC'
  has_many :visits

  @name = PersonalData.find(:first)


  def name
    unless @name.nil?
      "#{@name.last_name} #{@name.first_name} #{@name.middle_name}"
    end
  end

  def to_label
    'пациента'
  end
end
