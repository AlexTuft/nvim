(
  (raw_string_content) @injection.content
  (#match? @injection.content "#version")
  (#set! injection.language "glsl")
)
