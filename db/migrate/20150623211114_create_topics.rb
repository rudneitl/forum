class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :description
      t.string :status
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
