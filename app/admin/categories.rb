ActiveAdmin.register Category do
  menu priority: 3
  permit_params :name, :type, :model

  index do
    selectable_column
    id_column
    column :name
    column :type
    column :model
    actions
  end

  filter :name
  filter :type
  filter :model

  form do |f|
    f.inputs do
      f.input :name
      f.input :type
      f.input :model
    end
    f.actions
  end

end
