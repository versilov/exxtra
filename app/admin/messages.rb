ActiveAdmin.register Message do
  index do
    column :name
    column :email
    column :phone
    column :message
    column :created_at
    default_actions
  end
  
end
