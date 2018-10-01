require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
remote_page_name = "Ruby"
remote_full_url = remote_base_url + "/" + remote_page_name

puts open(remote_full_url).read
