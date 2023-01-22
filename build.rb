HEADER = File.read("./header.md")
RENDERING = \
"""
# %s.scad

<img src=\"%s.png\">
"""

renderings = Dir["*.scad"]
  .sort
  .map    { |x| x.gsub(".scad", "") }
  .select { |x| !x.start_with?("_") }
  .each   { |x| `openscad -o #{x}.png --imgsize=256,256 #{x}.scad` }
  .map    { |x| RENDERING % [x, x] }

File.write("README.md", HEADER + renderings.join("\n"))
