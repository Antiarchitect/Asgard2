class PersonalData < ActiveRecord::Base
  belongs_to :patient

  def full_name
    "#{self.family_name} #{self.first_name} #{self.last_name}"
  end
end
