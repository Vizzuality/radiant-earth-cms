ActiveAdmin.register Member do
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

  permit_params :name, :email, :title, :image, :description, :category,
    :is_board_member

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :title
      f.input :image, as: :file
      f.input :description
      f.input :category, label: 'Display in category', as: :select,
        collection: Member::CATEGORIES,
        hint: 'If both in the board and staff, select Staff and tick the checkbox bellow'
      f.input :is_board_member
      f.actions
    end
  end
end
