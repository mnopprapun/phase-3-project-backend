require 'pry'
require 'json'
class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/Users/) 
      if req.post?
        # binding.pry
        rawData = JSON.parse(req.body.read)
        newUser = User.create(name: rawData['player'])
        return [200, { 'Content-Type' => 'application/json' }, [ newUser.to_json ]]
      end
      return [200, { 'Content-Type' => 'application/json' }, [ {:users => User.all}.to_json ]]

    else
      resp.write "Path Not Found"

      if req.path.match(/Results/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:results => Result.all}.to_json ]]
  
      else
        resp.write "Path Not Found"

      end

      if req.path.match(/Games/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:games => Game.all}.to_json ]]
  
      else
        resp.write "Path Not Found"
      end

    end

    resp.finish
  end

end
