HEADER = \
"""
## Openscad Models

Shared models in openscad for sharing, learning, blah, blah.

## How To Build

Render all *.scad files and update the README in one swoop!

```
ruby build.rb
```

# Notes

Files that `_start_with_an_underscore` won't be rendered.
"""

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
