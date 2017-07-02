pro1 = Provider.find_or_create_by(name: 'DrStrange', specialty: 'arcanology', npi: '12345')
# pro2 = Provider.find_or_create_by(name: 'DrJones', specialty: 'archeology', npi: '23456', address_id: 2)
# pro3 = Provider.find_or_create_by(name: 'DrWho', specialty: 'tardisology', npi: '34567', address_id: 3)
# pro4 = Provider.find_or_create_by(name: 'DrHouse', specialty: 'sarcasmology', npi: '45678', address_id: 4)
# pro5 = Provider.find_or_create_by(name: 'DrMcCoy', specialty: 'trekology', npi: '56789', address_id: 5)

# pat1 = Patient.find_or_create_by(name: 'DaVinci', mpi: '00001', dob: 9000.days.ago, gender: '1', address_id: 6)
# pat2 = Patient.find_or_create_by(name: 'Tesla', mpi: '00002', dob: 18450.days.ago, gender: '2', address_id: 7)
# pat3 = Patient.find_or_create_by(name: 'Einstien', mpi: '00003', dob: 15067.days.ago, gender: '2', address_id: 8)
# pat4 = Patient.find_or_create_by(name: 'Oppenheimer', mpi: '00004', dob: 6789.days.ago, gender: '1', address_id: 9)
# pat5 = Patient.find_or_create_by(name: 'Newton', mpi: '0005', dob: 13456.days.ago, gender: '2', address_id: 10)

add1 = Address.find_or_create_by(line_one: "123 Main Street", line_two: "", city: "Austin", state: "TX", zip: "78757", addressable_type: "Provider", addressable_id: pro1.id)
# add2 = Address.find_or_create_by(line_one: "123 Montrose Street", line_two: "", city: "Austin", state: "TX", zip: "78705", addressable_type: "Provider", addressable_id: pro2.id)
# add3 = Address.find_or_create_by(line_one: "123 Broadway Street", line_two: "", city: "Austin", state: "TX", zip: "78704", addressable_type: "Provider", addressable_id: pro3.id)
# add4 = Address.find_or_create_by(line_one: "123 Lariat Street", line_two: "", city: "Austin", state: "TX", zip: "78751", addressable_type: "Provider", addressable_id: pro4.id)
# add5 = Address.find_or_create_by(line_one: "123 Sin Salida Street", line_two: "", city: "Austin", state: "TX", zip: "78751", addressable_type: "Provider", addressable_id: pro5.id)
# add6 = Address.find_or_create_by(line_one: "123 Algarita Street", line_two: "", city: "Austin", state: "TX", zip: "78757", addressable_type: "Patient", addressable_id: pat1.id)
# add7 = Address.find_or_create_by(line_one: "123 Harmon Street", line_two: "", city: "Austin", state: "TX", zip: "78753", addressable_type: "Patient", addressable_id: pat2.id)
# add8 = Address.find_or_create_by(line_one: "123 Speedway Street", line_two: "", city: "Austin", state: "TX", zip: "78755", addressable_type: "Patient", addressable_id: pat3.id)
# add9 = Address.find_or_create_by(line_one: "123 38th Street", line_two: "", city: "Austin", state: "TX", zip: "78752", addressable_type: "Patient", addressable_id: pat4.id)
# add10 = Address.find_or_create_by(line_one: "123 Quick Hill Street", line_two: "", city: "Austin", state: "TX", zip: "78706", addressable_type: "Patient", addressable_id: pat5.id)


# shifts = Shift.find_or_create_by([
#   {start_time: Time.now, end_time: Time.now + 5.hour, date: Date.new("2017", "07", "04"), provider_id: pro1.id}, 
#   {start_time: Time.now, end_time: Time.now + 4.hour, date: Date.new("2017", "07", "05"), provider_id: pro2.id},
#   {start_time: Time.now, end_time: Time.now + 6.hour, date: Date.new("2017", "07", "06"), provider_id: pro3.id},
#   {start_time: Time.now, end_time: Time.now + 3.hour, date: Date.new("2017", "07", "07"), provider_id: pro4.id},
#   {start_time: Time.now, end_time: Time.now + 7.hour, date: Date.new("2017", "07", "08"), provider_id: pro5.id},
#   {start_time: Time.now, end_time: Time.now + 9.hour, date: Date.new("2017", "07", "04"), provider_id: pro1.id},
#   {start_time: Time.now, end_time: Time.now + 2.hour, date: Date.new("2017", "07", "05"), provider_id: pro2.id},
#   {start_time: Time.now, end_time: Time.now + 5.hour, date: Date.new("2017", "07", "06"), provider_id: pro3.id},
#   {start_time: Time.now, end_time: Time.now + 3.hour, date: Date.new("2017", "07", "07"), provider_id: pro4.id},
#   {start_time: Time.now, end_time: Time.now + 8.hour, date: Date.new("2017", "07", "08"), provider_id: pro5.id}
# ])
pro1.shifts.find_or_create_by(start_time: Time.now, end_time: Time.now + 5.hour, date: Date.new(2017, 07, 04)) 
# duration integer in min. for +/- times
pat1.visits.find_or_create_by(provider_id: pro1.id, address_id: pat1.address.id, date: DateTime.new(2017, 07, 04), duration: 45, reason: "herpes")







