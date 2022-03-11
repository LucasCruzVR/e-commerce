module Category
  class Destroy
    include Interactor
    include Interactor::Contracts

    expects do
      required(:category).filled
    end

    on_breach do |breaches|
      message = []
      breaches.each do |breach|
        message << breach.messages
      end
      context.fail!(message: message.join(', '))
    end

    def call
      context.fail!(status: 422) unless context.category.destroy
    end
  end
end
