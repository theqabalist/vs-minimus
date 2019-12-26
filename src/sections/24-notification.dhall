-- https://code.visualstudio.com/api/references/theme-color#notification-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.notificationCenter (c.unset t.border)
    # s.notificationCenterHeader (c.unset t.foreground # c.unset t.background)
    # s.notificationToast (c.unset t.border)
    # s.notifications
        (c.unset t.foreground # c.unset t.background # c.unset t.border)
    # s.notificationLink (c.unset t.foreground)
    # s.notificationsErrorIcon (c.unset t.foreground)
    # s.notificationsWarningIcon (c.unset t.foreground)
    # s.notificationsInfoIcon (c.unset t.foreground)
