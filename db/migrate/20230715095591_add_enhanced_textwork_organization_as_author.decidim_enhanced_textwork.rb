# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20181016132225)

class AddEnhancedTextworkOrganizationAsAuthor < ActiveRecord::Migration[5.2]
  def change
    official_paragraphs = Decidim::EnhancedTextwork::Paragraph.find_each.select do |paragraph|
      paragraph.coauthorships.count.zero?
    end

    official_paragraphs.each do |paragraph|
      paragraph.add_coauthor(paragraph.organization)
    end
  end
end
