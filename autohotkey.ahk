; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;#z::Run www.autohotkey.com

;Ctrl   用^表示
;Alt    用!表示
;Shift  用+表示
;Win    用#表示
;空格键 用space表示

;#NoTrayIcon
#SingleInstance force

app_path=D:\app
commander_path=%app_path%\TotalCMD_9_12
warez_path=d:\ware

#4::WinSet, AlwaysOnTop, toggle, A
#7::Run, %commander_path%\Tools\Everything.exe
#0::Run, %app_path%\SysinternalsSuite\procexp64.exe

#F1::Run, D:\Wares\Xilinx\Vivado\2018.3\bin\unwrapped\win64.o\vvgl.exe D:\Wares\Xilinx\Vivado\2018.3\bin\vivado.bat
#F2::Run, C:\Program Files (x86)\JetBrains\PyCharm Community Edition 4.5.3\bin\pycharm.exe
#F7::Run, "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
#!F7::Run, "C:\Program Files\Microsoft Office\root\Office16\winword.exe" "d:\personal\work\MyWorksBlog_jmyhost@Huawei.docm"
#!F8::Run, "C:\Program Files\Microsoft Office\root\Office16\excel.exe" "d:\personal\work\work_issues.xlsx"
#F9::Run, "c:\octave-4.2.0-w32\octave.bat", d:\Work\work_matlab\octave-workspacerr
#!F9::Run, "%app_path%\MATLAB53\bin\matlab.exe", d:\Work\work_matlab\octave-workspace
#F10::Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
#F12::Run, C:\Windows\System32\mstsc.exe /v:"shahost.lhf.inhuawei.com"

#A::Run, %windir%\System32\cmd.exe "/K" C:\ProgramData\Anaconda3\Scripts\activate.bat C:\ProgramData\Anaconda3, C:\Users\l00401409
#B::Run, "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
;#C::Run, "C:\Python27\Scripts\ipython.exe" --pylab
;#!C::Run, "C:\Program Files (x86)\pythonxy\console\Console.exe" -t "IPython (Qt)"
#!C::Run, "%warez_path%\anaconda3\Scripts\ipython.exe" --pylab
#C::Run, "%warez_path%\anaconda3\python.exe"
;#!C::Run, "%app_path%\min_math\MATH.EXE", %app_path%\min_math
^#!C::Run, "x:\App\Mathematica41\Mathematica.exe", "x:\App\Mathematica41"
#E::Run, %app_path%\TotalCMD_9_12\Totalcmd.exe /I=".\wincmd.ini" /F=".\wcx_ftp.ini"
#!E::Run, c:\Program Files (x86)\totalcmd\TOTALCMD.EXE /I=".\wincmd.ini" /F=".\wcx_ftp.ini"
#F::Run, %app_path%\FreeMind\FreeMind.exe
#G::Run, "d:\Wares\anaconda3\Scripts\ipython.exe" -i "d:\Work\work_py\test\thoth\i2c_debugger_py\dujuan_dw9786_debugger.py" --pylab
#H::Run, "%app_path%\HyperSnap 6\HprSnap6.exe"
#I::Run, "%app_path%\vim\vim81\gvim.exe"
#K::WinKill, A
#N::Run, %app_path%\TotalCMD_9_12\Tools\Notepad2.exe
#O::Run, notepad.exe autohotkey.ahk
#P::Run, "%app_path%\UltraEdit\UEDIT32.EXE"
#R::Reload
#S::Run, "C:\ProgramData\Anaconda3\pythonw.exe" "C:\ProgramData\Anaconda3\Scripts\spyder-script.py"
;#W::Run, "d:\Program Files\myBase_Desktop_6.20绿色版\nyfedit.exe"
#W::Run, "C:\Program Files (x86)\Wiz\wiz.exe" /NoWizAccount
#X::WinMinimizeAll
;#Y::								; copy windows title text to clipboard
;WinGetTitle, Title, A
;Clipboard := Title
;Return
;#W::WinSet, Transparent, 100, A
;#!W::WinSet, Transparent, 255, A


#!Left::Winmove,A,,0,0,A_ScreenWidth/2,A_ScreenHeight-30
#!Right::Winmove,A,,A_ScreenWidth/2,0,A_ScreenWidth/2,A_ScreenHeight-30
#!Up::Winmove,A,,0,0,A_ScreenWidth,(A_ScreenHeight-30)/2
#!Down::Winmove,A,,0,(A_ScreenHeight-30)/2,A_ScreenWidth,(A_ScreenHeight-30)/2

#!D::
FormatTime, TimeString,, yyyy-MM-dd
Send, %TimeString%
Return

#!F10::
Send, ^f
Return
#^v::
; 将剪贴板中的路径中的反斜杠字符替换成正斜杠
str_t := RegExReplace(clipboard, "\\", "/")      ; clipboard是内置变量, 直接使用
Send, %str_t%
Return
