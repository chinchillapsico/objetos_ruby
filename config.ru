require 'rack'
class MiAPP
    def call(env)
        @url = env('REQUEST_PATH')
        if @url == '/index'
            [200, {'Content-Type' => 'text/plain'}, ['index']]
        else
            [200, {'Content-Type' => 'text/plain'}, ['NO index']]
        end    
    end
end
run MiAPP.new

# ruby config.ru