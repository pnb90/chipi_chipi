class RenameColumnPasswordConfirmationToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password_confirmation, :password_digest
  end
end
