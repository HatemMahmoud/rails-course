class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :article
      t.string :name

      t.timestamps
    end
    add_index :tags, :article_id
  end
end
