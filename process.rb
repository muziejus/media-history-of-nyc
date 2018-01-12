#! /usr/bin/env ruby
# Based on https://github.com/denten-bin/write-support

require 'yaml'

# Load in metadata
metadata = YAML.load_file('metadata.yml')

# Concatenate markdown files using the file_order metadata
files = metadata["file_order"].join(" ")

# Add templating information for pdf
pdf_opts = "--pdf-engine=xelatex --template=#{metadata["template"]} "
html_opts = "--template=#{metadata["template-html"]} "

pdf_cmd = "pandoc -sr markdown+yaml_metadata_block+citations \
  #{pdf_opts} \
  --filter pandoc-citeproc 'metadata.yml' \
  #{files} \
  -o docs/syllabus.pdf"
html_cmd = "pandoc -sr markdown+yaml_metadata_block+citations \
  #{html_opts} \
  --filter pandoc-citeproc 'metadata.yml' \
  #{files} \
  -o docs/index.html"

system pdf_cmd
puts "Generated docs/syllabus.pdf"
system html_cmd
puts "Generated docs/index.html"

