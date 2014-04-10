$:<< "./lib" # uncomment this to run against a Git clone instead of an installed gem

require "paytrace"
require "paytrace/debug"

PayTrace::Debug.configure_test

PayTrace::Debug.trace do
  params = {
    #UN, PSWD, TERMS, METHOD, SOURCEZIP, SOURCESTATE, SZIP, WEIGHT, SHIPPERS, SSTATE
    source_zip: 98133,
    source_state: "WA", 
    shipping_postal_code: 94947,
    shipping_weight: 5.1,
    shippers: "UPS,USPS,FEDEX",
    shipping_state: "CA",
    shipping_country: "US"
  }
  PayTrace::Transaction.calculate_shipping(params)
end