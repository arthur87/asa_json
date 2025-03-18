# frozen_string_literal: true

require_relative 'asa_json/version'
require 'json'

# AsaJson
module AsaJson
  class Error < StandardError; end
  # Your code goes here...

  # JSONLファイルの読み取り
  def self.read_jsonl(file, json_options = {})
    result = []
    File.open(file, 'r') do |f|
      f.each_line do |line|
        result << JSON.parse(line, json_options)
      end
    end
    result
  end

  # JSONLファイルの書き込み
  def self.write_jsonl(file, lines)
    File.open(file, 'w') do |f|
      lines.each do |line|
        f.write("#{line.to_json}\n")
      end
    end
  end

  # JSONファイルの読み取り
  def self.read_json(file, json_options = {})
    result = nil
    File.open(file, 'r') do |f|
      result = JSON.parse(f.read, json_options)
    end
  end

  # JSONファイルの書き込み
  def self.write_json(file, data)
    File.open(file, 'w') do |f|
      f.write(JSON.pretty_generate(data))
    end
  end
end
