# Hello World em Assembly

Este projeto é um programa "Hello World" básico escrito em linguagem Assembly.

## Especificações Técnicas

*   **Sintaxe:** AT&T
*   **Arquitetura:** x86_64 (Processadores 64-bits)

## Dependências

Para compilar e rodar este projeto, você precisará ter as seguintes ferramentas instaladas em seu sistema Linux:

*   **`as` (GNU Assembler):** É a ferramenta que irá montar (traduzir) nosso código em linguagem assembly para código de máquina (arquivo objeto). Geralmente, o `as` não é instalado sozinho, ele faz parte de um pacote essencial do sistema chamado **`binutils`**. Na maioria das distribuições Linux, ele já vem por padrão, mas se você não tiver:
    *   No Arch Linux: `sudo pacman -S binutils`
    *   No Ubuntu/Debian: `sudo apt install binutils`

*   **`gcc` (GNU Compiler Collection):** Nós usamos o `gcc` neste caso específico como "linker" (ligador) para agrupar as peças do nosso código objeto e criar o arquivo executável final.
    *   No Arch Linux: `sudo pacman -S gcc` (ou instalando pelo grupo `base-devel`: `sudo pacman -S base-devel`)
    *   No Ubuntu/Debian: `sudo apt install gcc` (ou instalando pelo `build-essential`: `sudo apt install build-essential`)

## Como Compilar e Executar

Siga os comandos abaixo na ordem para compilar e executar o seu programa:

1.  **Montar o código:**
    Transforma o código fonte fonte `hello_world.s` em um arquivo objeto `hello_world.o`.
    ```bash
    as hello_world.s -o hello_world.o
    ```

2.  **Ligar e compilar as peças:**
    Pega nosso arquivo objeto e o transforma no executável `hello_world`. Usamos a flag `-nostdlib` para dizer ao GCC para não tentar conectar o nosso código com as bibliotecas padrão da linguagem C, já que fizemos tudo manualmente e diretamente para o sistema através da nossa arquitetura x86_64.
    ```bash
    gcc -o hello_world hello_world.o -nostdlib
    ```

3.  **Executar o programa:**
    Roda o arquivo executável que acabamos de gerar.
    ```bash
    ./hello_world
    ```
