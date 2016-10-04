ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

columns do
  column do
    panel "Customer Details" do
      table_for Customer.all do |t|
        t.column("Name") { |customer| customer.name }
        t.column("Email") { |customer| customer.email }
        
     end
  end
end
column do


  panel "Month Details" do
    table_for Month.all do |t|
      t.column("Month") { |month| month.name }
      t.column("Usage Amount") { |month| month.summaries.count }

   end
end
end
end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
