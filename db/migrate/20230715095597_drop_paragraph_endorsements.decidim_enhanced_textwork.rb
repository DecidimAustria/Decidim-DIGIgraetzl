# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20200120230130)

class DropParagraphEndorsements < ActiveRecord::Migration[5.2]
  def change
    drop_table :decidim_enhanced_textwork_paragraph_endorsements, if_exists: true, force: :restrict
    remove_column :decidim_enhanced_textwork_paragraphs, :paragraph_endorsements_count
  end
end
