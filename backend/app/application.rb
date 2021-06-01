class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/Users/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:users => User.all}.to_json ]]

    else
      resp.write "Path Not Found"

      if req.path.match(/Records/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "blahblah"}.to_json ]]
  
      else
        resp.write "Path Not Found"

      end

      if req.path.match(/Games/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "blahblah"}.to_json ]]
  
      else
        resp.write "Path Not Found"
      end

    end

    resp.finish
  end

end
