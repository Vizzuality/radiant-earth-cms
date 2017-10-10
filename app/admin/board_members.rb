ActiveAdmin.register BoardMember do
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
  permit_params :name, :email, :title, :image, :description, :is_board_chair

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :title
      f.input :image, as: :file
      f.input :description
      f.input :is_board_chair
      f.actions
    end
  end

end
