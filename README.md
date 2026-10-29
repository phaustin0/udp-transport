# UDP Transport

This project is a small C-based UDP client and server application. I am building it to learn the practical foundations of computer networks and program-to-program communication.

Rather than only studying networking concepts in theory, this project will show how two separate programs can communicate by sending data across a network. The client will create and send messages, while the server will listen for incoming messages and respond when needed.

The project starts with a basic build system and separate client/server programs. In later milestones, it will introduce UDP sockets, IP addresses, port numbers, datagrams, and simple message handling.

## Learning goals

This project is intended to help me understand:

- How a client and server have different roles in a networked application
- How programs use IP addresses and port numbers to find each other
- How a socket acts as an endpoint for network communication
- How UDP sends individual packets of data, called datagrams
- How UDP differs from TCP:
  - UDP does not establish a connection before sending data
  - UDP is lightweight and fast
  - UDP does not guarantee delivery, ordering, or duplicate protection
- How to handle incoming and outgoing data in C
- How to structure and build a small C project with `make`

## Requirements

- macOS with Homebrew LLVM installed, or Linux with GCC
- `make`

On macOS, the Makefile uses the Homebrew LLVM version of `clang`. On Linux, it uses `gcc`.

## Build

Build both the client and server:

```sh
make
```

Build only one program:

```sh
make client
make server
```

The compiled programs are created in the `build/` directory:

```text
build/client
build/server
```

## Run

After building, run each program from the project root:

```sh
./build/client
./build/server
```

At the current Milestone 0 stage, the client prints `Client` and the server prints `Server`. This confirms that the project structure and separate build targets are working.

Future milestones will replace these placeholder programs with actual UDP networking code. For example, the server will bind to a local port and wait for incoming datagrams, while the client will send a message to that port.

## Clean

Remove all generated build files:

```sh
make clean
```

This removes the `build/` directory. Source files are not affected.

## Project layout

```text
client/       Client source code
server/       Server source code
shared/       Code shared by the client and server
tests/        Test code
build/        Generated executables
Makefile      Build instructions
README.md     Project documentation
```

## Planned progression

1. Build separate client and server executables.
2. Create UDP sockets in both programs.
3. Bind the server to a local IP address and port.
4. Send a datagram from the client to the server.
5. Receive and display the message on the server.
6. Add replies, error handling, shared utilities, and tests.
