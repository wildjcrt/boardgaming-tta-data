Dir['tta/*', 'new-tta/*'].each do |filename|
  html = File.read(filename).encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
  new_html = html.gsub(/ style="display:none;"/, '')
  File.write(filename, new_html)
end
