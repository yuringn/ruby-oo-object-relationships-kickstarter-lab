require"pry"
class Backer
    # @@all = []
    attr_accessor :name, :titlle
    def initialize(name)
        @name = name
        # @@all << self
    end

    # def self.all
    #     @@all
    # end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |pb|
          pb.backer == self
        end
        project_backers.map do |pj|
          pj.project
        end
    end
end