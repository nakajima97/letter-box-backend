class AddStoreLoginIdToStoreAuth < ActiveRecord::Migration[6.1]
  def change
    add_column :store_auths, :store_login_id, :string, null: false
    add_index :store_auths, :store_login_id, :unique =>  true
  end
end
