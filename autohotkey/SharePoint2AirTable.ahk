#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; SharePoint Loop Program for Parkland Data
; Note you must be logged into AirTable & into SharePoint already.

^!j::

Loop, 2
{
  ; Click on Run
  Send, ^`n
  Sleep, 500
  ; Click on Choose File
  Click, 1395 351
  Sleep, 500
  ; Right Click on 1st File in Workflow
  Click, 274 168
  Sleep, 500
  ; Click Cut
  Send, ^x
  Sleep, 500
  ; Click Completed Folder
  Click, 254 141 Right
  Sleep, 500
  ; Click Paste
  Click, 318 659
  Sleep, 500
  ; Click on 1st File in Workflow
  Click, 274 168
  Send, !o
  Sleep, 500
  ; Click Yes
  Click, 1362 428
  Sleep, 10000
}

Return
