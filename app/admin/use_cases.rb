ActiveAdmin.register UseCase do
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

  permit_params :author, :quote, :description, :signature, :video_url,
    :image

  form do |f|
    f.inputs do
      f.input :author
      f.input :quote
      f.input :signature
      f.input :image, as: :file
      f.input :description
      f.input :category, as: :select,
        collection: UseCase::CATEGORIES
      f.input :video_url
      f.actions
    end
  end
end
