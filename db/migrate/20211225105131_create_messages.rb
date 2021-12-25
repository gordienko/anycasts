# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages, id: :uuid do |t|
      t.text :content, null: false
      t.string :author, null: false
      t.belongs_to :channel, type: :uuid, index: true, null: false

      t.timestamps
    end
  end
end
