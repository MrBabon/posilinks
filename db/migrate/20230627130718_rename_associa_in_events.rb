class RenameAssociaInEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :associa_id, :organization_id
  end
end
