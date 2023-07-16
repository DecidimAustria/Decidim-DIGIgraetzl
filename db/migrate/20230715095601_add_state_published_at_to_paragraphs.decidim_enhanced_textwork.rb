# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20200227175922)

class AddStatePublishedAtToParagraphs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :state_published_at, :datetime
  end
end
