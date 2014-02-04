module Jobo
  module Jobs
    class ListGroupedByCategories

      def self.list(job_repository)
        new(job_repository).list
      end

      def initialize(job_repository)
        @job_repository = job_repository
      end

      def list
        job_repository.all.group_by(&:category)
      end

      private
      attr_reader :job_repository

    end

  end

end
