require "sinatra"
require "data_mapper"
require "digest/sha2"

# Requirements
# -ruby 
# -bundler
# > sudo apt-get install ruby bundler
# > bundle install
# > ruby webpgp.rb

get "/" do
    erb :index
end

get "/hash" do
    h = Digest::SHA2.new << File.open('views/index.erb').read
    h.base64digest
end

get "/openpgp" do
    h = Digest::SHA2.new << File.open('openpgp.js').read
    h.base64digest
end

post "/save" do
    # save the encrypted private key (and message fields)
end

get "/:user_id" do
    # restore the encrypted private key (and message fields)
end