
puts @root
@root = ENV['RACK_ROOT'] || Dir.pwd

run Proc.new { |env|
  # Extract the requested path from the request
  path = Rack::Utils.unescape(env['PATH_INFO'])

  index = ['index.html', 'index.htm'].each do |index_file|
    if File.exists?("#{@root}#{path}/#{index_file}")
      break [200, {'Content-Type' => 'text/html'}, File.read("#{@root}#{path}/#{index_file}")]
    end
  end

  if index[0] == 200
    index
  elsif File.exists?("#{@root}#{path}") and !File.directory?("#{@root}#{path}")
      [200, {'Content-Type' => 'text/html'}, File.read("#{@root}#{path}")]
  else
    Rack::Directory.new(@root).call(env)
  end
}
