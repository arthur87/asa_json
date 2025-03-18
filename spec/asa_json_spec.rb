# frozen_string_literal: true

require 'asa_json'

RSpec.describe AsaJson do # rubocop:todo Metrics/BlockLength
  before do
    @test = [
      { 'id' => 1, 'name' => 'cerulean', 'year' => 2000, 'color' => '#98B2D1', 'pantone_value' => '15-4020' },
      { 'id' => 2, 'name' => 'fuchsia rose', 'year' => 2001, 'color' => '#C74375',
        'pantone_value' => '17-2031' },
      { 'id' => 3, 'name' => 'true red', 'year' => 2002, 'color' => '#BF1932', 'pantone_value' => '19-1664' }
    ]
  end

  it 'read_jsonl' do
    result = AsaJson.read_jsonl("#{__dir__}/test.jsonl")

    expect(result).to eq @test
  end

  it 'write_jsonl' do
    AsaJson.write_jsonl("#{__dir__}/output.jsonl", @test)
    result = AsaJson.read_jsonl("#{__dir__}/output.jsonl")

    expect(result).to eq @test
  end

  it 'read_json' do
    result = AsaJson.read_json("#{__dir__}/test.json")

    expect(result).to eq @test
  end

  it 'write_json' do
    AsaJson.write_json("#{__dir__}/output.json", @test)
    result = AsaJson.read_json("#{__dir__}/output.json")

    expect(result).to eq @test
  end
end
