class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :store, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.text :message_text

      t.timestamps
    end
  end
end
