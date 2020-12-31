class RenameDescriptionColumnToSteps < ActiveRecord::Migration[6.0]
  def change
    rename_column :steps, :description, :content
  end
end
