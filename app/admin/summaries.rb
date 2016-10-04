require 'csv'
ActiveAdmin.register Summary ,as: "Usage Reporters"do
  menu label: 'Usage Reporter Management'

 config.clear_action_items!
  action_item :only => :index do
    link_to 'Upload CSV', :action => 'upload_csv'
  end

  collection_action :upload_csv do
    @customers = Customer.all
    @months = Month.all
    render "admin/csv/upload_csv"
  end
  collection_action :import_csv, :method => :post do
      Summary.import(params[:file], params[:customer_id],params[:month_id])
      redirect_to :action => :index, :notice => "CSV imported successfully!"
    end
index do
  selectable_column
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

filter :customer_id,as: :select,collection: proc { Customer.all }
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
