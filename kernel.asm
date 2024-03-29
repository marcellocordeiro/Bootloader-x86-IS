org 0x7e00
; jmp 0x0000:start
jmp start

username times 32 db 0
command times 32 db 0
commandCopy times 32 db 0

;strings
welcome db 'Welcome!', 0
hello db 'Enter your username: ', 0
input db '@OS:~$ ', 0
invalidCommand db 'Invalid command. Type ', 39, 'help', 39, ' for a list of valid commands', 13, 10, 0
nothingHere db 'nothing here, sorry', 0

;fml
fml1 db 10, 10, 10, 10, '            hey, it', 39, 's Hannah', 13, 10, 0
fml2 db '            Hannah Baker', 13, 10, 0

;commands
help_cmd db 'help', 0
clear_cmd db 'clear', 0
shutdown_cmd db 'shutdown', 0
minesweeper_cmd db './minesweeper', 0
fml_cmd db 'fml', 0
_cmd
;bsod
bsod1 db 10, 10, 10, 10, '            Wh-what happened?', 13, 10, 0
bsod2 db '            Did I just crash?', 13, 10, 0
bsod3 db '            ... or am I being invaded?', 13, 10, 0
bsod4 db '            Oh sh...', 13, 10, 10, 10, 0
bsod5 db 10, 10, 10, 10, '            Hello, and thank you for letting me install a virus', 13, 10, 0
bsod6 db '            Just sit tight while I wipe all your data', 13, 10, 0
bsod7 db '            ur loss, playboy!', 13, 10, 0

;variaveis aux
stringColor times 8 db 0
bgColors db 00h, 04h, 0fh, 0bh, 03h, 0ah, 07h, 09h, 06h, 0ch, 02h, 0eh, 05h, 0dh, 01h

;minesweeper
game1_1 db '_ _ _ _ _ 1 3 o 2', 0
game1_2 db '_ _ _ _ 1 2 o o 2', 0
game1_3 db '_ _ _ _ 1 o 3 2 1', 0
game1_4 db '_ _ _ _ 1 1 1 _ _', 0
game1_5 db '1 1 _ _ _ _ _ _ _', 0
game1_6 db 'o 3 1 1 1 1 2 1 1', 0
game1_7 db 'o 3 o 1 1 o 2 o 2', 0
game1_8 db '1 2 1 1 1 1 2 2 o', 0
game1_9 db '_ _ _ _ _ _ _ 1 1', 0
game1_colQnt db 17
game1_rowQnt db 9
game1_winQnt db 71

game2_1 db '_ _ _ _ _ 1 1 1 _', 0
game2_2 db '1 1 _ _ 1 2 o 1 _', 0
game2_3 db 'o 2 2 2 3 o 3 1 _', 0
game2_4 db '1 2 o o 3 o 2 1 1', 0
game2_5 db '_ 1 2 2 2 1 2 2 o', 0
game2_6 db '_ _ _ _ _ _ 2 o 3', 0
game2_7 db '_ _ _ _ _ _ 3 o 3', 0
game2_8 db '_ _ _ 1 1 1 2 o 2', 0
game2_9 db '1 2 1 2 o 1 1 2 2', 0
game2_10 db 'o 3 o 2 2 2 1 1 o', 0
game2_11 db 'o 3 1 2 2 o 1 1 1', 0
game2_12 db '1 1 1 2 o 2 1 _ _', 0
game2_13 db '_ _ 1 o 2 1 _ _ _', 0
game2_colQnt db 17
game2_rowQnt db 13
game2_winQnt db 99

game3_1 db '_ 1 o 1 _ _ _ _', 0
game3_2 db '1 3 2 2 _ _ _ _', 0
game3_3 db 'o 3 o 2 _ _ _ _', 0
game3_4 db '1 3 o 2 _ _ _ _', 0
game3_5 db '1 2 3 2 1 _ _ _', 0
game3_6 db '1 o 3 o 2 _ _ _', 0
game3_7 db '1 1 3 o 3 2 3 2', 0
game3_8 db '_ _ 1 1 2 o o o', 0
game3_colQnt db 15
game3_rowQnt db 8
game3_winQnt db 54

