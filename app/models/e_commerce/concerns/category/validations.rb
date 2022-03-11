module ECommerce
  module Concerns
    module Category
      module Validations
        extend ActiveSupport::Concern

        included do
          validates :name, uniqueness: true, presence: true
        end
      end
    end
  end
end

