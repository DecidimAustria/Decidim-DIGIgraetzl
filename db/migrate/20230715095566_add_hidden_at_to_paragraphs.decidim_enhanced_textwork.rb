# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170220152416)

class AddHiddenAtToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :hidden_at, :datetime
  end
end
