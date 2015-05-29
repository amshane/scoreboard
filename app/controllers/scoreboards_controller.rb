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

  # GET /scoreboards/1
  # GET /scoreboards/1.json
  def show
  end

  # GET /scoreboards/new
  def new
    @scoreboard = Scoreboard.new
  end

  # GET /scoreboards/1/edit
  def edit
  end

  # POST /scoreboards
  # POST /scoreboards.json
  def create
    @scoreboard = Scoreboard.new(scoreboard_params)

    respond_to do |format|
      if @scoreboard.save
        format.html { redirect_to @scoreboard, notice: 'Scoreboard was successfully created.' }
        format.json { render :show, status: :created, location: @scoreboard }
      else
        format.html { render :new }
        format.json { render json: @scoreboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoreboards/1
  # PATCH/PUT /scoreboards/1.json
  def update
    respond_to do |format|
      if @scoreboard.update(scoreboard_params)
        format.html { redirect_to @scoreboard, notice: 'Scoreboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @scoreboard }
      else
        format.html { render :edit }
        format.json { render json: @scoreboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoreboards/1
  # DELETE /scoreboards/1.json
  def destroy
    @scoreboard.destroy
    respond_to do |format|
      format.html { redirect_to scoreboards_url, notice: 'Scoreboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoreboard
      @scoreboard = Scoreboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scoreboard_params
      params[:scoreboard]
    end
end
