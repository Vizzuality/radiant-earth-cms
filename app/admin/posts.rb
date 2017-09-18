ActiveAdmin.register Post do
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

  permit_params :title, :url, :image, :short_description, :video_url, :category

  form do |f|
    f.inputs do
      f.input :title
      f.input :url
      f.input :image, as: :file
      f.input :short_description
      f.input :category, as: :select,
        collection: Post::CATEGORIES
      f.input :video_url
      f.actions
    end
  end
end
