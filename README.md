# Freeway



Projeto inspirado no clássico jogo **Freeway**, onde o objetivo é atravessar a rua desviando dos carros sem ser atropelado.

## 📋 Descrição

Este projeto foi desenvolvido utilizando a engine **Godot**, aplicando conceitos de UX para aprimorar a experiência do jogador. Foram feitas melhorias e balanceamentos para proporcionar uma jogabilidade mais justa e estratégica.

## 🚀 Tecnologias Utilizadas

As seguintes tecnologias foram utilizadas no desenvolvimento do projeto:

- **Godot Engine** - Desenvolvimento do jogo
- **GDScript** - Lógica e mecânicas
- **Sprites em 2D** - Elementos gráficos

## 📂 Estrutura do Projeto

```
Freeway/
├── assets/
│   ├── images/
│   ├── sounds/
│   └── fonts/
├── scenes/
│   ├── main.tscn
│   ├── player.tscn
│   └── cars.tscn
├── scripts/
│   ├── player.gd
│   ├── cars.gd
│   └── game.gd
├── README.md
├── LICENSE
└── project.godot
```

## ⚙️ Melhorias Implementadas

- **Movimentação lateral:** Agora os jogadores podem se mover para os lados, eliminando a vantagem do jogador 2, que começava do lado direito da tela.
- **Diferenciação visual:** Foram criadas cores distintas para cada jogador, evitando confusão durante a partida.
- **Novas animações:** Com a movimentação lateral, foram criadas novas animações para melhor fluidez do jogo.
- **Sistema de vidas:** Para tornar o jogo mais estratégico, cada jogador tem um contador de vidas, incentivando a tomada de decisões cuidadosas.
- **Cronômetro de tempo:** Evita que jogadores fiquem parados travando o jogo; ao final do tempo, quem tiver menos pontos perde.

## 🕹️ Como Jogar

1. O **Player 1** movimenta-se pelas teclas **A, W, D, S**.
2. O **Player 2** movimenta-se pelas **setas do teclado**.
3. Atravesse a rua sem ser atropelado para ganhar pontos.
4. Fique atento ao contador de vidas e ao tempo para desenvolver sua estratégia.
5. O jogador com mais pontos ao final do tempo vence.

## 🛠 Como Executar o Projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/LucasDamasioDias/Freeway.git
   ```
2. Abra o projeto na Godot Engine.
3. Execute a cena principal `main.tscn`.

##

## 👥 Desenvolvido Por

- [Lucas Damasio Dias](https://github.com/LucasDamasioDias)

---

Divirta-se jogando **Freeway** e aproveite para explorar o código e aprender mais sobre desenvolvimento de jogos na Godot Engine!

