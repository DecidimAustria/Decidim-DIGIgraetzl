# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20170228105156)

class AddGeolocalizationFieldsToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_enhanced_textwork_paragraphs, :address, :text
    add_column :decidim_enhanced_textwork_paragraphs, :latitude, :float
    add_column :decidim_enhanced_textwork_paragraphs, :longitude, :float
  end
end
