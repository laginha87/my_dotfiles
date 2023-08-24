#!/usr/bin/env ruby
# Needs https://github.com/schacon/git-pulls to work

current_branch = %x(git rev-parse --abbrev-ref HEAD).sub("\n","")
repo_url = %x(git config --get remote.origin.url).sub(".git\n", '')
%x(git pulls update)
pull_requests = %x(git pulls list)
possible_pull_request = pull_requests.split("\n").grep(Regexp.new(current_branch))
has_pull_request = !possible_pull_request.empty?

if(has_pull_request)
  pull_request_num = possible_pull_request.first.split(' ').first
  puts "Current Pull Request is: #{repo_url}/pull/#{pull_request_num}"
else
  puts "Create a New Pull request: #{repo_url}/compare/#{current_branch}"
end
