class RenameAssociationInEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :association_id, :assicia_id
  end
end
