class AddReferencesToStoreAuth < ActiveRecord::Migration[6.1]
  def change
    add_reference :stores, :store_auth, foreign_key: true
  end
end
