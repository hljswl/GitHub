﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\LISTBOX_SetOwner.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LISTBOX_SetOwner
EXTRN	_LISTBOX__InvalidateInsideArea:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_LISTBOX_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\listbox_setowner.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _LISTBOX_SetOwner
_TEXT	SEGMENT
_pObj$10597 = -8					; size = 4
_hObj$ = 8						; size = 4
_hOwner$ = 12						; size = 4
_LISTBOX_SetOwner PROC					; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 41
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@LISTBOX_Se
; Line 44
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$10597[ebp], eax
; Line 45
	mov	eax, DWORD PTR _pObj$10597[ebp]
	mov	ecx, DWORD PTR _hOwner$[ebp]
	mov	DWORD PTR [eax+144], ecx
; Line 46
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$10597[ebp], 0
; Line 47
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX__InvalidateInsideArea
	add	esp, 4
$LN2@LISTBOX_Se:
; Line 50
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_LISTBOX_SetOwner ENDP
_TEXT	ENDS
END