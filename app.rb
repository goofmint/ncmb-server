# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/reloader'
require 'openssl'
require 'base64'
require 'json'
set :root, File.dirname(__FILE__)
set :public_folder, Proc.new { File.join(root, "public") }

options '/*' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Headers'] = '*'
end

post '/sign' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  content_type :json
  CLIENT_KEY = '65c3eb97f9fe9e90bba279611d405121ddc1ea9beaea92ea77ee7ceb02b91247'
  json = JSON.parse(request.body.read)
  {signature: Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), CLIENT_KEY, json["forEncodeString"])).strip()}.to_json
end
