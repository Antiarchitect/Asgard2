class Patient < ActiveRecord::Base
  has_many :doctoral_conclusions
  has_many :personal_datas,
           :order => 'created_at DESC'
  has_many :visits

  def name
    @names = self.personal_datas.find(:first, :order => 'created_at DESC')
    if @names.blank?
      return 'Нет сведений о пациенте'
    else
      full_name = ""
      if !@names.last_name.blank?
        full_name = full_name + @names.last_name
      end
      if !@names.first_name.blank?
        full_name = full_name + ' ' + @names.first_name
      end
      if !@names.middle_name.blank?
        full_name = full_name + ' ' + @names.middle_name
      end
      if full_name.blank?
        return 'Нет сведений о ФИО пациента'
      else
        full_name
      end
      
    end
  end

  def to_label
    'пациента'
  end
end
