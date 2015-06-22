class CreateBlackLists < ActiveRecord::Migration
  def change
    create_table :black_lists do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
