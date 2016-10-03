ActiveAdmin.register Summary do
  index do
    column  "Customer",:customer_id
    column   "Liscense ID",:LiscenseID
    column :Product
    column :Version
    column :Amount
    column :Username
    column :Hostname
    column   "Start Time",:StartTime
    column   "End Time",:EndTime
    column   "Duration by hours",:Duration_hours
    column   "Duration by seconds",:Duration_second
    actions
  end



end
