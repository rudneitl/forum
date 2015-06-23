class CreateForumReplies < ActiveRecord::Migration
  def change
    create_table :forum_replies do |t|
      t.string :title
      t.string :status
      t.references :forum_thread, index: true, foreign_key: true
      t.references :forum_reply, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
