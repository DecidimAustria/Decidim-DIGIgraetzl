# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180529110830)

class RemoveAuthorshipsFromParagraphs < ActiveRecord::Migration[5.1]
  def change
    remove_column :decidim_enhanced_textwork_paragraphs, :decidim_author_id, :integer
    remove_column :decidim_enhanced_textwork_paragraphs, :decidim_user_group_id, :integer
  end
end
