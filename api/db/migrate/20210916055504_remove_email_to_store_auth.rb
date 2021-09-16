class RemoveEmailToStoreAuth < ActiveRecord::Migration[6.1]
  def change
    remove_index :store_auths, :email
    remove_column :store_auths, :email
  end
end
