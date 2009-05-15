class Patient < ActiveRecord::Base
  has_many :citology_tests, :through => :visits
  has_many :doctoral_conclusions, :through => :visits
  has_many :endoscopic_tests, :through => :visits
  has_many :laboratory_blood_tests, :through => :visits
  has_many :objective_datas, :through => :visits
  has_many :personal_datas, :through => :visits
  has_many :visits

  def error
    @visit = self.visits.find(:first, :order => 'created_at DESC')
    if @visit.blank?
      'Для данного пациента нет зарегистрированных посещений'
    else
      @personal_datas = @visit.personal_datas.find(:first, :order => 'created_at DESC')
      if @personal_datas.blank?
        'Нет сведений о пациенте'
      end
    end
  end

  def first_name
    if !error.blank?
      return error
    else
      if @personal_datas.first_name.blank?
        ''
      else
        @personal_datas.first_name.to_s
      end
    end
  end

  def last_name
    if !error.blank?
    else
      if @personal_datas.last_name.blank?
        ''
      else
        @personal_datas.last_name.to_s
      end
    end
  end

  def middle_name
    if !error.blank?
      
    else
      if @personal_datas.middle_name.blank?
        ''
      else
        @personal_datas.middle_name.to_s
      end
    end
  end

  def passport_seria
    if !error.blank?
      
    else
      if @personal_datas.passport_seria.blank?
        ''
      else
        @personal_datas.passport_seria.to_s
      end
    end
  end

  def passport_number
    if !error.blank?
      
    else
      if @personal_datas.passport_number.blank?
        ''
      else
        @personal_datas.passport_number.to_s
      end
    end
  end

  def policy_seria
    if !error.blank?
      
    else
      if @personal_datas.policy_seria.blank?
        ''
      else
        @personal_datas.policy_seria.to_s
      end
    end
  end

  def policy_number
    if !error.blank?
      
    else
      if @personal_datas.policy_number.blank?
        ''
      else
        @personal_datas.policy_number.to_s
      end
    end
  end



  


  def to_label
    'пациента'
  end
end
