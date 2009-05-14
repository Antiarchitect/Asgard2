class Patient < ActiveRecord::Base
  has_many :analyses, :through => :visits
  has_many :doctoral_conclusions, :through => :visits
  has_many :personal_datas, :through => :visits
  has_many :visits

  def name
    @visit = self.visits.find(:first, :order => 'created_at DESC')
    if @visit.blank?
      return 'Для данного пациента нет зарегистрированных посещений'
    else
      @names = @visit.personal_data
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
  end

  def to_label
    'пациента'
  end
end