game4_1 db '_ _ 1 o 3 o o o 2 1 _ 1 1 1 _ _', 0
game4_2 db '1 1 3 2 4 o 4 3 o 3 2 2 o 1 _ _', 0
game4_3 db '1 o 2 o 2 1 2 2 3 o o 4 2 1 _ _', 0
game4_4 db '2 2 3 1 1 _ 1 o 3 4 o o 1 _ _ _', 0
game4_5 db '1 o 1 1 1 1 1 3 o 4 3 4 2 1 _ _', 0
game4_6 db '1 1 1 1 o 1 _ 2 o 3 o 3 o 1 _ _', 0
game4_7 db '_ 1 2 3 2 1 _ 1 1 2 2 o 2 1 _ _', 0
game4_8 db '_ 1 o o 1 _ _ _ _ _ 1 1 1 _ _ _', 0
game4_9 db '2 3 3 3 2 2 2 2 1 _ _ 1 1 1 1 1', 0
game4_10 db 'o o 2 2 o 3 o o 1 _ _ 1 o 1 1 o', 0
game4_11 db '2 2 2 o 4 o 3 2 1 _ _ 1 1 2 2 2', 0
game4_12 db '_ _ 1 2 o 2 1 _ _ _ _ _ _ 1 o 1', 0
game4_13 db '_ _ _ 1 1 1 _ _ 1 1 1 _ _ 1 1 1', 0
game4_14 db '_ _ _ _ _ _ _ _ 1 o 1 _ _ _ 1 1', 0
game4_15 db '1 1 1 _ _ _ _ _ 1 1 2 1 1 1 3 o', 0
game4_16 db '1 o 1 _ _ _ _ _ _ _ 1 o 1 1 o o', 0
game4_colQnt db 31
game4_rowQnt db 16
game4_winQnt db 216

colQnt db 0
rowQnt db 0
winQnt db 0
gamesQnt db 4

strLost db 'You Lost!', 13, 10, 0
strWon db 'Congratulations! You Won', 13, 10, 0

uncovered times 8 db 0 ;uncovered == winQnt --> win!

posx times 8 db 0
posy times 8 db 0

pressAny db 'Press any key to exit', 13, 10, 0

start:
	xor ax, ax
	mov ds, ax
	mov es, ax

	;text mode
	mov ah, 00h
	mov al, 03h
	int 10h

	call welcomeScreen
	call delay

	;blinking cursor: full block
	mov ah, 01h
	mov cx, 07h
	int 10h

	mov si, hello
	call printString

	mov si, nothingHere
	mov di, commandCopy
	call copy

	mov di, command
	call readStr

	mov si, command
	mov di, username
	call copy

	call clearTxt

main:
	;imprime o username
	mov si, username
	call printString

	;imprime @OS~$
	mov si, input
	call printString

	;recebe o comando do usuário
	mov di, command
	call readStr

	;salva o command atual em commandCopy
	mov si, command
	mov di, commandCopy
	call copy

	;usuário digitou help?
	mov si, help_cmd
	mov di, command
	call strcmp
	jc .help

	;usuário digitou clear?
	mov si, clear_cmd
	mov di, command
	call strcmp
	jc .clear

	;usuário digitou shutdown?
	mov si, shutdown_cmd
	mov di, command
	call strcmp
	jc .shutdown

	;usuário digitou minesweeper?
	mov si, minesweeper_cmd
	mov di, command
	call strcmp
	jc .minesweeper

	;usuário digitou fml?
	mov si, fml_cmd
	mov di, command
	call strcmp
	jc .fml

	;usuário não digitou nada?
	mov si, command
	cmp byte[si], 0
	je main

	;usuário não digitou nenhum comando válido
	jmp .invalidCommand

	.help:
		mov si, minesweeper_cmd
		call printString
		call newLine

		mov si, clear_cmd
		call printString
		call newLine

		mov si, shutdown_cmd
		call printString
		call newLine

		call newLine

		jmp main

	.clear:
		call clearTxt

		jmp main

	.shutdown:
		call bsod

		jmp done

	.minesweeper:
		call mineSweeperSetup

		jmp main

	.fml:
		call FML

		jmp main

	.invalidCommand:
		mov si, invalidCommand
		call printString

		jmp main

