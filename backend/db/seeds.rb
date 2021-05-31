Users.destroy_all

users = []

10.times do 
	users << Faker::Name.name  
end








# u1 = User.create(name: 'John Doe')

# s1 = Score.create(score: '15000')

# Hi_score.create(hiscore: 15000, scores_id: s1, users_id: u1, duration: 29999)