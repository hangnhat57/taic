ActiveAdmin.register Customer,namespace: :admin , as: "Customer"do
menu label: 'Customer Management',:parent => "Customer Relationship Management"

permit_params :email, :password, :password_confirmation,:name
index do
  selectable_column
  column :email
  column :name
  column :current_sign_in_at
  column :sign_in_count
  column :created_at
  actions
end

filter :email
filter :name
filter :current_sign_in_at
filter :sign_in_count
filter :created_at

form do |f|
  f.inputs "Customer Details" do
    f.input :email
    f.input :name
    f.input :password
    f.input :password_confirmation
  end
  f.actions
end

end
