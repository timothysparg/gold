# gold

A Spring Boot project.

## Quick Start

```bash
git clone <repo-url>
cd gold
mise trust
mise install
mise build
```

![Quickstart Demo](docs/tapes/demo-quickstart.gif)

## Prerequisites

- [mise](https://mise.jdx.dev/) for toolchain and task execution
- [1Password CLI (`op`)](https://developer.1password.com/docs/cli/) for
  secret retrieval used by `fnox`
- [Docker](https://www.docker.com/) for container-based workflows
  (including image builds and Testcontainers)

## Environment Management with mise

`mise` manages this project's development environment from `mise.toml`:

- Tool versions (for example Java and `hk`) are pinned and installed
  consistently.
- Task commands are centralized so everyone uses the same build/test commands.
- Git hook setup is automated when entering the project environment.

## Secrets with fnox

`fnox` is configured in `fnox.toml` and used with `mise` to load secret-backed
environment variables into your shell.

- `DB_USERNAME`
- `DATABASE_PASSWORD`

These values are consumed by `compose.yaml` for
`POSTGRES_USER`/`POSTGRES_PASSWORD`.

![Quickstart Demo](docs/tapes/demo-fnox-secrets.gif)

## Git Hooks and Linting with hk

> [!NOTE]
> `hk` manages this repository's Git hooks. With `mise` enabled, the
> `mise.toml` `enter` hook automatically runs `hk install --mise` when hook
> wiring is missing, keeping hooks in sync with `hk.pkl`.

`hk` runs the same check set for `pre-commit`, `pre-push`, `hk check`, and
`hk fix`:

- Merge-conflict and large-file safety checks
- Docker Compose linting via `dclint`
- Markdown linting
- Java formatting checks via `google-java-format`
- `mise` configuration checks
- Line ending/newline/trailing whitespace hygiene checks
- Pkl validation and formatting checks
- SQL linting via `sqlfluff`
- YAML formatting via `yamlfmt`

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
