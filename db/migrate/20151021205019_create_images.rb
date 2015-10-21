class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :photo
      t.column :user_id, :integer
      t.column :description, :string

      t.timestamps
    end
  end
end
