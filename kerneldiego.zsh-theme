# author: https://github.com/KernelDiego
# repo: https://github.com/KernelDiego/kerneldiego-zsh-theme

RESET="%f"
BLUE="%{$fg[blue]%}"
RED="%{$fg[red]%}"
CYAN="%{$fg[cyan]%}"
GREEN="%{$fg[green]%}"
MAGENTA="%{$fg[magenta]%}"
YELLOW="%{$fg[yellow]%}"

SEP="${CYAN}"

HBAR="${SEP}─${RESET}"
OPEN="${SEP}[${RESET}"
CLOSE="${SEP}]${RESET}"
CORNER_UL="${SEP}┌${RESET}"
CORNER_UR="${SEP}┐${RESET}"
CORNER_LL="${SEP}└${RESET}"
CORNER_LR="${SEP}┘${RESET}"
FLICK="${SEP}➤${RESET}"

git_current_branch() {
  git symbolic-ref --short HEAD 2>/dev/null
}

git_short_sha() {
  git rev-parse --short HEAD 2>/dev/null
}

git_diff_summary() {
  local line line_status
  local added=0 modified=0 deleted=0 renamed=0 unmerged=0 untracked=0

  git rev-parse --is-inside-work-tree >/dev/null 2>&1 || return

  while IFS= read -r line; do
    line_status="${line:0:2}"
    case "$line_status" in
      A*|*A) ((added++)) ;;
      M*|*M) ((modified++)) ;;
      D*|*D) ((deleted++)) ;;
      R*|*R) ((renamed++)) ;;
      U*|*U) ((unmerged++)) ;;
      \?\?) ((untracked++)) ;;
    esac
  done < <(git status --porcelain 2>/dev/null)

  local segments=()
  local RED='%F{red}' GREEN='%F{green}' YELLOW='%F{yellow}'
  local BLUE='%F{blue}' MAGENTA='%F{magenta}' CYAN='%F{cyan}' RESET='%f'

  [[ $added -gt 0 ]]     && segments+=("${GREEN}+A$added${RESET}")
  [[ $modified -gt 0 ]]  && segments+=("${YELLOW}~M$modified${RESET}")
  [[ $deleted -gt 0 ]]   && segments+=("${RED}-D$deleted${RESET}")
  [[ $renamed -gt 0 ]]   && segments+=("${BLUE}R$renamed${RESET}")
  [[ $unmerged -gt 0 ]]  && segments+=("${MAGENTA}U$unmerged${RESET}")
  [[ $untracked -gt 0 ]] && segments+=("${CYAN}?$untracked${RESET}")

  if [[ ${#segments[@]} -gt 0 ]]; then
    echo "${(j: :)segments}"
  fi
}

git_info() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    local branch="${RED}$(git_current_branch)${RESET}"
    local sha="${BLUE}$(git_short_sha)${RESET}"
    local summary="$(git_diff_summary)"
    echo "${OPEN}${branch} ${sha} ${summary}${CLOSE}"
  fi
}

name() {
	echo "${OPEN}${MAGENTA}%n${CLOSE}${RESET}"
}

dir() {
	echo "${OPEN}${YELLOW}%~${CLOSE}${RESET}"
}

PROMPT='${CYAN}${CORNER_UL}$(name)${HBAR}$(dir)${HBAR}$(git_info)
${CORNER_LL}${FLICK}${RESET} '

