class AddPatients < ActiveRecord::Migration
  def self.up
    down
    Patient.create(:date_of_birdth => '1967-05-06')
    Patient.create(:date_of_birdth => '1959-04-27')
    Patient.create(:date_of_birdth => '1989-12-06')
    Patient.create(:date_of_birdth => '2000-03-17')
    Patient.create(:date_of_birdth => '1944-07-09')
    Patient.create(:date_of_birdth => '1953-08-01')
    Patient.create(:date_of_birdth => '1964-01-20')
    Patient.create(:date_of_birdth => '1979-10-10')
    Patient.create(:date_of_birdth => '1983-03-14')
    Patient.create(:date_of_birdth => '1995-04-06')
    Patient.create(:date_of_birdth => '1934-05-07')
    Patient.create(:date_of_birdth => '1978-05-06')
  end

  def self.down
    Patient.delete_all
  end
end
