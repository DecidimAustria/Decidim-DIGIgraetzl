# frozen_string_literal: true
# This migration comes from decidim_enhanced_textwork (originally 20210127115628)

class FixAnsweredParagraphsAfterCopy < ActiveRecord::Migration[5.2]
  def change
    paragraphs_after_copy = Decidim::ResourceLink.where(from_type: "Decidim::EnhancedTextwork::Paragraph").pluck(:from_id)

    result = Decidim::EnhancedTextwork::Paragraph.where.not(state_published_at: nil).where(state: nil, id: paragraphs_after_copy)

    result.find_each do |paragraph|
      paragraph.state_published_at = nil
      paragraph.save!
    end
  end
end
