println("Simulação de Cadeia de Markov - Controle de Pragas em Lavoura")

# Input: número de estados (n)
println("\nDigite o número de estados (n):")
n = parse(Int, readline())

# Criar a matriz de transição P[n x n]
println("\nDigite os valores da matriz de transição (linha por linha):")
P = Array{Float64}(undef, n, n)
for i in 1:n
    println("Digite os valores da linha $i separados por espaço (devem somar 1):")
    linha = split(readline())
    for j in 1:n
        P[i, j] = parse(Float64, linha[j])
    end
end

# Verifica se cada linha soma aproximadamente 1
for i in 1:n
    soma = sum(P[i, :])
    if abs(soma - 1.0) > 1e-6
        println("Erro: A linha $i da matriz não soma 1 (soma = $soma). Finalizando.")
        exit()
    end
end

# Input: estado inicial
println("\nDigite o estado inicial (de 1 até $n):")
estado_inicial = parse(Int, readline())

# Criar vetor de estado inicial
x = zeros(Float64, 1, n)
x[1, estado_inicial] = 1.0

# Input: número de dias
println("Digite o número de dias para simular:")
dias = parse(Int, readline())

# Simulação
println("\nIniciando simulação...\n")
for i in 0:dias
    println("Dia $i: ", round.(x, digits=4))
    global x = x * P
end

# Resultado final
println("\nApós $dias dias, a distribuição de probabilidade dos estados é:")
for i in 1:n
    println("Estado $i: $(round(x[i]*100, digits=2))%")
end
