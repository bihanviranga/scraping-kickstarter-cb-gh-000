require 'nokogiri'
require 'pry'


def create_project_hash
    html = File.read("fixtures/kickstarter.html")
    kickstarter = Nokogiri::HTML(html)

    projects = {}

    kickstarter.css("li.project.grid_4").each { |project|
      title = project.css("h2.bbcard_name strong a ").text
    }


end



# projects = kickstarter.css("li.project.grid_4")
# title = project.css("h2.bbcard_name strong a").text
# image link = project.css("div.project-thumbnail a img").attribute("src").value
# description = project.css("p.bbcard_blurb").text
# by = project.css("h2.bbcard_name span").text
# location = project.css("ul.project-meta li a").text.strip
# funded = project.css("ul.project-stats .first.funded").text.strip.gsub("\n"," ")
# pledged = project.css("ul.project-stats li.pledged").text.strip.gsub("\n"," ")
