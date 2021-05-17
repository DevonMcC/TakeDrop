@echo off
Rem t10.bat: tail 10 - show 10 most recent entries in current directory.
Rem dir /od %* | take -12 1 -
Rem Last 2 lines are summaries...
SETLOCAL
if NOT /%1/==// goto L_SetArg
set ARG="*.*"
goto L_DoIt

:L_SetArg
set ARG=%1

:L_DoIt
dir /od %ARG% | drop -2 1 - | perl -e "while (<>) {unless (/\<DIR\>/) { print $_}}" | take -10 1 -
Rem dir /od %ARG% | tail -14 | head -10
Rem dir /od | grep -v "<DIR>" | take.pl - -11 | take.pl - 10
ENDLOCAL
