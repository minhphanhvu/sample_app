class RenameFollowedInToFollowedId < ActiveRecord::Migration[6.0]
  def change
    rename_column :relationships, :followed_in, :followed_id
  end
end
