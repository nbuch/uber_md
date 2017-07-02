address = Address.find_or_create_by(line_one: "123 Main Street", line_two: "", city: "Austin", state: "TX", zip: "78757")
address = Address.find_or_create_by(line_one: "123 Montrose Street", line_two: "", city: "Austin", state: "TX", zip: "78705")
address = Address.find_or_create_by(line_one: "123 Broadway Street", line_two: "", city: "Austin", state: "TX", zip: "78704")
address = Address.find_or_create_by(line_one: "123 Lariat Street", line_two: "", city: "Austin", state: "TX", zip: "78751")
address = Address.find_or_create_by(line_one: "123 Sin Salida Street", line_two: "", city: "Austin", state: "TX", zip: "78751")
address = Address.find_or_create_by(line_one: "123 Algarita Street", line_two: "", city: "Austin", state: "TX", zip: "78757")
address = Address.find_or_create_by(line_one: "123 Harmon Street", line_two: "", city: "Austin", state: "TX", zip: "78753")
address = Address.find_or_create_by(line_one: "123 Speedway Street", line_two: "", city: "Austin", state: "TX", zip: "78755")
address = Address.find_or_create_by(line_one: "123 38th Street", line_two: "", city: "Austin", state: "TX", zip: "78752")
address = Address.find_or_create_by(line_one: "123 Quick Hill Street", line_two: "", city: "Austin", state: "TX", zip: "78706")


provider = Provider.find_or_create_by(name: 'DrStrange', specialty: 'arcanology', npi: '12345', address_id: 1)
provider = Provider.find_or_create_by(name: 'DrJones', specialty: 'archeology', npi: '23456', address_id: 2)
provider = Provider.find_or_create_by(name: 'DrWho', specialty: 'tardisology', npi: '34567', address_id: 3)
provider = Provider.find_or_create_by(name: 'DrHouse', specialty: 'sarcasmology', npi: '45678', address_id: 4)
provider = Provider.find_or_create_by(name: 'DrMcCoy', specialty: 'trekology', npi: '56789', address_id: 5)



patient = Patient.find_or_create_by(name: 'DaVinci', mpi: '00001', dob: 9000.days.ago, gender: '1', address_id: 6)
patient = Patient.find_or_create_by(name: 'Tesla', mpi: '00002', dob: 18450.days.ago, gender: '2', address_id: 7)
patient = Patient.find_or_create_by(name: 'Einstien', mpi: '00003', dob: 15067.days.ago, gender: '2', address_id: 8)
patient = Patient.find_or_create_by(name: 'Oppenheimer', mpi: '00004', dob: 6789.days.ago, gender: '1', address_id: 9)
patient = Patient.find_or_create_by(name: 'Newton', mpi: '0005', dob: 13456.days.ago, gender: '2', address_id: 10)


Shift.find_or_create_by(start_time: Time.now, end_time: Time.now + 1.hour, date: Date.new, provider_id: provider.id)




