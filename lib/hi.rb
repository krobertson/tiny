require 'rubygems'
require 'sinatra'

$index = 1
$known = {}

get '/' do
  if big = params[:t]
    generate(big)
  else
    "I'm Tiny"
  end
end

get '/:tiny' do |tiny|
  restore(tiny)
end

def generate(url)
  key = encode($index)
  $known[key] = url
end

def restore(index)
  if $known(index)
    $known(index)
  else
    raise Sinatra::NotFound
  end
end
