.include "macrolib.asm"
  
.data
default_name: .asciz "testout.txt"      # Имя файла по умолчанию

.text
.global out_in_file
out_in_file:
	# Ввод имени файла с консоли эмулятора
	InputFileName(prompt2, file_name, NAME_SIZE)
	
	# Убрать перевод строки
	li  	t4 '\n'
	la  	t5 file_name
	mv  	t3 t5
	
loop:
	lb	t6 (t5)
	beq 	t4 t6 replace
	addi 	t5 t5 1
	b   loop
	
replace:
	beq 	t3 t5 default	# Установка имени введенного файла
	sb  	zero (t5)
	mv  	a0 t3 		# Имя, введенное пользователем
	b out
default:
	la   	a0 default_name # Имя файла по умолчани

out:
	# Open (for writing) a file that does not exist
	li   	a7 1024     	# system call for open file
	li   	a1 1        	# Open for writing (flags are 0: read, 1: write)
	ecall             	# open a file (file descriptor returned in a0)
	mv   	s6 a0       	# save the file descriptor

	# Write to file just opened
	li   	a7 64       	# system call for write to file
	mv   	a0 s6       	# file descriptor
	mv   	a1 a6   	# address of buffer from which to write
	li   	a2 100       	# hardcoded buffer length
	ecall             	# write to file

	# Close the file
	li   	a7 57       	# system call for close file
	mv   	a0 s6       	# file descriptor to close
	ecall             	# close file
ret
