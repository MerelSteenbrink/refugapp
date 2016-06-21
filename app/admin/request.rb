ActiveAdmin.register Request do

  actions :all, except: [:new, :create, :edit, :update]

  index do
    selectable_column
    column :id
    column :message
    column :status

  # Add the link to the messenger of a request, as ActiveAdmin was not giving this by default
    column :messenger do |request|
      link_to request.messenger.title, admin_user_path(request.messenger)
    end

    column :post_id
    column :created_at

    actions
  end

end
