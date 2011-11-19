ActiveAdmin.register AdminUser do
  index do
    column :id
    column :email
    column :created_at
    column :last_sign_in_at
    default_actions
  end
  
  filter :id
  filter :email
  
end
