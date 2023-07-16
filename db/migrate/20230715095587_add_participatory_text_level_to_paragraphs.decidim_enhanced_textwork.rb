# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180930125321)

class AddParticipatoryTextLevelToParagraphs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :participatory_text_level, :string
  end
end
