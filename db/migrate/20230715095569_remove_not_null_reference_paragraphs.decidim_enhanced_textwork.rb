# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170410073742)

class RemoveNotNullReferenceParagraphs < ActiveRecord::Migration[5.0]
  def change
    change_column_null :decidim_enhanced_textwork_paragraphs, :reference, true
  end
end
