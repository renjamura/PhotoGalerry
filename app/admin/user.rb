ActiveAdmin.register User do

permit_params :name, :email, :password, :admin

index do
  selectable_column
  id_column
  column :name
  column :email
  column :admin
  actions
end

show do
  attributes_table do
    row :name
    row :email
    row :admin
  end
end

form do |f|
  f.inputs do
    f.input :name
    f.input :email
    f.input :password
    f.input :admin
  end
  f.actions
end

end
