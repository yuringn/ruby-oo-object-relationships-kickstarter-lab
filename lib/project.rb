require"pry"
class Project
    attr_accessor :title, :name
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       backers= ProjectBacker.all.select do|backer| 
        backer.project == self
       end
       backers.map do |bk|
        bk.backer
       end
    end

end