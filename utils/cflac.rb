#! /usr/bin/ruby

require 'unidecoder'

def candidate_name(directory, file_path)
  display_name = `mdls -name kMDItemDisplayName '#{file_path}'`

  name = display_name.gsub("kMDItemDisplayName = \"", "").gsub("\"\n", "")

  display_authors = `mdls -name kMDItemAuthors '#{file_path}'`

  authors = display_authors.split.join(' ').gsub("kMDItemAuthors = ( ", "").gsub(/[\")\/]/, "").gsub("\\U", "\\u").split(/[;\,]/).map(&:strip).join(" - ")
  author = authors.gsub(/\\u([\da-fA-F]{4})/) {|m| [$1].pack("H*").unpack("n*").pack("U*")}
  puts '-------------------------------'
  # puts author
  # puts author.to_ascii
  puts '-------------------------------'
  new_name = "#{author} - #{name}.flac".to_ascii

  new_file = "#{directory}/#{new_name}"
  puts new_file
  puts "================================"

  new_file
end

def rename_file(old_file, new_file)
  File.rename(old_file, new_file)
end

# directory = "/Users/thienpham/MEGAsync/lossless"

directoy = Dir.pwd

Dir.glob("/Users/thienpham/MEGAsync/lossless/*.flac").each do |file|
  # next if [".", ".."].include? file

  new_file = candidate_name(directory, file)
  rename_file(file, new_file)
end

