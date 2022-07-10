Config { font = "-misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*"
       , borderColor = "black"
       , border = TopB
       , bgColor = "black"
       , fgColor = "grey"
       , alpha = 255
       , position = TopW L 100
       , allDesktops = True
       , overrideRedirect = True
       , commands = [
                      -- Run Network "wlp1s0b1" ["-L","0","-H","32", "--normal","green","--high","red"] 10
                      Run Network "wlp1s0b1" ["--template", "Net: <tx>kB|<rx>kB", "-L","1000","-H","5000", "--low", "gray", "--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50", "--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Date "%a %Y-%m-%d %H:%M:%S" "date" 10
                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %memory% | %wlp1s0b1% <fc=#ee9a00>%date%</fc>" }
