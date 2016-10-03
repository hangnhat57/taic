ActiveAdmin.register Summary,namespace: :client do
config.clear_action_items!
scope_to :current_customer
index do
  selectable_column
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


filter :Product
filter :StartTime
filter :EndTime

end
