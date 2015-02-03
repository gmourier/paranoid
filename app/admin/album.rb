ActiveAdmin.register Album do
  permit_params :name, :released_at, :description, :cover

  form do |f|
    f.inputs "New album" do
      f.input :name
      f.input :released_at
      f.input :description, as: :html_editor
      f.input :cover, :as => :file, :required => false, :hint => f.template.image_tag(f.object.cover.url(:thumb))
    end
    f.actions
  end

  show do |album|
  attributes_table do
    row :name
    row :cover do
      image_tag(album.cover.url(:thumb))
    end
  end
 end

end
