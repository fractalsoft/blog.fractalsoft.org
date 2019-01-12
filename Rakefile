DOMAIN = File.read('CNAME').strip
URL = "https://#{DOMAIN}"
SITEMAP = "#{URL}/sitemap.xml"

desc 'Ping Pingomatic'
task :pingomatic do
  begin
    require 'xmlrpc/client'
    puts '* Pinging ping-o-matic'
    XMLRPC::Client.new('rpc.pingomatic.com', '/')
                  .call(
                    'weblogUpdates.extendedPing',
                    DOMAIN,
                    URL,
                    SITEMAP
                  )
  rescue LoadError
    puts '! Could not ping ping-o-matic, because XMLRPC::Client could not be found.'
  end
end

desc 'Ping Google'
task :sitemapgoogle do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Google about our sitemap'
    Net::HTTP.get(
      'www.google.com',
      '/webmasters/tools/ping?sitemap=' + URI.escape(SITEMAP)
    )
  rescue LoadError
    puts '! Could not ping Google about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

desc 'Ping Bing of the new sitemap'
task :sitemapbing do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Bing about our sitemap'
    Net::HTTP.get(
      'www.bing.com',
      '/webmaster/ping.aspx?siteMap=' + URI.escape(SITEMAP)
    )
  rescue LoadError
    puts '! Could not ping Bing about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

desc 'Ping pubsubhubbub server.'
task :pingpubsubhubbub do
  begin
    require 'cgi'
    require 'net/http'
    puts '* Pinging pubsubhubbub server'
    data = 'hub.mode=publish&hub.url=' + CGI::escape(SITEMAP)
    http = Net::HTTP.new('pubsubhubbub.appspot.com', 80)
    resp, data = http.post(
      'http://pubsubhubbub.appspot.com/publish',
      data,
      {'Content-Type' => 'application/x-www-form-urlencoded'}
    )
    puts "Ping error: #{resp}, #{data}" unless resp.code == "204"
  end
end

# rake notify
desc 'Notify various services about new content'
task notify: [:pingomatic, :sitemapgoogle, :sitemapbing, :pingpubsubhubbub] do
end

task default: [:notify]
