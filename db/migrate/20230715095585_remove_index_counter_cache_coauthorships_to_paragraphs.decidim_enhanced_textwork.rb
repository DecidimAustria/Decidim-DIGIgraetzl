# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180711075004)

class RemoveIndexCounterCacheCoauthorshipsToParagraphs < ActiveRecord::Migration[5.2]
  def change
    remove_index :decidim_enhanced_textwork_paragraphs, name: "idx_decidim_enhanced_textwork_paragraphs_paragraph_coauth_cnt"
  end
end
