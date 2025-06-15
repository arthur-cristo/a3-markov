# Simulação de Cadeia de Markov - Controle de Pragas em Lavoura

Este projeto simula a evolução do nível de pragas em uma lavoura ao longo de vários dias, utilizando **Cadeias de Markov** com três estados: **Baixo**, **Médio** e **Alto** nível de infestação.

## Sobre o Projeto

O programa parte de um **estado inicial informado pelo usuário** e aplica uma **matriz de transição** para prever a probabilidade de ocorrência de cada estado após um determinado número de dias.

##Link para DOC do Projeto
file:///C:/Users/kawan/Downloads/DOC%20PROJETO%20CADEIA%20EM%20JULIA.pdf

## Como Rodar o Código

### Requisitos
- [Julia](https://julialang.org/) (versão mais recente recomendada)

### 💻 Passos

1. **Clonar o repositório:**
   ```bash
   git clone https://github.com/usuario/nome-do-repositorio.git
   cd nome-do-repositorio

2. **Executar o código com Julia:**

   ```bash
   julia markov4.jl
   ```

3. **Inserir os dados solicitados:**

   * Estado inicial das pragas:

     * `1` → Baixo
     * `2` → Médio
     * `3` → Alto
   * Número de dias para simular

## Exemplo de Resultado

Para a entrada:

* Estado inicial = `1` (Baixo)
* Dias = `5`

A saída será algo como:

```
Baixo: 40.25%
Médio: 35.42%
Alto : 24.33%
```
