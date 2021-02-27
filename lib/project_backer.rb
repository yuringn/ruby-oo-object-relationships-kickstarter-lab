class ProjectBacker
    @@all = []
    attr_accessor :project, :backer, :name, :title
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end