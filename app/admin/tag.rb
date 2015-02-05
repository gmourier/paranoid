ActiveAdmin.register Tag do
  permit_params :label

  form do |f|
    f.inputs "New tag" do
      f.input :label
    end
    f.actions
  end

end
