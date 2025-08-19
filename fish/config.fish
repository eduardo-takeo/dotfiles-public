set fish_greeting ""

fish_add_path /opt/homebrew/bin/

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# source /opt/homebrew/opt/asdf/libexec/asdf.fish

string match -q "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)
