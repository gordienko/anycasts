# frozen_string_literal: true

class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels, id: :uuid do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end