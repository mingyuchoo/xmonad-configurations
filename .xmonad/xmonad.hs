mport Data.Monoid
import Data.Ratio
import System.Exit
import System.IO
import XMonad
import XMonad.Actions.WorkspaceNames
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Gaps
import XMonad.Layout.Grid
import XMonad.Layout.Spacing
import XMonad.Layout.Spiral
import XMonad.Layout.ThreeColumns
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)


import qualified XMonad.StackSet as W
import qualified Data.Map        as M


main :: IO ()
main = do
  -- xmproc <- spawnPipe "$HOME/.fehbg"
  xmonad . ewmhFullscreen . ewmh =<< xmobar defaults


defaults = def { -- basic
                 terminal           = myTerminal
               , modMask            = myModMask
               , workspaces         = myWorkspaces
                 -- layouts
               , borderWidth        = myBorderWidth
               , normalBorderColor  = myNormalBorderColor
               , focusedBorderColor = myFocusedBorderColor
                 -- hooks
               , handleEventHook    = myEventHook
               , logHook            = myLogHook
               , startupHook        = myStartupHook
               , layoutHook         = myLayoutHook
               }
           `additionalKeysP` myAdditionalKeys


-- ModMask = mod1Mask: Left `Alt` key
--         | mod2Mask: Numblock `Num` key
--         | mod3Mask: Undefined
--         | mod4Mask: `Win` key, also called "Super key" in Linux
--         | mod5Mask: "ISO_Level3_Shift" key
myModMask     = mod1Mask

myTerminal    = "urxvt"
myWorkspaces  = ["1","2","3","4"]


myBorderWidth        = 2
myNormalBorderColor  = "#231955"
myFocusedBorderColor = "#E8AA42"


myEventHook   = mempty
myLogHook     = return ()
myStartupHook = return ()
myLayoutHook  = avoidStruts $ spacing 12 $ myLayout


myLayout = Grid ||| tiled ||| threeCol
  where
    threeCol = ThreeColMid nmaster delta ratio
    tiled    = Tall nmaster delta ratio
    nmaster  = 1     -- Detfault number of windows in the master pane
    ratio    = 1/3   -- Default proportion of screen occupied by master pane
    delta    = 3/100 -- Percent of screen to increment by when resizing paines


myAdditionalKeys = [ ("M-e", spawn "emacs")
                   , ("M-f", spawn "firefox")
                   , ("M-t", spawn "urxvt")
                   ]
