ActiveAdmin.register Post do

actions :all, except: [:new, :create, :edit, :update]

end
