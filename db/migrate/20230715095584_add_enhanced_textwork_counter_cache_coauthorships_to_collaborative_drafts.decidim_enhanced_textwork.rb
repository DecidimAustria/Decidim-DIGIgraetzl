# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180711074134)

class AddEnhancedTextworkCounterCacheCoauthorshipsToCollaborativeDrafts < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_enhanced_textwork_collaborative_drafts, :coauthorships_count, :integer, null: false, default: 0
  end
end
