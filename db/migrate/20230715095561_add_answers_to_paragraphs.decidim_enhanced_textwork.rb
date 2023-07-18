# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170131092413)

class AddAnswersToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :state, :string, index: true
    add_column :decidim_enhanced_textwork_paragraphs, :answered_at, :datetime, index: true
    add_column :decidim_enhanced_textwork_paragraphs, :answer, :jsonb
  end
end
