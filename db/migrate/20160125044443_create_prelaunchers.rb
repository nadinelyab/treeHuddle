class CreatePrelaunchers < ActiveRecord::Migration
  def change
    create_table :prelaunchers do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
