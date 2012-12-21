require 'rack/rewrite'


use Rack::Rewrite do
  r301 %r{.*}, 'http://pranas.kiziela.lt$&', ->(rack_env) do
    rack_env['SERVER_NAME'] != 'pranas.kiziela.lt'
  end
end


use Rack::Static,
  :urls => ["/images", "/js", "css"],
  :root => "public"

run lambda { |_|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
