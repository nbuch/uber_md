add1 = Address.find_or_create_by(line_one: "123 Main Street", line_two: "", city: "Austin", state: "TX", zip: "78757")
add2 = Address.find_or_create_by(line_one: "123 Montrose Street", line_two: "", city: "Austin", state: "TX", zip: "78705")
add3 = Address.find_or_create_by(line_one: "123 Broadway Street", line_two: "", city: "Austin", state: "TX", zip: "78704")
add4 = Address.find_or_create_by(line_one: "123 Lariat Street", line_two: "", city: "Austin", state: "TX", zip: "78751")
add5 = Address.find_or_create_by(line_one: "123 Sin Salida Street", line_two: "", city: "Austin", state: "TX", zip: "78751")
add6 = Address.find_or_create_by(line_one: "123 Algarita Street", line_two: "", city: "Austin", state: "TX", zip: "78757")
add7 = Address.find_or_create_by(line_one: "123 Harmon Street", line_two: "", city: "Austin", state: "TX", zip: "78753")
add8 = Address.find_or_create_by(line_one: "123 Speedway Street", line_two: "", city: "Austin", state: "TX", zip: "78755")
add9 = Address.find_or_create_by(line_one: "123 38th Street", line_two: "", city: "Austin", state: "TX", zip: "78752")
add10 = Address.find_or_create_by(line_one: "123 Quick Hill Street", line_two: "", city: "Austin", state: "TX", zip: "78706")

male = Gender.find_or_create_by(sex: 'M')
female = Gender.find_or_create_by(sex: 'F')

pro1 = Provider.find_or_create_by(name: 'DrStrange', specialty: 'arcanology', npi: '12345', address_id: 1)
pro2 = Provider.find_or_create_by(name: 'DrJones', specialty: 'archeology', npi: '23456', address_id: 2)
pro3 = Provider.find_or_create_by(name: 'DrWho', specialty: 'tardisology', npi: '34567', address_id: 3)
pro4 = Provider.find_or_create_by(name: 'DrHouse', specialty: 'sarcasmology', npi: '45678', address_id: 4)
pro5 = Provider.find_or_create_by(name: 'DrMcCoy', specialty: 'trekology', npi: '56789', address_id: 5)

pat1 = Patient.find_or_create_by(name: 'DaVinci', mpi: '00001', dob: Date.new(1985, 9, 8), gender_id: male.id, address_id: 6)
pat2 = Patient.find_or_create_by(name: 'Tesla', mpi: '00002', dob: Date.new(1987, 2, 20), gender_id: female.id, address_id: 7)
pat3 = Patient.find_or_create_by(name: 'Einstien', mpi: '00003', dob: Date.new(1980, 2, 7), gender_id: male.id, address_id: 8)
pat4 = Patient.find_or_create_by(name: 'Oppenheimer', mpi: '00004', dob: Date.new(1952, 2, 23), gender_id: male.id, address_id: 9)
pat5 = Patient.find_or_create_by(name: 'Newton', mpi: '0005', dob: Date.new(1955, 1, 19), gender_id: female.id, address_id: 10)


pro1.shifts.find_or_create_by(start_time: DateTime.new(2017, 07, 04, 8, 0, 0), end_time: DateTime.new(2017, 07, 04, 17, 0, 0)) 

pat1.visits.find_or_create_by(provider_id: pro1.id, address_id: pat1.address.id, date: DateTime.new(2017, 07, 04, 10, 0, 0), duration: 45, reason: "herpes")







