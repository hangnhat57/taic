require 'csv'
class Summary < ApplicationRecord
  belongs_to :customer,dependent: :destroy
  belongs_to :month,dependent: :destroy


  def self.import(file,customer_id,month_id)
    sum = Summary.where("customer_id = ? and month_id = ?",customer_id,month_id)
    CSV.foreach(file.path, headers: true) do |row|

      sum.create(LiscenseID:row[0],Product:row[1],Version:row[2],
      Amount:row[3],Username:row[4],Hostname:row[5],StartTime:row[6],EndTime:row[7]  ,
      Duration_hours:row[8],Duration_second:row[9],
      customer_id: customer_id,month_id: month_id)

    end
end



end
