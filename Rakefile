task :default => :tu

desc "Pruebas unitarias de la clase Complejo"
task :tu do
  sh "ruby -I. test/tc_complejo.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/tc_complejo.rb -n /simple/"
end

