class AddTagToContent < ActiveRecord::Migration
  def change
    add_column :contents, :tag, :string

  end
end
