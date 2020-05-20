class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :id_git
      t.string :action
      t.string :node_id
      t.string :url
      t.string :html_url
      t.integer :number
      t.references :event_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
