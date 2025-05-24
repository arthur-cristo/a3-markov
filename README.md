# Simulação de Cadeia de Markov - Controle de Pragas em Lavoura
# ---------------------------------------------------------------
#
# Este projeto simula a evolução do nível de pragas em uma lavoura
# ao longo de vários dias, utilizando Cadeias de Markov com três estados:
# Baixo, Médio e Alto nível de infestação.
#
# -------------------------------
# SOBRE O PROJETO
# -------------------------------
# O programa parte de um estado inicial informado pelo usuário e
# aplica uma matriz de transição para prever a probabilidade de 
# ocorrência de cada estado após vários dias.
#
# -------------------------------
# COMO RODAR O CÓDIGO
# -------------------------------
# Requisitos:
#   - Julia (versão mais recente recomendada)
#
# Passos:
#   1. Clonar o repositório:
#      git clone https://github.com/usuario/nome-do-repositorio.git
#      cd nome-do-repositorio
#
#   2. Executar o código com Julia:
#      julia markov4.jl
#
#   3. Inserir os dados:
#      - Estado inicial das pragas (1: Baixo, 2: Médio, 3: Alto)
#      - Número de dias para simular
#
# -------------------------------
# EXEMPLO DE RESULTADO
# -------------------------------
# Para entrada: estado inicial = 1 (baixo), dias = 5
# Saída esperada:
#   Baixo: 40.25%
#   Médio: 35.42%
#   Alto : 24.33%
