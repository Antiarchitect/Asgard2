class AddVisits < ActiveRecord::Migration
  def self.up
    down
    100.times do |i|
      start_date = '200' + (rand(9)).to_s + '-' + (rand(11)+1).to_s + '-' + (rand(30)+1).to_s
      end_date = start_date.to_date + (rand(60) + 5).days
      Visit.create( :patient_id => (i/10 +1).to_s,
                    :start_date => start_date,
                    :end_date => end_date,
                    :epicrysis => 'ъ')
    end
  end

  def self.down
    Visit.delete_all
  end
end
