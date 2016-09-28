class Numeric
  @@currencies = {'dollar' => 1.000, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id, *args, &block)  # capture all args in case have to call super
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
        sigular_currency = currency.to_s.gsub(/s$/,'')
        self / @@currencies[sigular_currency]        
    end
end

puts 10.dollars.in(:dollars)
puts 10.euros.in(:rupees)
puts 12.92.dollars.in(:rupee)