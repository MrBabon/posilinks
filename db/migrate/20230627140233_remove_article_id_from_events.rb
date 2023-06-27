class RemoveArticleIdFromEvents < ActiveRecord::Migration[7.0]
  def change
      remove_column :events, :article_id, :bigint
  end
end
