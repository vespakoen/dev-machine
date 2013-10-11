import XMonad
import XMonad.Util.Run (spawnPipe,hPutStrLn)
import XMonad.Config.Desktop
import XMonad.Layout.Tabbed
import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Layout.NoBorders
import XMonad.Layout.MouseResizableTile
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import System.IO
import XMonad.Util.Loggers
import XMonad.StackSet as W (focusUp, focusDown, sink)
import XMonad.Hooks.EwmhDesktops

myManageHook = composeAll [ manageHook defaultConfig
    , className =? "Unity-2d-panel" --> doIgnore
    , className =? "Unity-2d-launcher" --> doFloat
    , className =? "Gimp" --> doFloat
    , manageDocks
    ]

myLayoutHook = mouseResizableTile { masterFrac = ratio, fracIncrement = delta, nmaster = mynmaster, draggerType = BordersDragger } ||| mouseResizableTileMirrored { masterFrac = ratio, fracIncrement = delta, nmaster = mynmaster, draggerType = BordersDragger } ||| noBorders Full
  where
     -- The default number of windows in the master pane
     mynmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 5/10

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

selected   = "'#f4d359'"
background = "'#313437'"
foreground = "'#ffffff'"
selectedForeground = "'#313437'"
-- height matches Ubuntu top Gnome panel
barHeight = "24"

appFontXft = "'xft\
                \:Sans\
                \:pixelsize=14\
                \:weight=regular\
                \:width=semicondensed\
                \:dpi=96\
                \:hinting=true\
                \:hintstyle=hintslight\
                \:antialias=true\
                \:rgba=rgb\
                \:lcdfilter=lcdlight\
             \'"

myDmenuTitleBar =
    "exec `dmenu_path | dmenu\
        \ -i\
        \ -nb " ++ background ++ "\
        \ -nf " ++ foreground ++ "\
        \ -sb " ++ selected   ++ "\
        \ -sf " ++ selectedForeground   ++ "\
        \ -fn " ++ appFontXft ++ "\
    \`"


main = xmonad $ ewmh defaultConfig {
           layoutHook = myLayoutHook,
           manageHook = myManageHook,
           borderWidth = 6,
           focusFollowsMouse = True,
--           normalBorderColor = "#EBEEF7",
	   normalBorderColor = "#c0c0c0",
           focusedBorderColor = "#f4d359"
        }
         -- add a screenshot key to the default desktop bindings
        `additionalKeys` [
            ((mod1Mask,               xK_i), sendMessage ShrinkSlave) -- %! Shrink a slave area
            , ((mod1Mask,               xK_o), sendMessage ExpandSlave) -- %! Expand a slave area
            , ((mod1Mask,               xK_k     ), windows W.focusDown) -- %! Move focus to the next window
            , ((mod1Mask,               xK_j     ), windows W.focusUp) -- %! Move focus to the previous window
	    , ((mod1Mask              , xK_p ), spawn myDmenuTitleBar)
        ]
-- descr <- gets $ description . W.layout . W.workspace . W.current . windows
