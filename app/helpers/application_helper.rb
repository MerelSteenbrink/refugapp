module ApplicationHelper

   def username(user)
    if user.username
      user.username
    else
      user.first_name
    end
  end

end
