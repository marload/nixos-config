{ pkgs }:
let
  available = [
    "$username"
    "$hostname"
    "$localip"
    "$shlvl"
    "$singularity"
    "$kubernetes"
    "$directory"
    "$vcsh"
    "$fossil_branch"
    "$git_branch"
    "$git_commit"
    "$git_state"
    "$git_metrics"
    "$git_status"
    "$hg_branch"
    "$pijul_channel"
    "$docker_context"
    "$package"
    "$c"
    "$cmake"
    "$cobol"
    "$daml"
    "$dart"
    "$deno"
    "$dotnet"
    "$elixir"
    "$elm"
    "$erlang"
    "$fennel"
    "$golang"
    "$guix_shell"
    "$haskell"
    "$haxe"
    "$helm"
    "$java"
    "$julia"
    "$kotlin"
    "$gradle"
    "$lua"
    "$nim"
    "$nodejs"
    "$ocaml"
    "$opa"
    "$perl"
    "$php"
    "$pulumi"
    "$purescript"
    "$python"
    "$raku"
    "$rlang"
    "$red"
    "$ruby"
    "$rust"
    "$scala"
    "$solidity"
    "$swift"
    "$terraform"
    "$vlang"
    "$vagrant"
    "$zig"
    "$buf"
    "$nix_shell"
    "$conda"
    "$meson"
    "$spack"
    "$memory_usage"
    "$aws"
    "$gcloud"
    "$openstack"
    "$azure"
    "$env_var"
    "$crystal"
    "$custom"
    "$sudo"
    "$cmd_duration"
    "$line_break"
    "$jobs"
    "$time"
    "$status"
    "$os"
    "$container"
    "$shell"
    "$character"
  ];
in
with pkgs; {
  remove = { to_remove }: lib.strings.concatStrings (lib.lists.subtractLists to_remove available);
}
