ActiveAdmin.register Request do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :message, :status

actions :all, except: [:edit, :update]

index do
  selectable_column
  column :id
  column :message
  column :status
  column :messenger
  column :post_id
  column :created_at


  actions
end

form do |f|
    f.inputs "Request" do
      f.input :message
      f.input :status
    end

    f.actions
  end

  permit_params :name, :email, :admin

# show do
#   h3 request.subject

# end

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
