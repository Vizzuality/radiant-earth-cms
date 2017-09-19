class AddCategoryToUseCases < ActiveRecord::Migration[5.1]
  def change
    add_column :use_cases, :category, :string
  end
end
