# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180115155220)

class AddIndexCreatedAtParagraphNotes < ActiveRecord::Migration[5.1]
  def change
    add_index :decidim_enhanced_textwork_paragraph_notes, :created_at
  end
end
