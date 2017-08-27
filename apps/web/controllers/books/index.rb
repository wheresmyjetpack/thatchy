module Web::Controllers::Books
  class Index
    include Web::Action

    expose :books

    def initialize(repo: BookRepository.new)
      @repo = repo
    end

    def call(params)
      @books = repo.all
    end

    attr_reader :repo
  end
end
