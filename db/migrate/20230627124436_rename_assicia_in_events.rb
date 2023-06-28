class RenameAssiciaInEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :assicia_id, :associa_id
  end
end
