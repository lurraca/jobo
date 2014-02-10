module Jobo
  module Categories
    class Creator

      def self.create_category(category_repository, attributes)
        new(category_repository).create_category(attributes)
      end

      def initialize(category_repository)
       @category_repository = category_repository
      end

      def create_category(attributes)
        category_repository.create_category(
          attributes.fetch(:name),
          attributes.fetch(:parent_id)
        )
      end

      private
      attr_reader :category_repository

    end

  end
end
