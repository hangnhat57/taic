ActiveAdmin.register Summary,namespace: :client do
config.clear_action_items!
scope_to :current_customer
index do
  column "Month",:month_id
  column :Product
  column :Version
  column :Amount
  column :Username
  column :Hostname
  column   "Start Time",:StartTime
  column   "End Time",:EndTime
  column   "Duration by hours",:Duration_hours
  column   "Duration by seconds",:Duration_second

end

filter :month_id,as: :select,collection: proc { Month.all }
filter :Product
filter :StartTime
filter :EndTime
sidebar :help do
  ul do
    li "Date format : yyyy-mm-dd"
    li "Contact: support@taic.vn for more info"
  end
end
end