FML:
	;video mode
	mov ah, 00h
	mov al, 12h
	int 10h

	call clearVideo

	mov byte[stringColor], 01h

	mov si, fml1
	call printString_Delay

	mov si, fml2
	call printString_Delay

	;volta pro terminal
	mov ah, 0 ;espera ocupada
	int 16h

	;text mode
	mov ah, 00h
	mov al, 03h
	int 10h

	call clearTxt

	ret

clearTxt:
	mov bh, 1eh ;00h = modo de vídeo, 07h = modo de texto  ; character attribute = white on black
	jmp clear

clearVideo:
	mov bh, 00h
	jmp clear

clear:
	mov ah, 06h ;scroll down
	mov al, 00h ;scroll the whole window

	;upper left corner
	mov ch, 00h ;row = 0
	mov cl, 00h ;col = 0

	;lower right corner
	mov dh, 1fh ;row = 24 (0x18)
	mov dl, 4fh ;col = 79 (0x4f)

	int 10h ;call BIOS video interrupt

	;set cursor to the beginning
	mov ah, 02h
	mov bh, 00h
	xor dx, dx
	int 10h

	ret

clearLine:
	cmp di, command ;verifica se di está no início de command
	je .done

	dec di ;deleta o char anterior

	mov al, 08h ;"imprime" o backspace
	call printChar

	mov al, ' ' ;deleta o caractere da tela
	call printChar

	mov al, 08h ;"imprime" o backspace de novo
	call printChar

	jmp clearLine

	.done:
		ret

copy:
	lodsb ;carrega um caractere e passa o ponteiro para o proximo / Carrega um byte de DS:SI em AL e depois incrementa SI 

	stosb ;salva al em di

	cmp al, 0 ;0 é o código do \0
	je .done ;se cmp for verdadeiro (verifica no registrador de flags)

	jmp copy

	.done:
		ret

readStr:
	mov ah, 00h ;coloca o caractere lido do teclado no registrador al
	int 16h

	cmp al, 0dh ;enter?
	je .done

	cmp al, 08h ;backspace?
	je .backspace

	cmp ah, 48h ;up arrow?
	je .prevCommand

	cmp ah, 50h ;down arrow?
	je .clearLine

	cmp ah, 4bh ;left arrow?
	je readStr 

	cmp ah, 4dh ;right arrow?
	je readStr 

	call printChar

	stosb

	jmp readStr

	.backspace:
		cmp di, command ;verifica se nenhuma letra foi digitada
		je readStr

		dec di ;deleta o char anterior

		mov al, 08h ;"imprime" o backspace
		call printChar

		mov al, ' ' ;deleta o caractere da tela
		call printChar

		mov al, 08h ;"imprime" o backspace de novo
		call printChar

		jmp readStr

	.prevCommand:
		call clearLine
		
		mov si, commandCopy
		mov di, command
		call copy

		mov si, command
		call printString

		dec di
		jmp readStr

	.clearLine:
		call clearLine

		jmp readStr

	.done:
		mov al, 0
		stosb

		call newLine

		ret

printChar:
	mov ah, 0eh ;imprime o caractere de al
	mov bl, 03h ;cor do caractere (modo grafico)
	int 10h

	ret

printString:
	lodsb ;carrega um caractere e passa o ponteiro para o proximo / Carrega um byte de DS:SI em AL e depois incrementa SI 

	cmp al, 0 ;0 é o código do \0
	je .done ;se cmp for verdadeiro (verifica no registrador de flags)

	mov ah, 0eh ;imprime o caractere de al
	mov bh, 00h
	mov bl, 03h ;cor do caractere (modo grafico)
	int 10h

	jmp printString

	.done:
		ret

