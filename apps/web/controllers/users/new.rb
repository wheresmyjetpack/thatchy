require_relative '../authentication'

module Web::Controllers::Users
  class New
    include Web::Action
    include Web::Controllers::Authentication::Skip

    def call(params)
    end
  end
end
