use Rack::Static,
  :urls => ["/img", "/js", "/css", "/font-awesome", "/fonts", "/less", "/mail"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/home.html', File::RDONLY)
  ]
}
