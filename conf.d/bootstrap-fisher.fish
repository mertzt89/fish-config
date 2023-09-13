if not type -q fisher
  and not set -q fish_bootstrap_shell
  set -U fish_bootstrap_shell 1
  echo "Bootstrapping fisher..."
  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
  set -e fish_bootstrap_shell
end
