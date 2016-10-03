require 'csv'
ActiveAdmin.register Summary do
 config.clear_action_items!
  action_item :only => :index do
    link_to 'Upload CSV', :action => 'upload_csv'
  end

  collection_action :upload_csv do
    @customers = Customer.all
    render "admin/csv/upload_csv"
  end
  collection_action :import_csv, :method => :post do
      Summary.import(params[:file], params[:customer_id])
      redirect_to :action => :index, :notice => "CSV imported successfully!"
    end
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

filter :customer_id,as: :select,collection: proc { Customer.all }
filter :Product
filter :StartTime
filter :EndTime



end
