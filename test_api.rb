require 'openpix/ruby_sdk'

# Your AppID from https://app.woovi.com/home/applications/tab/list
app_id = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

client = Openpix::RubySdk::Client.new(app_id)

# Creating a Charge
puts "Creating Charge"
client.charges.init_body(
  params: {
    correlation_id: 'my-correlation-id',
    value: 50000
  }
)
response = client.charges.save
puts "response.success? - #{response.success?}"
puts "##############"
puts "response.resource_response: "
puts response.resource_response

# Listing Charges
# Default skip is 0 and limit is 100
puts "Listing Charge"
response = client.charges.fetch(skip: 0, limit: 100) # skip and limit are pagination params, https://developers.woovi.com/api#tag/charge/paths/~1api~1v1~1charge/get
puts "##############"
puts "response.pagination_meta: "
puts response.pagination_meta
puts "##############"
puts "response.resource_response: "
puts response.resource_response # API response for this resource, should be an array
