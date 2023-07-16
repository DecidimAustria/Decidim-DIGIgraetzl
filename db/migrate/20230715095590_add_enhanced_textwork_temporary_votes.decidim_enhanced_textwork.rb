# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20181010114622)

class AddEnhancedTextworkTemporaryVotes < ActiveRecord::Migration[5.2]
  def change
    change_table :decidim_enhanced_textwork_paragraph_votes do |t|
      t.boolean :temporary, null: false, default: false
    end
  end
end
