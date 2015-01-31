ActiveAdmin.register Media do
  permit_params :title, :alt, :publish, :file

  form do |f|
    f.inputs "New media" do
      f.input :title
      f.input :alt
      f.input :publish
      f.input :file, :as => :file, :required => false, :hint => f.template.image_tag(f.object.file.url(:thumb))
    end
    f.actions
  end

end
