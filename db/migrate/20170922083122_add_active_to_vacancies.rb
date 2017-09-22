class AddActiveToVacancies < ActiveRecord::Migration[5.1]
  def change
    add_column :vacancies, :active, :boolean
  end
end
