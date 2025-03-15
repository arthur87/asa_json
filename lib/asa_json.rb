# frozen_string_literal: true

require_relative 'asa_json/version'
require 'json'

module AsaJson
  class Error < StandardError; end
  # Your code goes here...

  def self.read_jsonl(file)
    result = []
    File.open(file, 'r') do |f|
      f.each_line do |line|
        result << JSON.parse(line)
      end
    end
    result
  end

  def self.write_jsonl(file, lines)
    File.open(file, 'w') do |f|
      lines.each do |line|
        f.write("#{line.to_json}\n")
      end
    end
  end

  def self.read_json(file)
    result = nil
    File.open(file, 'r') do |f|
      result = JSON.parse(f.read)
    end
  end

  def self.write_json(file, data)
    File.open(file, 'w') do |f|
      f.write(JSON.pretty_generate(data))
    end
  end
end
