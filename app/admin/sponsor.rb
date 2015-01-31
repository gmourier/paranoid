ActiveAdmin.register Sponsor do
  permit_params :name, :url, :logo

  form do |f|
    f.inputs "New sponsor" do
      f.input :name
      f.input :url
      f.input :logo, :as => :file, :required => false, :hint => f.template.image_tag(f.object.logo.url(:thumb))
    end
    f.actions
  end

end
