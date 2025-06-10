function simular_cadeia_markov()
    println("Simulação de Cadeia de Markov - Controle de Pragas em Lavoura")

    # Entrada do número de estados
    print("Digite o número de estados (n): ")
    n = parse(Int, readline())

    # Entrada da matriz de transição
    matriz = zeros(Float64, n, n)
    println("Digite os valores da matriz de transição (linha por linha):")
    for i in 1:n
        while true
            print("Digite os valores da linha $i separados por espaço (devem somar 1): ")
            entrada = split(chomp(readline()))
            if length(entrada) != n
                println("Erro: você deve digitar exatamente $n valores.")
                continue
            end

            linha = parse.(Float64, entrada)
            if abs(sum(linha) - 1.0) > 1e-6
                println("Erro: os valores da linha devem somar 1.")
                continue
            end

            matriz[i, :] = linha
            break
        end
    end

    # Entrada do estado inicial
    print("Digite o estado inicial (de 1 até $n): ")
    estado_inicial = parse(Int, readline())

    # Vetor de estado inicial (1 na posição do estado inicial, 0 nas outras)
    vetor_estado = zeros(Float64, n)
    vetor_estado[estado_inicial] = 1.0

    # Número de dias
    print("Digite o número de dias para simular: ")
    dias = parse(Int, readline())

    # Simulação
    println("\nIniciando simulação...\n")
    println("Dia 0: ", round.(vetor_estado; digits=4))

    for dia in 1:dias
        vetor_estado = vetor_estado' * matriz  # Transposta para multiplicação correta
        vetor_estado = vec(vetor_estado)       # Converte para vetor 1D novamente
        println("Dia $dia: ", round.(vetor_estado; digits=4))
    end

    # Resultado final
    println("\nApós $dias dias, a distribuição de probabilidade dos estados é:")
    for i in 1:n
        println("Estado $i: ", round(vetor_estado[i] * 100; digits=2), "%")
    end
end

# Chamada da função principal
simular_cadeia_markov()