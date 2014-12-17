require 'yaml'
require 'pp'

parks = YAML.load(File.read('data/amusement_parks.yml'))


  result = {}
  parks.each do |park|
    result[park[:country]] = result[park[:country]] || []
    # result[:1] = result[:1] || []
    result[park[:country]] << park
  end
  pp result
