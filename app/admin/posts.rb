ActiveAdmin.register Post do
  permit_params :user_id, :title, :photo1, :photo2, :photo3, :photo4, :ingredients, :instructions, :category, :caption1, :caption2, :caption3, :prep_time, :cook_time, :serving, :post_layout_id


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
