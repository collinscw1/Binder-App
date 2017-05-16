class AddPageToLink < ActiveRecord::Migration[5.0]
  def change
    add_reference :links, :page, foreign_key: true
  end
end
