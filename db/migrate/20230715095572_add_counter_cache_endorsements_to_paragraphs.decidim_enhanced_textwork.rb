# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20171201122623)

class AddCounterCacheEndorsementsToParagraphs < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :paragraph_endorsements_count, :integer, null: false, default: 0
    add_index :decidim_enhanced_textwork_paragraphs, :paragraph_endorsements_count, name: "idx_decidim_enhanced_textwork_p_on_paragraph_endorsemnts_count"
  end
end
