﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\LISTBOX_SetString.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LISTBOX_SetString
EXTRN	_LISTBOX__InvalidateItem:PROC
EXTRN	_LISTBOX_UpdateScrollers:PROC
EXTRN	_LISTBOX__InvalidateItemSize:PROC
EXTRN	_strcpy:PROC
EXTRN	_GUI_ARRAY_ResizeItemLocked:PROC
EXTRN	_strlen:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_LISTBOX__GetNumItems:PROC
EXTRN	_LISTBOX_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\listbox_setstring.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _LISTBOX_SetString
_TEXT	SEGMENT
_pItem$11427 = -44					; size = 4
_ItemArray$11426 = -32					; size = 4
_NumItems$11425 = -20					; size = 4
_pObj$11424 = -8					; size = 4
_hObj$ = 8						; size = 4
_s$ = 12						; size = 4
_Index$ = 16						; size = 4
_LISTBOX_SetString PROC					; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 60					; 0000003cH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 41
	cmp	DWORD PTR _hObj$[ebp], 0
	je	$LN4@LISTBOX_Se
; Line 48
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11424[ebp], eax
; Line 49
	mov	eax, DWORD PTR _pObj$11424[ebp]
	push	eax
	call	_LISTBOX__GetNumItems
	add	esp, 4
	mov	DWORD PTR _NumItems$11425[ebp], eax
; Line 50
	mov	eax, DWORD PTR _pObj$11424[ebp]
	mov	ecx, DWORD PTR [eax+56]
	mov	DWORD PTR _ItemArray$11426[ebp], ecx
; Line 51
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11424[ebp], 0
; Line 52
	mov	eax, DWORD PTR _Index$[ebp]
	cmp	eax, DWORD PTR _NumItems$11425[ebp]
	jae	$LN4@LISTBOX_Se
; Line 53
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	add	eax, 12					; 0000000cH
	push	eax
	mov	ecx, DWORD PTR _Index$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ItemArray$11426[ebp]
	push	edx
	call	_GUI_ARRAY_ResizeItemLocked
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _pItem$11427[ebp], eax
; Line 54
	cmp	DWORD PTR _pItem$11427[ebp], 0
	je	SHORT $LN4@LISTBOX_Se
; Line 55
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pItem$11427[ebp]
	add	ecx, 9
	push	ecx
	call	_strcpy
	add	esp, 8
; Line 56
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pItem$11427[ebp], 0
; Line 57
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11424[ebp], eax
; Line 58
	xor	eax, eax
	mov	ecx, DWORD PTR _pObj$11424[ebp]
	mov	WORD PTR [ecx+158], ax
; Line 59
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$11424[ebp]
	push	ecx
	call	_LISTBOX__InvalidateItemSize
	add	esp, 8
; Line 60
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11424[ebp], 0
; Line 61
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX_UpdateScrollers
	add	esp, 4
; Line 62
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_LISTBOX__InvalidateItem
	add	esp, 8
$LN4@LISTBOX_Se:
; Line 67
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_LISTBOX_SetString ENDP
_TEXT	ENDS
END