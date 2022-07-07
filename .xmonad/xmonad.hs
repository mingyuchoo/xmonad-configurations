import Data.Monoid
import Data.Ratio
import System.Exit
import System.IO
import XMonad
import XMonad.Actions.WorkspaceNames
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Gaps
import XMonad.Layout.Grid
import XMonad.Layout.Spacing
import XMonad.Layout.Spiral
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myTerminal    = "xterm"
myModMask     = mod4Mask
myWorkspaces  = ["1","2","3","4","5","6","7","8","9"]

myBorderWidth        = 5
myNormalBorderColor  = "#dddddd"
myFocusedBorderColor = "#ff0000"

myEventHook   = mempty
myLogHook     = return ()
myStartupHook = return ()
myLayoutHook  = spacing 10 $
                        Tall 1 (3/100) (1/2)          |||
                        spiral (125 % 146)            |||
                        Grid                          |||
                        Mirror (Tall 1 (3/100) (3/5)) |||
                        Full



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

main :: IO ()
main = xmonad defaults
