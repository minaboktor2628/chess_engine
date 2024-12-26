# Chess Engine

By Mina Boktor

## Table Of Contents

- [Features](#features)
- [Compiling](#compiling)
- [Usage](#usage)

## Features

- Uses makefile to compile all C/C++ code for you

## Compiling

There is an included makefile with this project.

Run:

```sh
make
```

to compile the program.

To clean artifacts and chess_engine, run:

```sh
make clean
```

To clean just the artifacts, but keep chess_engine, run:

```sh
make clean-obj
```

You can also specify the name of the chess_engine target when running `make` by running:

```sh
make TARGET=my_chess_engine
```

You can can also dynamically make a debugging version of your chess_engine when running `make` by running:

```sh
make DEBUG
```

or

```sh
make DEBUG=1
```

for short.

## Usage

```sh
./chess_engine <arg>
```

where

- `<arg>` is a command line argument

### Example

```bash
./chess_engine cool_file.txt
```
