module PatientsHelper
  def date_of_birdth_form_column(record, input_name)
    date_select :record, :date_of_birdth, :name => input_name, :start_year => 1900, :end_year => Time.now.year
  end
end
