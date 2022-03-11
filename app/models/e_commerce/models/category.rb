module ECommerce
  module Models
    class Category < ApplicationRecord
      self.table_name = 'categories'

      include ECommerce::Concerns::Category::Associations
      include ECommerce::Concerns::Category::Callbacks
      include ECommerce::Concerns::Category::Methods
      include ECommerce::Concerns::Category::Scopes
      include ECommerce::Concerns::Category::Validations
    end
  end
end
