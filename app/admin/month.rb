ActiveAdmin.register Month, as: "Month" do
permit_params :name
menu label: 'Monthly Management',:parent => "Customer Relationship Management"


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
sidebar :help do
  ul do
    li "Please add month follow format: Month Year"
    li "Eg: July 2016"
  end
end

end
