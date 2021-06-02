User.destroy_all
Game.destroy_all
Result.destroy_all


game1 = Game.create(name: 'tictactoe')


jack = User.create(name: 'jack')

bob = User.create(name: 'bob')

phill = User.create(name: 'phill')

result1 = Result.create(game: game1 , user: jack , result: "Win")
result2 = Result.create(game: game1 , user: bob , result: "Loss")
result3 = Result.create(game: game1 , user: phill , result: "Tie")
result4 = Result.create(game: game1 , user: jack , result: "Loss")
result5 = Result.create(game: game1 , user: jack , result: "Tie")
