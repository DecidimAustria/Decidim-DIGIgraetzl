# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170113114245)

class AddEnhancedTextworkTextSearchIndexes < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_enhanced_textwork_paragraphs, :title, name: "decidim_enhanced_textwork_paragraph_title_search"
    add_index :decidim_enhanced_textwork_paragraphs, :body, name: "decidim_enhanced_textwork_paragraph_body_search"
  end
end
