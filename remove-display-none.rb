Dir['tta/*'].each do |filename|
  html = File.read(filename)
  new_html = html.gsub(/ style="display:none;"/, '')
  File.write(filename, new_html)
end
