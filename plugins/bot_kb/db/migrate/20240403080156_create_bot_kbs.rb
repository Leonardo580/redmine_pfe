class CreateBotKbs < ActiveRecord::Migration[6.1]
  def change
    create_table :bot_kbs do |t|
      t.integer :issue_id
      t.bigint :related_knowledge_base_id 
      t.string :subject
      t.text :question
      t.text :answer
      t.string :tag
      t.timestamps
    end

    add_foreign_key :bot_kbs, :issues, column: :issue_id
    add_foreign_key :bot_kbs, :bot_kbs, column: :related_knowledge_base_id, on_delete: :nullify 
  end

end
