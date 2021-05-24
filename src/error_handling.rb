begin
    raise NoMethodError, 'an error occurred'
  rescue NoMethodError => e
    puts "#{e.class}: #{e.message}"
  end