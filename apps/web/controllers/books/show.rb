require_relative './set_book'

module Web::Controllers::Books
  class Show
    include Web::Action
    include SetBook

    expose :book

    def call(params)
    end
  end
end