printString_Delay:
	lodsb ;carrega um caractere e passa o ponteiro para o proximo / Carrega um byte de DS:SI em AL e depois incrementa SI 

	cmp al, 0 ;0 é o código do \0
	je .done ;se cmp for verdadeiro (verifica no registrador de flags)

	mov ah, 0eh ;imprime o caractere de al
	mov bh, 00h
	mov bl, byte[stringColor]
	;mov bl, 03h ;cor do caractere (modo grafico)
	int 10h

	;delay
	mov ah, 86h
	mov cx, 1
	mov dx, 2
	int 15h

	jmp printString_Delay

	.done:
		ret

printString_Delay_C:
	lodsb ;carrega um caractere e passa o ponteiro para o proximo / Carrega um byte de DS:SI em AL e depois incrementa SI 

	cmp al, 0 ;0 é o código do \0
	je .done ;se cmp for verdadeiro (verifica no registrador de flags)

	mov ah, 0eh ;imprime o caractere de al
	mov bh, 00h
	mov bl, byte[stringColor]
	;mov bl, 03h ;cor do caractere (modo grafico)
	int 10h

	;mudar cor do fundo
	mov bl, byte[di]
	cmp bl, 01h
	je .resetColor
	jne .continue

	.resetColor:
		mov di, bgColors
		jmp .continue

	.continue:
		call changeColor
		inc di

	jmp printString_Delay_C

	.done:
		ret

strcmp:
	mov al, byte[si] ;salva um byte de si
	mov bl, byte[di] ;salva um byte de di

	cmp al, bl ;os caracteres são iguais?
	jne .notequal ;nay

	cmp al, 0 ;os dois caracteres são 0?
	je .done ;yay

	inc si ;incrementa si
	inc di ;incrementa di

	jmp strcmp

	.notequal:
		clc ;reseta a flag de carry

		ret

	.done:
		stc ;seta a flag de carry

		ret

newLine:
	mov ah, 0eh
	mov al, 13 ;\n
	int 10h

	mov al, 10 ;return (início da linha)
	int 10h

	ret

delay:
	mov ah, 86h
	mov cx, 20
	xor dx, dx
	mov dx, 40
	int 15h
	
	ret

delay_p:
	mov ah, 86h
	mov cx, 2
	xor dx, dx
	mov dx, 40
	int 15h
	
	ret

changeColor:
	;background color
	mov ah, 0bh
	mov bh, 00h
	int 10h
	call delay_p

	ret

blink:
	;pisca cores alokado

	call clearVideo

	mov bl, [di]
	cmp bl, 01h
	je .resetColor
	jne .continue

	.resetColor:
		mov di, bgColors
		jmp .continue

	.continue:
		call changeColor
		inc di

	ret

bsod:
	;video mode
	mov ah, 00h
	mov al, 12h
	int 10h

	;background
	mov ah, 0bh
	mov bh, 00h
	mov bl, 01h
	int 10h

	;di aponta para o vetor das cores do bg
	mov di, bgColors

	;imprime strings (invadido)
	mov byte[stringColor], 0fh ;parametro printString_Delay_C (cor)

	mov si, bsod1
	call printString_Delay

	mov si, bsod2
	call printString_Delay

	mov si, bsod3
	call printString_Delay_C

	mov si, bsod4
	call printString_Delay_C

	;pisca colorido
	;call blink

	;imprime strings (invasor)
	mov byte[stringColor], 0eh ;parametro printString_Delay_C (cor)

	mov si, bsod5
	call printString_Delay_C

	mov si, bsod6
	call printString_Delay_C

	mov si, bsod7
	call printString_Delay_C

	;video mode
	mov ah, 00h
	mov al, 13h
	int 10h

	;background
	mov ah, 0bh
	mov bh, 00h
	mov bl, 00h
	int 10h

	ret

