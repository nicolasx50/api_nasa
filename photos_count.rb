def photos_count(f)
    photos = f["photos"]
    cuentas = Hash.new(0)
    photos.each { |photo| cuentas[photo["camera"]["name"]] += 1 }
    return cuentas
end