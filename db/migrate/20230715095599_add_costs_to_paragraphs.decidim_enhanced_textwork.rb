# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20200210135152)

class AddCostsToParagraphs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :cost, :decimal
    add_column :decidim_enhanced_textwork_paragraphs, :cost_report, :jsonb
    add_column :decidim_enhanced_textwork_paragraphs, :execution_period, :jsonb
  end
end