moveCursor:
	cmp ah, 48h ;up arrow?
	je .up

	cmp ah, 50h ;down arrow?
	je .down

	cmp ah, 4bh ;left arrow?
	je .left

	cmp ah, 4dh ;right arrow?
	je .right

	jmp .done

	;ah = 02h, bh = page number, dh = row, dl = column

	.up:
		cmp dh, 0 ;já estava na primeira linha?
		je .done

		mov ah, 02h
		xor bx, bx
		dec dh
		int 10h

		mov byte[posy], dh

		ret

	.down:
		inc dh

		cmp dh, byte[rowQnt] ;já estava na última linha?
		je .done

		dec dh

		mov ah, 02h
		xor bx, bx
		inc dh
		int 10h

		mov byte[posy], dh

		ret

	.left:
		cmp dl, 0 ;já estava na primeira coluna?
		je .done
		
		mov ah, 02h
		xor bx, bx
		sub dl, 2
		int 10h

		mov byte[posx], dl

		ret

	.right:
		inc dl

		cmp dl, byte[colQnt] ;já estava na última coluna?
		je .done

		dec dl

		mov ah, 02h
		xor bx, bx
		add dl, 2
		int 10h
		
		mov byte[posx], dl

		ret

	.done:
		ret

randomNum:
	;seed
	mov ah, 02h
	int 1ah

	;number
	xor ax, ax
	mov al, dh
	div byte[gamesQnt] ;ah = resto da divisão ax/[gamesQnt]
	add ah, 1 ;ah = (ax mod [gamesQnt]) + 1

	ret

mineSweeperSetup:
	call clearTxt

	call randomNum

	cmp ah, 1
	je .jogo1

	cmp ah, 2
	je .jogo2

	cmp ah, 3
	je .jogo3

	cmp ah, 4
	je .jogo4

	.jogo1:
		mov di, game1_1

		mov bl, byte[game1_rowQnt]
		mov byte[rowQnt], bl

		mov bl, byte[game1_colQnt]
		mov byte[colQnt], bl

		mov bl, byte[game1_winQnt]
		mov byte[winQnt], bl

		jmp .done

	.jogo2:
		mov di, game2_1

		mov bl, byte[game2_rowQnt]
		mov byte[rowQnt], bl

		mov bl, byte[game2_colQnt]
		mov byte[colQnt], bl

		mov bl, byte[game2_winQnt]
		mov byte[winQnt], bl

		jmp .done

	.jogo3:
		mov di, game3_1

		mov bl, byte[game3_rowQnt]
		mov byte[rowQnt], bl

		mov bl, byte[game3_colQnt]
		mov byte[colQnt], bl

		mov bl, byte[game3_winQnt]
		mov byte[winQnt], bl

		jmp .done

	.jogo4:
		mov di, game4_1

		mov bl, byte[game4_rowQnt]
		mov byte[rowQnt], bl

		mov bl, byte[game4_colQnt]
		mov byte[colQnt], bl

		mov bl, byte[game4_winQnt]
		mov byte[winQnt], bl

		jmp .done

	.done:
		mov byte[uncovered], 0

		mov byte[posx], 0
		mov byte[posy], 0

		xor cx, cx
		call printEmpty

		;coloca o cursor no início da tela
		mov ah, 02h
		xor bx, bx
		xor dx, dx
		int 10h

		mov si, di

		jmp mineSweeper

printEmpty:
	mov cl, 0

	.printCol:
		mov al, '='
		call printChar

		mov al, ' '
		call printChar

		add cl, 2

		cmp cl, byte[colQnt]
		jng .printCol

	add ch, 1

	call newLine

	cmp ch, byte[rowQnt]
	jne printEmpty

	ret

mineSweeper:
	mov bl, byte[winQnt]
	cmp byte[uncovered], bl
	je won

	mov ah, 00h
	int 16h

	mov dl, byte[posx]
	mov dh, byte[posy]
	call moveCursor

	cmp al, 0dh
	je update

	cmp al, 32
	je flagCell

	jmp mineSweeper

