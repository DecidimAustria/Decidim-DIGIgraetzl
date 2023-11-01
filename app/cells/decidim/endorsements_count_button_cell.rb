# frozen_string_literal: true

module Decidim
  # This cell renders the endrosement button and the endorsements count.
  # It only supports one row of buttons per page due to current tag ids used by javascript.
  class EndorsementsCountButtonCell < Decidim::ViewModel
    include LayoutHelper
    include CellsHelper
    include EndorsableHelper
    include ResourceHelper
    include TooltipHelper
    include Decidim::SanitizeHelper

    delegate :current_user, to: :controller, prefix: false
    delegate :current_settings, to: :controller, prefix: false
    #delegate :current_component, to: :controller, prefix: false
    delegate :allowed_to?, to: :controller, prefix: false

    def show
      render
    end

    private

    def current_component
      model.component
    end
  end
end
