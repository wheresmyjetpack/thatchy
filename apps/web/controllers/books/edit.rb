module Web::Controllers::Books
  class Edit
    include Web::Action

    expose :book

    def initialize(repo: BookRepository.new)
      @repo = repo
    end

    def call(params)
      @book = repo.find(params[:id])
    end

    private

    attr_reader :repo
  end
end
