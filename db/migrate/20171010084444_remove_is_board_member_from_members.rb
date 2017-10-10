class RemoveIsBoardMemberFromMembers < ActiveRecord::Migration[5.1]
  def change
    remove_column :members, :is_board_member, :boolean
  end
end
