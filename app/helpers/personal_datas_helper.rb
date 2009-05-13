module PersonalDatasHelper

  def gender_form_column(record, input_name)
     select :record, :gender, [['Мужской', true], ['Женский', false]], :name => input_name
  end

  def gender_column(record)
    case record.gender
    when true
      return('Мужской')
    when false
      return('Женский')
    end
  end
end
