# gold

A Spring Boot project.

## Prerequisites

- [mise](https://mise.jdx.dev/) for toolchain and task execution
- [Docker](https://www.docker.com/) for container-based workflows
  (including image builds and Testcontainers)

## Environment Management with mise

`mise` manages this project's development environment from `mise.toml`:

- Tool versions (for example Java and `hk`) are pinned and installed
  consistently.
- Task commands are centralized so everyone uses the same build/test commands.
- Git hook setup is automated when entering the project environment.

## Install and Set Up mise

1. Install `mise` (see the official install options):
   <https://mise.jdx.dev/getting-started.html>
2. Enable shell activation for your shell (for example `zsh`) so `mise`
   is active in your terminal.
3. In this project directory, trust and install configured tools:

```bash
mise trust
mise install
```

When entering the environment, the `mise.toml` `enter` hook checks for the
Git hook setup and runs `hk install --mise` automatically if it is missing.

## Build Tasks

Build tasks are maintained in `mise.toml`.

Use `mise tasks` to see available tasks, and run them with:

```bash
mise run <task-name>
```