flagCell:
	mov ah, 08h
	mov bh, 00h
	int 10h

	cmp al, '!'
	je .removeFlag

	;ah = 09h, al = character, bh = page number, bl = color, cx = Number of times to print character
	mov ah, 09h
	mov al, '!'
	mov bh, 00h
	mov bl, 14h
	mov cx, 1
	int 10h

	jmp mineSweeper

	.removeFlag:
		mov ah, 09h
		mov al, '='
		mov bh, 00h
		mov bl, 1eh
		mov cx, 1
		int 10h

		jmp mineSweeper

update:
	;retorna o caractere do cursor
	mov ah, 08h
	mov bh, 00h
	int 10h

	;se a posição já foi selecionada, não faz nada
	cmp al, '='
	jne mineSweeper

	xor bx, bx
	xor dx, dx
	xor cx, cx
	mov dl, byte[colQnt]
	;avança para a linha escolhida
	mov cl, byte[posy]
	.gotoRow:
		add bx, dx ;quantidade de elementos na linha
		add bx, 1 ;terminador da string
	loop .gotoRow

	mov dl, byte[posx]
	;posição do elemento escolhido
	add bx, dx
	
	;bomba
	cmp byte[si+bx], 'o'
	je lost

	;ah = 09h, al = character, bh = page number, bl = color, cx = Number of times to print character
	mov ah, 09h
	mov al, byte[si+bx]
	mov bh, 00h
	mov bl, 1eh
	mov cx, 1
	int 10h

	inc byte[uncovered] ;se for uma nova posição, incrementa o contador

	jmp mineSweeper

gameOver:
	call clearTxt

	mov byte[posx], 0
	mov byte[posy], 0

	call printAll

	call newLine
	
	ret

printAll:
	;set cursor position
	mov ah, 02h
	mov bh, 00h
	mov dh, byte[posy]
	mov dl, byte[posx]
	int 10h

	lodsb ;carrega um caractere e passa o ponteiro para o proximo / Carrega um byte de DS:SI em AL e depois incrementa SI 

	cmp al, 0 ;acabou a string?
	je .done ;se cmp for verdadeiro (verifica no registrador de flags)

	cmp al, 'o' ;se for bomba, imprime vermelho
	je .red

	mov bl, 1eh ;se não, imprime verde
	jmp .continue

	.red:
		mov bl, 14h
		jmp .continue

	.continue:
		;ah = 09h, al = character, bh = page number, bl = color, cx = Number of times to print character
		mov ah, 09h
		mov bh, 00h
		mov cx, 1
		int 10h

		inc byte[posx]

		jmp printAll

	.done:
		inc byte[posy]
		mov byte[posx], 0

		mov bl, byte[rowQnt]
		cmp byte[posy], bl
		je .reallyDone

		call newLine

		jmp printAll

	.reallyDone:
		inc byte[posy]
		mov byte[posx], 0

		call newLine

		ret

won:
	call gameOver

	;imprime msg
	mov si, strWon
	call printString
	call newLine ;\n

	;volta pro terminal
	mov si, pressAny
	call printString

	mov ah, 0 ;espera ocupada
	int 16h

	jmp main

lost:
	call gameOver

	;imprime msg
	mov si, strLost
	call printString
	call newLine ;\n

	;volta pro terminal
	mov si, pressAny
	call printString

	mov ah, 0 ;espera ocupada
	int 16h

	jmp main

welcomeScreen:
	call clearTxt

	;posiciona o cursor
	mov ah, 02h
	xor bx, bx
	mov dh, 7
	mov dl, 15
	int 10h

	mov si, welcome
	mov byte[stringColor], 0fh
	call printString_Delay

	;\n \n
	mov ah, 02h
	xor bx, bx
	mov dh, 9
	mov dl, 15
	int 10h

	ret

done:
	jmp $