# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20180413135249)

class FixNilThresholdPerParagraph < ActiveRecord::Migration[5.1]
  class Component < ApplicationRecord
    self.table_name = :decidim_components
  end

  def change
    paragraph_components = Component.where(manifest_name: "paragraphs")

    paragraph_components.each do |component|
      settings = component.attributes["settings"]
      settings["global"]["threshold_per_paragraph"] ||= 0
      component.settings = settings
      component.save
    end
  end
end
