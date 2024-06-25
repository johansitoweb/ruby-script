require 'fileutils'

def create_folder
print "Ingresa el nombre de la carpeta a crear: "
folder_name = gets.chomp

desktop_path = File.expand_path("~/Desktop")
new_folder_path = File.join(desktop_path, folder_name)

if File.exist?(new_folder_path)
puts "¡La carpeta '#{folder_name}' ya existe en el escritorio!"
else
FileUtils.mkdir_p(new_folder_path)
puts "¡Carpeta '#{folder_name}' creada en el escritorio!"
end
end

def delete_folder
print "Ingresa el nombre de la carpeta a eliminar: "
folder_name = gets.chomp

desktop_path = File.expand_path("~/Desktop")
folder_path = File.join(desktop_path, folder_name)

if File.exist?(folder_path)
FileUtils.rm_rf(folder_path)
puts "¡Carpeta '#{folder_name}' eliminada del escritorio!"
else
puts "¡La carpeta '#{folder_name}' no existe en el escritorio!"
end
end

loop do
puts "Elige una opción:"
puts "1. Crear carpeta en el escritorio"
puts "2. Eliminar carpeta del escritorio"
puts "3. Salir"

choice = gets.chomp.to_i

case choice
when 1
create_folder
when 2
delete_folder
when 3
puts "¡Hasta luego!"
break
else
puts "Opción inválida. Inténtalo de nuevo."
end

puts
end