module VisitsHelper
  def start_date_form_column(record, input_name)
    date_select :record, :start_date, :name => input_name, :start_year => 1980, :end_year => Time.now.year
  end
  def end_date_form_column(record, input_name)
    date_select :record, :end_date, :name => input_name, :start_year => 1980, :end_year => Time.now.year
  end
end
