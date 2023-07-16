# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170215131720)

class AddReportCountToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :report_count, :integer, default: 0
  end
end
