# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170120151202)

class AddUserGroupIdToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :decidim_user_group_id, :integer, index: true
  end
end
