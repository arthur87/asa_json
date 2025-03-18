

# asa_json

[![Gem Version](https://badge.fury.io/rb/asa_json.svg)](https://badge.fury.io/rb/asa_json)

asa_json is a library for conveniently JSON.  
It supports reading and writing json and jsonl files.

# Usage

See spec files.

## Read JSONL

```
pp AsaJson.read_jsonl("#{__dir__}/test.jsonl")
```

The output result is here.

```
[{"id"=>1, "name"=>"cerulean", "year"=>2000, "color"=>"#98B2D1", "pantone_value"=>"15-4020"},
 {"id"=>2, "name"=>"fuchsia rose", "year"=>2001, "color"=>"#C74375", "pantone_value"=>"17-2031"},
 {"id"=>3, "name"=>"true red", "year"=>2002, "color"=>"#BF1932", "pantone_value"=>"19-1664"}]
```

## Write JSONL

```
test = [
      { 'id' => 1, 'name' => 'cerulean', 'year' => 2000, 'color' => '#98B2D1', 'pantone_value' => '15-4020' },
      { 'id' => 2, 'name' => 'fuchsia rose', 'year' => 2001, 'color' => '#C74375',
        'pantone_value' => '17-2031' },
      { 'id' => 3, 'name' => 'true red', 'year' => 2002, 'color' => '#BF1932', 'pantone_value' => '19-1664' }
    ]

AsaJson.write_jsonl("#{__dir__}/output.jsonl", test)
```

json uses read_json and write_json.