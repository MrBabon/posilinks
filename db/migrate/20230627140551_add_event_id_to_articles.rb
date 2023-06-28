class AddEventIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :event, null: false, foreign_key: true
  end
end
