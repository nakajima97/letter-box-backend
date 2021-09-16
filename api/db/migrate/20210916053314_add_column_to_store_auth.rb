class AddColumnToStoreAuth < ActiveRecord::Migration[6.1]
  def change
    add_column :store_auths, :jti, :string, null: false
    add_index :store_auths, :jti, unique: true
  end
end
