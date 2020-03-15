# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def main
  make_cases
end

def make_cases
  get_json("caseData").each do |a|
    Case.create({
      title: a["title"],
      date: parse_date(a["date"]),
      link: a["link"],
      info: a["info"],
      impact: a["impact"]
    })
  end
end

def parse_date(string)
  arr = string.split("-").map {|c|c.to_i}
  Date.new(arr[2], arr[0], arr[1])
end

def get_json(name)
  path = File.dirname(__FILE__) + "/data/#{name}.json"
  JSON.parse(File.read(path))
end

main