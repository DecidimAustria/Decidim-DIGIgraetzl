# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180930125321)

class AddPositionToParagraphs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :position, :integer
  end
end
