ActiveAdmin.register Post do
  permit_params :title, :publish, :content

  form do |f|
    f.inputs "New post" do
      f.input :title
      f.input :content, as: :html_editor
      f.input :publish
    end
    f.actions
  end

end
