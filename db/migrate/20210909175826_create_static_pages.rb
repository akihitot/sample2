class CreateStaticPages < ActiveRecord::Migration[6.0]
  def change
    create_table :static_pages do |t|
      t.integer :my_number,               null: false
      t.string :manufacturer,                  null: false
      t.integer :lot_number,               null: false
      t.datetime :date,               null: false
      t.references :admin_user,            foreign_key: true
      t.timestamps
    end
  end
end
