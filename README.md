paternal/annales
================

A docker image with the necessary tools to fetch and compile the [archive of French mathematics exams](http://www.apmep.fr/-Annales-examens-concours-), gathered in [a git repository](https://framagit.org/lpaternault/annales-math). I would be surprised if this image was useful to anyone but me, but who knows?

## Available tools

- It is based on a [debian stretch](https://www.debian.org/releases/stretch/).
- The following tools are available:
  - [LaTeX](https://www.tug.org/texlive/) (and a lot of LaTeX packages and fonts);
  - [python3](https://packages.debian.org/stretch/python3);
  - [evariste](https://git.framasoft.org/spalax/evariste/);
  - [tox](https://tox.readthedocs.io).

## Usage

    sudo docker pull paternal/annales
    sudo docker run -i -t paternal/annales /bin/bash

