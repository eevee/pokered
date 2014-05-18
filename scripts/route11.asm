Route11Script: ; 5944c (16:544c)
	call EnableAutoTextBoxDrawing
	ld hl, Route11TrainerHeaders
	ld de, Route11ScriptPointers
	ld a, [W_ROUTE11CURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_ROUTE11CURSCRIPT], a
	ret

Route11ScriptPointers: ; 5945f (16:545f)
	dw CheckFightingMapTrainers
	dw Func_324c
	dw EndTrainerBattle

Route11TextPointers: ; 59465 (16:5465)
	dw Route11Text1
	dw Route11Text2
	dw Route11Text3
	dw Route11Text4
	dw Route11Text5
	dw Route11Text6
	dw Route11Text7
	dw Route11Text8
	dw Route11Text9
	dw Route11Text10
	dw Route11Text11

Route11TrainerHeaders: ; 5947b (16:547b)
Route11TrainerHeader0: ; 5947b (16:547b)
	db $1 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText1 ; 0x54fe TextBeforeBattle
	dw Route11AfterBattleText1 ; 0x5508 TextAfterBattle
	dw Route11EndBattleText1 ; 0x5503 TextEndBattle
	dw Route11EndBattleText1 ; 0x5503 TextEndBattle

Route11TrainerHeader1: ; 59487 (16:5487)
	db $2 ; flag's bit
	db ($2 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText2 ; 0x5517 TextBeforeBattle
	dw Route11AfterBattleText2 ; 0x5521 TextAfterBattle
	dw Route11EndBattleText2 ; 0x551c TextEndBattle
	dw Route11EndBattleText2 ; 0x551c TextEndBattle

Route11TrainerHeader2: ; 59493 (16:5493)
	db $3 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText3 ; 0x5530 TextBeforeBattle
	dw Route11AfterBattleText3 ; 0x553a TextAfterBattle
	dw Route11EndBattleText3 ; 0x5535 TextEndBattle
	dw Route11EndBattleText3 ; 0x5535 TextEndBattle

Route11TrainerHeader3: ; 5949f (16:549f)
	db $4 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText4 ; 0x5549 TextBeforeBattle
	dw Route11AfterBattleText4 ; 0x5553 TextAfterBattle
	dw Route11EndBattleText4 ; 0x554e TextEndBattle
	dw Route11EndBattleText4 ; 0x554e TextEndBattle

Route11TrainerHeader4: ; 594ab (16:54ab)
	db $5 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText5 ; 0x5562 TextBeforeBattle
	dw Route11AfterBattleText5 ; 0x556c TextAfterBattle
	dw Route11EndBattleText5 ; 0x5567 TextEndBattle
	dw Route11EndBattleText5 ; 0x5567 TextEndBattle

Route11TrainerHeader5: ; 594b7 (16:54b7)
	db $6 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText6 ; 0x557b TextBeforeBattle
	dw Route11AfterBattleText6 ; 0x5585 TextAfterBattle
	dw Route11EndBattleText6 ; 0x5580 TextEndBattle
	dw Route11EndBattleText6 ; 0x5580 TextEndBattle

Route11TrainerHeader6: ; 594c3 (16:54c3)
	db $7 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText7 ; 0x5594 TextBeforeBattle
	dw Route11AfterBattleText7 ; 0x559e TextAfterBattle
	dw Route11EndBattleText7 ; 0x5599 TextEndBattle
	dw Route11EndBattleText7 ; 0x5599 TextEndBattle

Route11TrainerHeader7: ; 594cf (16:54cf)
	db $8 ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText8 ; 0x55ad TextBeforeBattle
	dw Route11AfterBattleText8 ; 0x55b7 TextAfterBattle
	dw Route11EndBattleText8 ; 0x55b2 TextEndBattle
	dw Route11EndBattleText8 ; 0x55b2 TextEndBattle

Route11TrainerHeader8: ; 594db (16:54db)
	db $9 ; flag's bit
	db ($3 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText9 ; 0x55c6 TextBeforeBattle
	dw Route11AfterBattleText9 ; 0x55d0 TextAfterBattle
	dw Route11EndBattleText9 ; 0x55cb TextEndBattle
	dw Route11EndBattleText9 ; 0x55cb TextEndBattle

Route11TrainerHeader9: ; 594e7 (16:54e7)
	db $a ; flag's bit
	db ($4 << 4) ; trainer's view range
	dw $d7d5 ; flag's byte
	dw Route11BattleText10 ; 0x55df TextBeforeBattle
	dw Route11AfterBattleText10 ; 0x55e9 TextAfterBattle
	dw Route11EndBattleText10 ; 0x55e4 TextEndBattle
	dw Route11EndBattleText10 ; 0x55e4 TextEndBattle

	db $ff

Route11Text1: ; 594f4 (16:54f4)
	db $8
	ld hl, Route11TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText1: ; 594fe (16:54fe)
	TX_FAR _Route11BattleText1
	db "@"

Route11EndBattleText1: ; 59503 (16:5503)
	TX_FAR _Route11EndBattleText1
	db "@"

Route11AfterBattleText1: ; 59508 (16:5508)
	TX_FAR _Route11AfterBattleText1
	db "@"

Route11Text2: ; 5950d (16:550d)
	db $08 ; asm
	ld hl, Route11TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText2: ; 59517 (16:5517)
	TX_FAR _Route11BattleText2
	db "@"

Route11EndBattleText2: ; 5951c (16:551c)
	TX_FAR _Route11EndBattleText2
	db "@"

Route11AfterBattleText2: ; 59521 (16:5521)
	TX_FAR _Route11AfterBattleText2
	db "@"

Route11Text3: ; 59526 (16:5526)
	db $08 ; asm
	ld hl, Route11TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText3: ; 59530 (16:5530)
	TX_FAR _Route11BattleText3
	db "@"

Route11EndBattleText3: ; 59535 (16:5535)
	TX_FAR _Route11EndBattleText3
	db "@"

Route11AfterBattleText3: ; 5953a (16:553a)
	TX_FAR _Route11AfterBattleText3
	db "@"

Route11Text4: ; 5953f (16:553f)
	db $08 ; asm
	ld hl, Route11TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText4: ; 59549 (16:5549)
	TX_FAR _Route11BattleText4
	db "@"

Route11EndBattleText4: ; 5954e (16:554e)
	TX_FAR _Route11EndBattleText4
	db "@"

Route11AfterBattleText4: ; 59553 (16:5553)
	TX_FAR _Route11AfterBattleText4
	db "@"

Route11Text5: ; 59558 (16:5558)
	db $08 ; asm
	ld hl, Route11TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText5: ; 59562 (16:5562)
	TX_FAR _Route11BattleText5
	db "@"

Route11EndBattleText5: ; 59567 (16:5567)
	TX_FAR _Route11EndBattleText5
	db "@"

Route11AfterBattleText5: ; 5956c (16:556c)
	TX_FAR _Route11AfterBattleText5
	db "@"

Route11Text6: ; 59571 (16:5571)
	db $08 ; asm
	ld hl, Route11TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText6: ; 5957b (16:557b)
	TX_FAR _Route11BattleText6
	db "@"

Route11EndBattleText6: ; 59580 (16:5580)
	TX_FAR _Route11EndBattleText6
	db "@"

Route11AfterBattleText6: ; 59585 (16:5585)
	TX_FAR _Route11AfterBattleText6
	db "@"

Route11Text7: ; 5958a (16:558a)
	db $08 ; asm
	ld hl, Route11TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText7: ; 59594 (16:5594)
	TX_FAR _Route11BattleText7
	db "@"

Route11EndBattleText7: ; 59599 (16:5599)
	TX_FAR _Route11EndBattleText7
	db "@"

Route11AfterBattleText7: ; 5959e (16:559e)
	TX_FAR _Route11AfterBattleText7
	db "@"

Route11Text8: ; 595a3 (16:55a3)
	db $08 ; asm
	ld hl, Route11TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText8: ; 595ad (16:55ad)
	TX_FAR _Route11BattleText8
	db "@"

Route11EndBattleText8: ; 595b2 (16:55b2)
	TX_FAR _Route11EndBattleText8
	db "@"

Route11AfterBattleText8: ; 595b7 (16:55b7)
	TX_FAR _Route11AfterBattleText8
	db "@"

Route11Text9: ; 595bc (16:55bc)
	db $08 ; asm
	ld hl, Route11TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText9: ; 595c6 (16:55c6)
	TX_FAR _Route11BattleText9
	db "@"

Route11EndBattleText9: ; 595cb (16:55cb)
	TX_FAR _Route11EndBattleText9
	db "@"

Route11AfterBattleText9: ; 595d0 (16:55d0)
	TX_FAR _Route11AfterBattleText9
	db "@"

Route11Text10: ; 595d5 (16:55d5)
	db $08 ; asm
	ld hl, Route11TrainerHeader9
	call TalkToTrainer
	jp TextScriptEnd

Route11BattleText10: ; 595df (16:55df)
	TX_FAR _Route11BattleText10
	db "@"

Route11EndBattleText10: ; 595e4 (16:55e4)
	TX_FAR _Route11EndBattleText10
	db "@"

Route11AfterBattleText10: ; 595e9 (16:55e9)
	TX_FAR _Route11AfterBattleText10
	db "@"

Route11Text11: ; 595ee (16:55ee)
	TX_FAR _Route11Text11
	db "@"
