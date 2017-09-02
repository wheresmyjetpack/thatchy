require_relative '../authentication'

module Web::Controllers::Sessions
  class New
    include Web::Action
    include Web::Controllers::Authentication::Skip

    def call(params)
    end
  end
end
