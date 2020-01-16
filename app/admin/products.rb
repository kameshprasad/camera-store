ActiveAdmin.register Product do
  menu priority: 4
  permit_params :name, :description, :price, :make, :category_id
  belongs_to :category, optional: true

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :make
    column :category
    actions
  end

  filter :name
  filter :description
  filter :price
  filter :make
  filter :category

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :make
      f.input :category
    end
    f.actions
  end

end
