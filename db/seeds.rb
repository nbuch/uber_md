address = Address.find_or_create_by(line_one: "123 Main Street", line_two: "", city: "Austin", state: "TX", zip: "78757")
provider = Provider.find_or_create_by(name: 'DrStrange', specialty: 'proctology', npi: '12345', address_id: address.id)
Shift.find_or_create_by(start_time: Time.now, end_time: Time.now + 1.hour, date: Date.new, provider_id: provider.id)

