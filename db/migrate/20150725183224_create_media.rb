class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :media_type
      t.string :pillar
      t.string :link

      t.timestamps null: false
    end
  end
end
