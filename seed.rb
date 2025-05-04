# liste de jeu de données pour testé le projet 

# liste des équipes 
team1 = Team.create!(name: "Paris Saint-Germain")
team2 = Team.create!(name: "Olympique de Marseille") 
team3 = Team.create!(name: "Olympique Lyonnais")
team4 = Team.create!(name: "AS Monaco")
team5 = Team.create!(name: "LOSC Lille")
team6 = Team.create!(name: "Stade Rennais")
team7 = Team.create!(name: "RC Lens")
team8 = Team.create!(name: "OGC Nice")
team9 = Team.create!(name: "FC Nantes")
team10 = Team.create!(name: "RC Strasbourg")

# liste des joueurs
Player.create!(first_name: "Kylian", last_name: "Mbappé", role: "striker", level: "pro", team: team1)
Player.create!(first_name: "Pierre-Emerick", last_name: "Aubameyang", role: "striker", level: "pro", team: team2)
Player.create!(first_name: "Alexandre", last_name: "Lacazette", role: "striker", level: "pro", team: team3)
Player.create!(first_name: "Wissam", last_name: "Ben Yedder", role: "striker", level: "pro", team: team4)
Player.create!(first_name: "Jonathan", last_name: "David", role: "striker", level: "pro", team: team5)
Player.create!(first_name: "Martin", last_name: "Terrier", role: "striker", level: "pro", team: team6)
Player.create!(first_name: "Loïs", last_name: "Openda", role: "striker", level: "pro", team: team7)
Player.create!(first_name: "Terem", last_name: "Moffi", role: "striker", level: "pro", team: team8)
Player.create!(first_name: "Mostafa", last_name: "Mohamed", role: "striker", level: "pro", team: team9)
Player.create!(first_name: "Habib", last_name: "Diallo", role: "striker", level: "pro", team: team10)

# liste des matchs
match1 = Match.create!(home_team: team1, away_team: team2, match_date: DateTime.new(2025,5,1,20,0))
match2 = Match.create!(home_team: team3, away_team: team4, match_date: DateTime.new(2025,5,2,20,0))
match3 = Match.create!(home_team: team5, away_team: team6, match_date: DateTime.new(2025,5,3,20,0))
match4 = Match.create!(home_team: team7, away_team: team8, match_date: DateTime.new(2025,5,4,20,0))
match5 = Match.create!(home_team: team9, away_team: team10, match_date: DateTime.new(2025,5,5,20,0))
match6 = Match.create!(home_team: team2, away_team: team3, match_date: DateTime.new(2025,5,6,20,0))
match7 = Match.create!(home_team: team4, away_team: team5, match_date: DateTime.new(2025,5,7,20,0))
match8 = Match.create!(home_team: team6, away_team: team7, match_date: DateTime.new(2025,5,8,20,0))
match9 = Match.create!(home_team: team8, away_team: team9, match_date: DateTime.new(2025,5,9,20,0))
match10 = Match.create!(home_team: team10, away_team: team1, match_date: DateTime.new(2025,5,10,20,0))

# liste des résultats
Result.create!(match: match1, home_score: 3, away_score: 1)
Result.create!(match: match2, home_score: 2, away_score: 2)
Result.create!(match: match3, home_score: 1, away_score: 0)
Result.create!(match: match4, home_score: 4, away_score: 2)
Result.create!(match: match5, home_score: 0, away_score: 1)
Result.create!(match: match6, home_score: 2, away_score: 3)
Result.create!(match: match7, home_score: 1, away_score: 1)
Result.create!(match: match8, home_score: 3, away_score: 0)
Result.create!(match: match9, home_score: 2, away_score: 1)
Result.create!(match: match10, home_score: 0, away_score: 2)