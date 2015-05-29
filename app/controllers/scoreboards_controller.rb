class ScoreboardsController < ApplicationController

  def index
    my_file = File.read("lib/mlb.json")
    @mlb_hash = JSON.parse(my_file)

    # used Nokogiri to get team_urls_arry urls
    @team_urls_array = ["http://espn.go.com/mlb/team/_/name/bal/baltimore-orioles", "http://espn.go.com/mlb/team/_/name/bos/boston-red-sox", "http://espn.go.com/mlb/team/_/name/nyy/new-york-yankees", "http://espn.go.com/mlb/team/_/name/tb/tampa-bay-rays", "http://espn.go.com/mlb/team/_/name/tor/toronto-blue-jays", "http://espn.go.com/mlb/team/_/name/atl/atlanta-braves", "http://espn.go.com/mlb/team/_/name/mia/miami-marlins", "http://espn.go.com/mlb/team/_/name/nym/new-york-mets", "http://espn.go.com/mlb/team/_/name/phi/philadelphia-phillies", "http://espn.go.com/mlb/team/_/name/wsh/washington-nationals", "http://espn.go.com/mlb/team/_/name/chw/chicago-white-sox", "http://espn.go.com/mlb/team/_/name/cle/cleveland-indians", "http://espn.go.com/mlb/team/_/name/det/detroit-tigers", "http://espn.go.com/mlb/team/_/name/kc/kansas-city-royals", "http://espn.go.com/mlb/team/_/name/min/minnesota-twins", "http://espn.go.com/mlb/team/_/name/chc/chicago-cubs", "http://espn.go.com/mlb/team/_/name/cin/cincinnati-reds", "http://espn.go.com/mlb/team/_/name/mil/milwaukee-brewers", "http://espn.go.com/mlb/team/_/name/pit/pittsburgh-pirates", "http://espn.go.com/mlb/team/_/name/stl/st.-louis-cardinals", "http://espn.go.com/mlb/team/_/name/hou/houston-astros", "http://espn.go.com/mlb/team/_/name/laa/los-angeles-angels", "http://espn.go.com/mlb/team/_/name/oak/oakland-athletics", "http://espn.go.com/mlb/team/_/name/sea/seattle-mariners", "http://espn.go.com/mlb/team/_/name/tex/texas-rangers", "http://espn.go.com/mlb/team/_/name/ari/arizona-diamondbacks", "http://espn.go.com/mlb/team/_/name/col/colorado-rockies", "http://espn.go.com/mlb/team/_/name/lad/los-angeles-dodgers", "http://espn.go.com/mlb/team/_/name/sd/san-diego-padres", "http://espn.go.com/mlb/team/_/name/sf/san-francisco-giants"] 
    # html = Nokogiri::HTML(open("http://espn.go.com/mlb/teams"))
    # team_urls = html.css('div.mod-content ul.medium-logos div.logo-mlb-medium h5 a.bi')
    # team_urls.each do |team|
    #   @team_urls_array << team.attributes['href'].value
    # end

  end

end
