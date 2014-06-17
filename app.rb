# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/reloader'
require 'openssl'
require 'base64'
require 'json'
set :root, File.dirname(__FILE__)
set :public_folder, Proc.new { File.join(root, "public") }
post '/sign' do
  content_type :json
  CLIENT_KEY = 'your_client_key'
  json = JSON.parse(request.body.read)
  {signature: Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), CLIENT_KEY, json["forEncodeString"])).strip()}.to_json
end
