# Print
println("Hello, Julia!")

# Função
function greet(name::String)
    println("Hello, $name")
end
greet("World")

# Soma Básica
a = 10
b = 5
sum = a + b
println("$a + $b = $sum")

# Loop
for i in 1:5
    print("$i ")
end
println()

# Condicionais
x = rand()
if x > 0.5
    println("x > 0.5: $x")
else
    println("x < 0.5: $x")
end