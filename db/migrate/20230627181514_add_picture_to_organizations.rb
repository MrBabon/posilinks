class AddPictureToOrganizations < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :picture, :string
  end
end
