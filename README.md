# Flux editor

## Sobre

Esse projeto surgiu como um projeto para aprender lua, uma linguagem brasileira e usada no projeto neovim, durante uma greve da minha faculdade.

---

## Instalação

### A partir da fonte

#### Requisitos

- lua
- love (game engine usada para a parte grafica do editor)

#### Execução

Clone o projeto para sua máquina
```
git clone https://github.com/yygrasil/flux-editor.git
cd flux-editor
```

A partir disso será possível usar o comando love para compilar, no momento o nome do arquivo tem que ser oferecido pela linha de comando usando argumentos
Exemplo:

```
love src _filename_
```

## Planos para o futuro

O projeto está ainda nem nas suas fases inicias ainda, mas planejo implementar um mini neovim, mas de modo gráfica, alem de usar o terminal para renderizar o texto

- armazenamento dos dados na memoria usando piece table (pelo que pesquisei é umas das melhores estruturas de dados para texto, usando no word desde dos decada 20)
- funcionalidade de undo e redo
- sintaxe colorida para código (pensando primeiramente para a linguagem lua)
