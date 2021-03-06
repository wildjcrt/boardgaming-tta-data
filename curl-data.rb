def checker(array, folder)
  clean = true

  array.each do |gid|
    filename = "./#{folder}/#{gid}.html"

    if File.exist?(filename)
      clean = false if File.size(filename) < 1000
    else
      clean = false
    end
  end

  clean
end

# You have to logg in http://www.boardgaming-online.com/ and get PHPSESSID by inspector.
session_id = '249896klglpl69csckbbrh6vm3'

yent_lu_tta_games = [7425801, 7424884, 7423827, 7422593, 7421473, 7419061, 7417177, 7412904, 7410005, 7404756, 7401779, 7397075, 7393680, 7391229, 7389029, 7386726, 7383870, 7380857, 7376400, 7376025, 7373573, 7373529, 7371668, 7369753, 7367592, 7365403, 7362235, 7362219, 7360766, 7360558, 7358440, 7357439, 7355082, 7353271, 7349985, 7343530, 7339442, 7334432, 7296746, 7278955, 7277889, 7276850, 7275750, 7274140, 7272061, 7270835, 7270299, 7270263, 7268745, 7268582, 7268207, 7268204, 7254001, 7248156, 7241430, 7241428, 7216572, 7194993, 7191439, 7189187, 7187501, 7185791, 7184162, 7182174, 7180020, 7177998, 7175899, 7175898, 7172542, 7172540, 7162611, 7155635, 7155634, 7116648, 211913, 205492, 204548, 204547, 204544, 201593, 193765, 193736, 191626, 190851, 189938, 189937, 187701, 182630, 181978, 177841, 177418, 174043, 171679, 169924, 168225, 167625, 165468, 163277, 163274, 158766, 158361, 158321, 158319, 156557, 149961, 149960, 145277, 142414, 137419, 130849, 130846, 129570, 126948, 123034, 120935, 120848, 120094, 119899, 119521, 118725, 118724, 118361, 118321, 115812, 115607, 114212, 114016, 114012, 113674, 113198, 112897, 112660, 112554, 111736, 111550, 111130, 110643, 110639, 109915, 109882, 109706, 109301, 108735, 108539, 108023, 108022, 108017, 107806, 107779, 107029, 107025, 107024, 107020, 106865, 106749, 106580, 106515, 106451, 106450, 106311, 106285, 106077, 105868, 105866, 105678, 105615, 105416, 104468, 103921, 103882]
if checker(yent_lu_tta_games, 'tta')
  puts "All tta downloaded."
else
  yent_lu_tta_games.each do |gid|
    puts "#{yent_lu_tta_games.index(gid) + 1} / #{yent_lu_tta_games.size}"

    filename = "./tta/#{gid}.html"
    command  = "curl 'http://www.boardgaming-online.com/index.php?cnt=202&pl=#{gid}' -H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://www.boardgaming-online.com/index.php?cnt=14&pg=1&flt=Yent%20Lu' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7' -H 'Cookie: PHPSESSID=#{session_id}' --compressed > #{filename}"

    if File.exist?(filename)
      if File.size(filename) < 1000
        system(command)
      end
    else
      system(command)
    end
  end
end

yent_lu_new_tta_games = [7425801, 7424884, 7423827, 7422593, 7421473, 7419061, 7417177, 7412904, 7410005, 7404756, 7401779, 7397075, 7393680, 7391229, 7389029, 7386726, 7383870, 7380857, 7376400, 7376025, 7373573, 7373529, 7371668, 7369753, 7367592, 7365403, 7362235, 7362219, 7360766, 7360558, 7358440, 7357439, 7355082, 7353271, 7349985, 7343530, 7339442, 7334432, 7296746, 7278955, 7277889, 7276850]
if checker(yent_lu_new_tta_games, 'new-tta')
  puts "All new-tta downloaded."
else
  yent_lu_new_tta_games.each do |gid|
    puts "#{yent_lu_new_tta_games.index(gid) + 1} / #{yent_lu_new_tta_games.size}"

    filename = "./new-tta/#{gid}.html"
    command  = "curl 'http://www.boardgaming-online.com/index.php?cnt=202&pl=#{gid}' -H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://www.boardgaming-online.com/index.php?cnt=14&pg=1&flt=Yent%20Lu' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7' -H 'Cookie: PHPSESSID=#{session_id}' --compressed > #{filename}"

    if File.exist?(filename)
      if File.size(filename) < 1000
        system(command)
      end
    else
      system(command)
    end
  end
end
