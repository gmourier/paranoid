ActiveAdmin.register Post do
  permit_params :title, :publish, :content, :tags
  
  form do |f|
    f.inputs "New post" do
      f.input :title
      f.input :content, as: :html_editor
      f.input :publish
      f.inputs do
        f.has_many :tags do |t|
          t.input :label
        end
      end
    end
    f.actions
  end

end
