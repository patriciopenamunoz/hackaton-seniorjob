
User.create(
name: 'Bastian',
email: 'bastian@bastian.com',
password: 123456,
age: 22,
rut: "222",
cellphone: 222222,
role: 0
 )
puts "usuario creado"


12.times do |i|
  Job.create!(title: "hola",
    description: "hola",
    schedule: "hola",
    tag: "hola",
    rent: 555555
  )
end
puts "tarea creada"
