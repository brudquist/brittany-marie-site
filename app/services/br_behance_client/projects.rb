module BRBehanceClient
  class Projects < Base
    attr_accessor :user_projects_hash

    def all
      user_projects_hash.map do |project|
        Project.new(id: project['id'], cover_image: project['covers']['404'], name: project['name'])
      end
    end

    def self.include?(project_id)
      self.new.ids.include?(project_id)
    end

    def ids
      Rails.cache.fetch(:project_ids, expires_in: 5.minutes) { user_projects_hash.map { |p| p["id"]} }
    end

    private

    def set_up_class
      self.user_projects_hash = client.user_projects('brudquist')
    end

  end
end
