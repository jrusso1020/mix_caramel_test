# MixCaramel

A mix plugin for compiling Caramel code!

## Installation

Install the Caramel compiler onto your machine. [Installation instructions can
be found here here](https://github.com/AbstractMachinesLab/caramel#getting-started).

Add `mix_caramel` to your mix project deps:

```elixir
# in mix.exs
def deps do
  [
    {:mix_caramel, "~> 0.1.0"},
  ]
end
```

Configure your mix project to add the Caramel compiler and to compile Erlang
that Caramel generates:

```elixir
# in mix.exs
def project do
  [
    # ...
    erlc_paths: ["src", "gen/src"],
    compilers: [:caramel | Mix.compilers()], # Caramel must go first
  ]
end
```

Make a `src` directory for your Caramel code to live in:

```
mkdir src
```

And add `gen` to your `.gitignore` so that the generated Erlang is not
included in your project.

