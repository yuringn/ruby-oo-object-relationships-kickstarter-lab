require_relative "lib/backer.rb"
require_relative "lib/project.rb"
require_relative "lib/project_backer.rb"
require"pry"

# avi_backer =Backer.new("Avi")

# amaze_project = Project.new("Project with so much amaze")

# project_backer = ProjectBacker.new(avi_backer, amaze_project)

# avi_backer.back_project("I will be loved")

# amaze_project.add_backer("Via")

meryl = Backer.new('Meryl')
steven = Backer.new('Steven')

karaoke = Project.new('Karaoke')
book = Project.new('Ruby, Ruby, and More Ruby')

    book.add_backer(steven)
    book.add_backer(meryl)
    karaoke.add_backer(steven)
    karaoke.add_backer(meryl)

binding.pry