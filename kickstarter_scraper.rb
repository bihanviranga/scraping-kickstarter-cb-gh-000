require 'nokogiri'
require 'pry'


def create_project_hash
    html = file.read("fixtures/kickstarter.html")
    kickstarter = Nokogiri::HTML(html)

end

binding.pry 
create_project_hash