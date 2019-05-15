# frozen_string_literal: true

require 'cgi'

DOMAIN = File.read('CNAME').strip.freeze
URL = "https://#{DOMAIN}"
SITEMAP = "#{URL}/sitemap.xml"

desc 'Ping Pingomatic'
task :pingomatic do
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
  puts '! Could not ping ping-o-matic. XMLRPC::Client not found.'
end

desc 'Ping Google'
task :sitemapgoogle do
  require 'net/http'
  require 'uri'
  puts '* Pinging Google about our sitemap'
  Net::HTTP.get(
    'www.google.com',
    '/webmasters/tools/ping?sitemap=' + CGI.escape(SITEMAP)
  )
rescue LoadError
  puts '! Could not ping Google about sitemap. Net::HTTP not found.'
end

desc 'Ping Bing of the new sitemap'
task :sitemapbing do
  require 'net/http'
  require 'uri'
  puts '* Pinging Bing about our sitemap'
  Net::HTTP.get(
    'www.bing.com',
    '/webmaster/ping.aspx?siteMap=' + CGI.escape(SITEMAP)
  )
rescue LoadError
  puts '! Could not ping Bing about sitemap. Net::HTTP not found.'
end

desc 'Ping pubsubhubbub server.'
task :pingpubsubhubbub do
  require 'net/http'
  puts '* Pinging pubsubhubbub server'
  data = 'hub.mode=publish&hub.url=' + CGI.escape(SITEMAP)
  http = Net::HTTP.new('pubsubhubbub.appspot.com', 80)
  resp, data = http.post(
    'http://pubsubhubbub.appspot.com/publish',
    data,
    { 'Content-Type' => 'application/x-www-form-urlencoded' }
  )
  puts "Ping error: #{resp}, #{data}" unless resp.code == '204'
end

# rake notify
desc 'Notify various services about new content'
task notify: %i[pingomatic sitemapgoogle sitemapbing pingpubsubhubbub] do
end

# rake html
task :html do
  require 'html-proofer'
  sh 'htmlproofer --assume-extension ./_site'
  # options = { assume_extension: true }
  # HTMLProofer.check_directory('./_site', options).run
rescue
  puts '...'
end

task default: [:notify]
