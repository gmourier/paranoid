ActiveAdmin.register Post do
  permit_params :name, :slug, :publish, :content

  form do |f|
    f.inputs "New post" do
      f.input :title
      f.input :content
      f.input :publish
    end
    f.actions
  end

end
