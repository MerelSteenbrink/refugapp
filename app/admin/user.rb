ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  permit_params :admin

  actions :all, except: [:update, :edit]

  index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :username
    column :kind
    column :city
    column :description
    column :admin
    column :last_sign_in_at

    actions defaults: true do |user|
      link_to 'Make admin', admin_admin_user_path(user), method: :patch unless user.admin?
    end
  end

  action_item :admin, only: :show do
    link_to 'Make admin', admin_admin_user_path(user), method: :patch unless user.admin?
  end

 form do |f|
    f.inputs "User" do
      f.input :admin
    end

    f.actions
  end

   member_action :admin, method: :patch do
    resource.update(admin: true)
    redirect_to resource_path, notice: "Set as admin"
  end




#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
