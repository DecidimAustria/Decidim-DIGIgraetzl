# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170205082832)

class AddIndexToDecidimEnhancedTextworkParagraphsParagraphVotesCount < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_enhanced_textwork_paragraphs, :paragraph_votes_count, name: "index_decidim_enhanced_textwork_paragraph_votes_count"
    add_index :decidim_enhanced_textwork_paragraphs, :created_at
    add_index :decidim_enhanced_textwork_paragraphs, :state
  end
end
