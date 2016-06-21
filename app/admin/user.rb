ActiveAdmin.register User do

  permit_params :admin

  actions :all, except: [:new, :create, :update, :edit, :destroy]

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

    # Implement default actions in the index
    actions defaults: true do |user|
      (link_to 'Make admin', admin_admin_user_path(user), method: :patch) +
      (link_to 'Delete user', delete_user_admin_user_path(user), method: :delete) unless user.admin?
    end

  end

# Make a custom action to make another user an admin
  action_item :admin, only: :show do
    link_to 'Make admin', admin_admin_user_path(user), method: :patch unless user.admin?
  end

  member_action :admin, method: :patch do
    resource.update(admin: true)
    redirect_to resource_path, notice: "Set as admin"
  end

# Make a custom action to delete every other user except other admins
  action_item :delete_user, only: :show do
    link_to 'Delete user', delete_user_admin_user_path(user), method: :delete unless user.admin?
  end

  member_action :delete_user, method: :delete do
    resource.destroy
    redirect_to admin_users_path, notice: "You deleted this user"
  end

end
