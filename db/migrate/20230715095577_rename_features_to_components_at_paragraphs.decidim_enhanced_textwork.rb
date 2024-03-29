# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180305133811)

class RenameFeaturesToComponentsAtParagraphs < ActiveRecord::Migration[5.1]
  def change
    rename_column :decidim_enhanced_textwork_paragraphs, :decidim_feature_id, :decidim_component_id

    if index_name_exists?(:decidim_enhanced_textwork_paragraphs, "index_decidim_enhanced_textwork_paragraphs_on_decidim_feature_id")
      rename_index :decidim_enhanced_textwork_paragraphs, "index_decidim_enhanced_textwork_paragraphs_on_decidim_feature_id", "index_decidim_enhanced_textwork_paragraphs_on_decidim_component_id"
    end
  end
end
