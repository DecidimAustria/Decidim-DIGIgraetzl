# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170215132030)

class AddReferenceToParagraphs < ActiveRecord::Migration[5.0]
  class Paragraph < ApplicationRecord
    self.table_name = :decidim_enhanced_textwork_paragraphs
  end

  def change
    add_column :decidim_enhanced_textwork_paragraphs, :reference, :string
    Paragraph.find_each(&:save)
    change_column_null :decidim_enhanced_textwork_paragraphs, :reference, false
  end
end
