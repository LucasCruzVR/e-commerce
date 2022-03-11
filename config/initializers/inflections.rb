ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.plural(/^(ox)$/i, '\1\2en')
  inflect.singular(/^(ox)en/i, '\1')

  inflect.irregular 'category', 'categories'

  inflect.uncountable 'equipment'
end
