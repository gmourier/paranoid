ActiveAdmin.register Page do
  permit_params :title, :content, :publish

  form do |f|
    f.inputs "New page" do
      f.input :title
      f.input :content, as: :html_editor
      f.input :publish
    end
    f.actions
  end

end
