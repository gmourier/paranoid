ActiveAdmin.register Concert do
  permit_params :name, :show_at, :description, :country, :city, :street, :postal_code, :lat, :long, :publish, :flyer

  form do |f|
    f.inputs "New concert" do
      f.input :name
      f.input :show_at
      f.input :description, as: :html_editor
      f.input :country, :as => :string #avoid formtastic country_select detection
      f.input :city
      f.input :street
      f.input :postal_code
      f.input :lat
      f.input :long
      f.input :publish
      f.input :flyer, :as => :file, :required => false, :hint => f.template.image_tag(f.object.flyer.url(:thumb))
    end
    f.actions
  end

  show do |concert|
  attributes_table do
    row :name
    row :flyer do
      image_tag(concert.flyer.url(:thumb))
    end
  end
 end

end
