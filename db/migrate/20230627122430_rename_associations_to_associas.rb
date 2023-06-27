class RenameAssociationsToAssocias < ActiveRecord::Migration[7.0]
  def change
    rename_table :associations, :associas
  end
end
