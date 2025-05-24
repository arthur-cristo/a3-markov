println("Simulação de Cadeia de Markov - Controle de Pragas em Lavoura")

# Definição dos estados:
# Estado 1: Baixo nível de pragas
# Estado 2: Médio nível de pragas
# Estado 3: Alto nível de pragas

# Matriz de transição (P):
P = [
    0.7  0.2  0.1;   # De BAIXO
    0.3  0.4  0.3;   # De MÉDIO
    0.1  0.3  0.6    # De ALTO
]

# Input: Estado inicial
println("\nDigite o estado inicial das pragas (1: Baixo, 2: Médio, 3: Alto):")
estado_inicial = parse(Int, readline())

# Criar vetor de estado inicial como vetor linha
x = [0.0 0.0 0.0] # 1x3
x[estado_inicial] = 1.0

# Input: número de dias
println("Digite o número de dias para simular:")
dias = parse(Int, readline())

println("\nIniciando simulação...\n")
for i in 0:dias
    println("Dia $i: ", round.(x, digits=4))
    global x = x * P
end

# Resultado final
println("\nApós $dias dias, a distribuição de probabilidade dos estados é:")
println("Baixo: $(round(x[1]*100, digits=2))%")
println("Médio: $(round(x[2]*100, digits=2))%")
println("Alto : $(round(x[3]*100, digits=2))%")
