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


  def name
    if !error.blank?
      return error
    else
      full_name = ""
      if !@personal_datas.last_name.blank?
        full_name = full_name + @personal_datas.last_name
      end
      if !@personal_datas.first_name.blank?
        full_name = full_name + ' ' + @personal_datas.first_name
      end
      if !@personal_datas.middle_name.blank?
        full_name = full_name + ' ' + @personal_datas.middle_name
      end
      if full_name.blank?
        return 'Нет сведений о ФИО пациента'
      else
        full_name
      end
    end
  end

  def passport
    if !error.blank?
      return ''
    else
      passport = ""
      if !@personal_datas.passport_seria.blank?
        passport = passport + @personal_datas.passport_seria
      end
      if !@personal_datas.passport_number.blank?
        passport = passport + @personal_datas.passport_number
      end
      if passport.blank?
        return 'Нет сведений о паспорте пациента'
      else
        passport
      end
    end
  end

  def policy
    if !error.blank?
      return ''
    else
      policy = ""
      if !@personal_datas.policy_seria.blank?
        policy = policy + @personal_datas.policy_seria
      end
      if !@personal_datas.policy_number.blank?
        policy = policy + @personal_datas.policy_number
      end
      if policy.blank?
        return 'Нет сведений о паспорте пациента'
      else
        policy
      end
    end
  end

  def to_label
    'пациента'
  end
end
