class SetIsBoardMemberDefaultToFalse < ActiveRecord::Migration[5.1]
  def change
    change_column :members, :is_board_member, :boolean, default: false
  end
end
