	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_LoadROM
_LoadROM:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r5
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 71
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 73
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 73
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 73
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7

						//../DeMiSTify/firmware/main.c, line 77
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_file, 8
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 79
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_configstring_setindex // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 83
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	30
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 83
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 86
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 86
						//call
						//pcreltotemp
	.lipcrel	_arcfile_open // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 86
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 86
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7

						//../DeMiSTify/firmware/main.c, line 88
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_arcstate, 28
						//extern deref
						//sizemod based on type 0x3
	ldt
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 88
		// Offsets 33, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	33
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 88
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd8 // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 89
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 90
		// Offsets 40, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 40 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 40 with 1
						// extern (offset 40)
	.liabs	_arcstate, 40
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 90
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l8: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 92
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/main.c, line 93
						//pcreltotemp
	.lipcrel	l31
	add	r7
l6: # 

						//../DeMiSTify/firmware/main.c, line 99
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 100
		// Offsets 86, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	86
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 101
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l32: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 102
						// (bitwise/arithmetic) 	//ops: 6, 3, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 102
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 3
	st	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 102
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 102
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	11
	sgn
	cmp	r2

						//../DeMiSTify/firmware/main.c, line 102
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 103
		// Offsets 12, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
						// (save temp)isreg
	mr	r2
						//save_temp done
l33: # 

						//../DeMiSTify/firmware/main.c, line 104
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// const
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 104
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
	sgn
	cmp	r2

						//../DeMiSTify/firmware/main.c, line 104
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7

						//../DeMiSTify/firmware/main.c, line 105
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 107
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 109
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 109
		// Offsets 83, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 109
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 109
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 111
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/main.c, line 111
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
l34: # 

						//../DeMiSTify/firmware/main.c, line 113
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)store type a
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 116
		// Offsets 512, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	512
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 117
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 118
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 118
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7

						//../DeMiSTify/firmware/main.c, line 120
						// (bitwise/arithmetic) 	//ops: 5, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	addt	r4
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 121
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l21: # 

						//../DeMiSTify/firmware/main.c, line 124
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	cmp	r5

						//../DeMiSTify/firmware/main.c, line 124
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 124
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_configstring_coretype
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 124
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 124
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//../DeMiSTify/firmware/main.c, line 125
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 125
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 125
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 125
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 125
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 127
						//pcreltotemp
	.lipcrel	l25
	add	r7
l23: # 

						//../DeMiSTify/firmware/main.c, line 128
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 128
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 128
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 128
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 128
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 129
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 130
		// Offsets 84, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	84
						// (save temp)store type 3
	st	r3
						//save_temp done
l35: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 133
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2a type 101
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 133
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 2a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/main.c, line 134
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	sub	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 134
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//../DeMiSTify/firmware/main.c, line 135
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
l25: # 

						//../DeMiSTify/firmware/main.c, line 137
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/main.c, line 137
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l30
		add	r7

						//../DeMiSTify/firmware/main.c, line 138
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/main.c, line 140
						//pcreltotemp
	.lipcrel	l31
	add	r7
						// freereg r1
l30: # 

						//../DeMiSTify/firmware/main.c, line 140
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 140
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 140
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 111
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/main.c, line 111
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
l38: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 143
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 143
		// Offsets 83, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 143
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 143
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 145
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/main.c, line 146
						//pcreltotemp
	.lipcrel	l31
	add	r7
l4: # 

						//../DeMiSTify/firmware/main.c, line 148
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l31: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
.functiontail:
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_nthfile
_nthfile:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 184
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 185
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r3

						//../DeMiSTify/firmware/main.c, line 185
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7
l54: # 

						//../DeMiSTify/firmware/main.c, line 186
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 186
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../DeMiSTify/firmware/main.c, line 186
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7

						//../DeMiSTify/firmware/main.c, line 186
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 186
						//pcreltotemp
	.lipcrel	l50
	add	r7
l49: # 

						//../DeMiSTify/firmware/main.c, line 186
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l50: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 186
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 186
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 186
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/main.c, line 187
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 188
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6

						//../DeMiSTify/firmware/main.c, line 188
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l53
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 189
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
l53: # 

						//../DeMiSTify/firmware/main.c, line 185
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 185
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 185
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
l55: # 

						//../DeMiSTify/firmware/main.c, line 191
						//setreturn
						// (obj to r0) flags 62 type a
						// deref 
	ld	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_spi32le
_spi32le:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 198
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 198
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 199
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 199
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 199
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 200
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	16
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 200
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 200
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 201
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	24
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 201
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 201
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.weak	_loadimage
_loadimage:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r2
						// allocreg r1
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	12
	ldidx	r6
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l61
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r4
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	48
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						//pcreltotemp
	.lipcrel	l60
	add	r7
						// freereg r1
l61: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 251
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 251
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 251
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r0 - only match against tmp
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 252
						//pcreltotemp
	.lipcrel	l60
	add	r7
l62: # 

						//../DeMiSTify/firmware/main.c, line 258
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 258
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 258
						//call
						//pcreltotemp
	.lipcrel	_OpenHardfile // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l60: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_selectrom
_selectrom:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 291
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 291
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// static
	.liabs	l42,0
						// static pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 291
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r5

						//../DeMiSTify/firmware/main.c, line 291
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 293
						// (bitwise/arithmetic) 	//ops: 0, 5, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r2
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 293
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 42
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 293
						//call
						//pcreltotemp
	.lipcrel	_nthfile // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 293
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/main.c, line 295
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//../DeMiSTify/firmware/main.c, line 295
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 297
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_filename
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 297
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 297
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 297
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 299
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 299
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 299
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 299
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l72,0
						// static pe is varadr
						// (save temp)store type a
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 300
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 300
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 301
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 42, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type a
	st	r3
						//save_temp done
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 302
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_unit
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 302
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 302
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_filename
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 302
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l71: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 304
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 304
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 305
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 305
						//call
						//pcreltotemp
	.lipcrel	_Menu_ShowHide // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 306
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 307
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 307
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l66: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 0
	add	r7

	.section	.rodata.5
l72:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_selectdir
_selectdir:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 313
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 313
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 313
						//call
						//pcreltotemp
	.lipcrel	_nthfile // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 313
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 314
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//../DeMiSTify/firmware/main.c, line 314
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 315
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 315
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l76: # 

						//../DeMiSTify/firmware/main.c, line 316
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 317
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 317
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_listroms
_listroms:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 323
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 325
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 326
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 327
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/main.c, line 327
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	0
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 327
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 327
						// (test)
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
				// flags 82
	mr	r0
	and	r0

						//../DeMiSTify/firmware/main.c, line 327
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
l108: # 

						//../DeMiSTify/firmware/main.c, line 328
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 328
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6

						//../DeMiSTify/firmware/main.c, line 328
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7

						//../DeMiSTify/firmware/main.c, line 328
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 328
						//pcreltotemp
	.lipcrel	l85
	add	r7
l84: # 

						//../DeMiSTify/firmware/main.c, line 328
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l85: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 328
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 328
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 328
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//../DeMiSTify/firmware/main.c, line 329
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 327
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 327
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/main.c, line 327
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 327
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l110
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 327
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../DeMiSTify/firmware/main.c, line 327
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l108
		add	r7
l110: # 

						//../DeMiSTify/firmware/main.c, line 332
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 333
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../DeMiSTify/firmware/main.c, line 333
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l111
		add	r7
l109: # 

						//../DeMiSTify/firmware/main.c, line 334
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 334
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6

						//../DeMiSTify/firmware/main.c, line 334
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7

						//../DeMiSTify/firmware/main.c, line 334
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 334
						//pcreltotemp
	.lipcrel	l94
	add	r7
l93: # 

						//../DeMiSTify/firmware/main.c, line 334
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l94: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 334
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 334
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 334
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/main.c, line 335
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//../DeMiSTify/firmware/main.c, line 335
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l106
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 338
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 338
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 338
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 338
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 340
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_selectdir
						// extern pe is varadr
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 340
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 340
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 340
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 220
		// Real offset of type is 220, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 341
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 341
						// Z disposable
		// Offsets -1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 342
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 342
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// static
	.liabs	l42,0
						// static pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 342
		// Offsets 129, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 256
		// Real offset of type is 256, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	129
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 343
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 343
						// Z disposable
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 344
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_longfilename
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/main.c, line 344
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l101
		add	r7
						// freereg r3

						//../DeMiSTify/firmware/main.c, line 345
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 345
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 345
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 345
		// Offsets 27, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	27
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 345
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 347
						//pcreltotemp
	.lipcrel	l106
	add	r7
l101: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 348
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	13
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 348
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 349
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 349
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 349
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 349
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 349
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 353
						//pcreltotemp
	.lipcrel	l106
	add	r7
l99: # 
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 354
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_selectrom
						// extern pe is varadr
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 354
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 354
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 354
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 355
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_longfilename
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/main.c, line 355
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l105
		add	r7
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 356
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	30
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 356
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 356
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r3)
 						// (prepobj r3)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l42,0
						// static pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 356
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 356
		// Offsets 29, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	29
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 356
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 358
						//pcreltotemp
	.lipcrel	l106
	add	r7
l105: # 
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 359
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 359
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l42,0
						// static pe is varadr
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 359
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	11
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 359
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 360
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 360
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 360
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 360
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 360
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
l106: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 333
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 333
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	7
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 333
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l111
		add	r7

						//../DeMiSTify/firmware/main.c, line 333
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6

						//../DeMiSTify/firmware/main.c, line 333
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l109
		add	r7
l111: # 
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 365
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 42
	.liconst	-12
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
l112:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 370
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 370
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 370
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 370
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 371
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	9
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//../DeMiSTify/firmware/main.c, line 371
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_configstring_index
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 372
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	10
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 372
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// extern (offset 0)
	.liabs	_unit
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 373
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_unit
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 373
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 373
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 373
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 374
		// Offsets 30, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	30
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 375
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 375
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1
						// freereg r3
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
l41:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 382
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 382
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 382
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 382
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menupage, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 383
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 385
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 385
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
l117:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 390
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 390
						//call
						//pcreltotemp
	.lipcrel	_Menu_ShowHide // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
l120:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 396
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
				// flags 42
	and	r1

						//../DeMiSTify/firmware/main.c, line 396
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l124
		add	r7

						//../DeMiSTify/firmware/main.c, line 398
		// Offsets 0, 85
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 85, 0
		// Real offset of type is 85, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// extern (offset 85)
	.liabs	_menu, 85
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 399
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 86
						//Fuzzy match found, offset: -9 (varadr: 1)
	.liconst	-9
	add	r0

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l41,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 400
		// Offsets 0, 81
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 81, 0
		// Real offset of type is 81, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// extern (offset 0)
	.liabs	_std_label_back
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 403
						//pcreltotemp
	.lipcrel	l125
	add	r7
l124: # 

						//../DeMiSTify/firmware/main.c, line 404
		// Offsets 0, 81
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 81, 0
		// Real offset of type is 81, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 81)
	.liabs	_menu, 81
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// extern (offset 0)
	.liabs	_std_label_exit
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 405
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 81
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l117,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
l125: # 
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_cycle
_cycle:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 413
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 413
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 414
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 414
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	9
	addt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 414
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 414
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	stdec	r6
						// freereg r3

						//../DeMiSTify/firmware/main.c, line 414
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 414
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 414
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	10
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 414
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 414
						//call
						//pcreltotemp
	.lipcrel	_statusword_cycle // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 415
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 415
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 416
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 416
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1
						// freereg r4
	.liconst	-8
	sub	r6
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.d
	.weak	_toggle
_toggle:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 422
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 422
						//call
						//pcreltotemp
	.lipcrel	_cycle // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 423
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 423
						//call
						//pcreltotemp
	.lipcrel	_cycle // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.e
l40:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	6
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l144
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l141
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						//pcreltotemp
	.lipcrel	l146
	add	r7
						// freereg r1
l133: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 442
		// Offsets 7, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 442
						//call
						//pcreltotemp
	.lipcrel	l41 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 444
						//pcreltotemp
	.lipcrel	l130
	add	r7
l135: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 447
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/main.c, line 447
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//../DeMiSTify/firmware/main.c, line 448
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 449
						//pcreltotemp
	.lipcrel	l146
	add	r7
l138: # 

						//../DeMiSTify/firmware/main.c, line 451
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_moremenu
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/main.c, line 451
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//../DeMiSTify/firmware/main.c, line 452
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 453
						//pcreltotemp
	.lipcrel	l146
	add	r7
						// freereg r1
l141: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 455
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	6
	sub	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//../DeMiSTify/firmware/main.c, line 456
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 456
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 457
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 458
						//pcreltotemp
	.lipcrel	l146
	add	r7
l144: # 

						//../DeMiSTify/firmware/main.c, line 460
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_moremenu
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/main.c, line 460
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//../DeMiSTify/firmware/main.c, line 461
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l146: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 464
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 464
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 465
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 465
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l130: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.f
	.global	_dipswitches
_dipswitches:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 471
		// Offsets 29, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 40
						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	29
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 472
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 472
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 473
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 473
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.10
l150:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 480
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	12
	ldidx	r6
	stdec	r6
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 480
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 480
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r3
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 480
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 480
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 480
						//call
						//pcreltotemp
	.lipcrel	_strcpy // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 481
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l112,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 482
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 482
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 483
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 483
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 484
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//../DeMiSTify/firmware/main.c, line 484
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r4
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.11
	.global	_parseconf
_parseconf:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-52
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 492
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 494
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 12, 0 with 8, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	72
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 495
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 16, 0 with 12, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 496
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 20, 0 with 16, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 497
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_moremenu
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 499
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	30
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 499
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l156
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 502
						//call
						//pcreltotemp
	.lipcrel	_listroms // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 502
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 502
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 521
						//pcreltotemp
	.lipcrel	l157
	add	r7
l156: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 522
						//call
						//pcreltotemp
	.lipcrel	_configstring_begin // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 524
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 525
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 525
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 529
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	59
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 529
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l159
		add	r7

						//../DeMiSTify/firmware/main.c, line 533
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/main.c, line 533
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 535
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 535
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 535
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 535
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l149,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 535
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 535
						//call
						//pcreltotemp
	.lipcrel	l150 // Static 
	add	r7
						// Flow control - popping 16 + 0 bytes
	.liconst	16
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 537
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	59
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 537
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l163
		add	r7
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 540
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	68
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 540
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 6a type a
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	7
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 540
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 541
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 541
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	24
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 541
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 6a type a
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	add	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 541
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
l163: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 545
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	72
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 545
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l165
		add	r7

						//../DeMiSTify/firmware/main.c, line 546
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 548
						//pcreltotemp
	.lipcrel	l167
	add	r7
l165: # 

						//../DeMiSTify/firmware/main.c, line 548
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	72
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 552
						//pcreltotemp
	.lipcrel	l167
	add	r7
l161: # 

						//../DeMiSTify/firmware/main.c, line 552
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l167: # 

						//../DeMiSTify/firmware/main.c, line 553
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	16
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done
l159: # 

						//../DeMiSTify/firmware/main.c, line 555
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/main.c, line 555
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7

						//../DeMiSTify/firmware/main.c, line 555
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	76
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 555
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7
l235: # 

						//../DeMiSTify/firmware/main.c, line 557
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 559
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 28, 0 with 4, 0
						//Fuzzy match found, offset: 24 (varadr: 1)
	.liconst	24
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 560
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 560
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 563
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	29
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 563
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l173
		add	r7

						//../DeMiSTify/firmware/main.c, line 564
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done
l173: # 

						//../DeMiSTify/firmware/main.c, line 567
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 567
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l241
		add	r7
l236: # 

						//../DeMiSTify/firmware/main.c, line 569
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 570
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 570
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 571
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 571
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l178
		add	r7

						//../DeMiSTify/firmware/main.c, line 573
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 573
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l178: # 

						//../DeMiSTify/firmware/main.c, line 575
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 575
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l180
		add	r7

						//../DeMiSTify/firmware/main.c, line 576
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l180: # 

						//../DeMiSTify/firmware/main.c, line 567
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 567
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l236
		add	r7
l241: # 

						//../DeMiSTify/firmware/main.c, line 615
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 615
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	28
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 615
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l182
		add	r7

						//../DeMiSTify/firmware/main.c, line 618
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 620
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 40, 0 with 36, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 5, 0, 6
						// (obj to r5) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 82
	.liconst	59
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l183
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	9
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l242
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	9
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l187
		add	r7
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
	sub	r5
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7
						//pcreltotemp
	.lipcrel	l221
	add	r7
						// freereg r1
						// freereg r2
l185: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 628
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 628
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	68
	ldidx	r6
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 628
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 628
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 628
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
	mt	r1
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l186,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
	ldidx	r6
	mr	r1
					// Copying 3 words and 1 bytes to 
					// Copying 3 words to 
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r1
	mr	r2
.cpywordloop0:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpywordloop0
		add	r7
					// Copying 1 byte tail to 
	ldbinc	r0
	stbinc	r1
	ldinc	r6
	mr	r1

						//../DeMiSTify/firmware/main.c, line 629
						// Z disposable
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dipswitches
						// extern pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 630
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 630
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 631
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	40
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 632
						//pcreltotemp
	.lipcrel	l183
	add	r7
l187: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 636
		// Offsets 48, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	48
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 637
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 637
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 638
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 638
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l189
		add	r7

						//../DeMiSTify/firmware/main.c, line 639
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r4
l189: # 

						//../DeMiSTify/firmware/main.c, line 641
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 641
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l242
		add	r7
l237: # 

						//../DeMiSTify/firmware/main.c, line 642
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 642
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 641
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 641
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l237
		add	r7
l242: # 

						//../DeMiSTify/firmware/main.c, line 644
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l195
		add	r7

						//../DeMiSTify/firmware/main.c, line 645
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l195: # 

						//../DeMiSTify/firmware/main.c, line 646
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 646
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/main.c, line 646
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 646
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/main.c, line 646
						// Q1 disposable
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 646
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l149,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 646
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 646
						//call
						//pcreltotemp
	.lipcrel	l150 // Static 
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 648
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 648
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 648
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 648
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	92
	ldidx	r6
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 648
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r1
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 648
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 164
		// Real offset of type is 188, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 648
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 16 bytes
	.liconst	24
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 649
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 649
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7

						//../DeMiSTify/firmware/main.c, line 651
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 651
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	30
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 651
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 188
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 651
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 651
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 651
						// Q1 disposable
						// (minus)
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mr	r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	0
	exg r0
	sub r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 652
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
	sgn
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 652
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 652
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	29
	sgn
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 652
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 654
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	mr	r1
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	40
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 654
						// Z disposable
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 212, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	32
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 655
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 655
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 655
						// Z disposable
		// Offsets 129, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 232
		// Real offset of type is 232, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	129
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 656
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 656
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 656
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 252
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l199: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 663
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 664
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 40, 0 with 16, 0
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	24
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 665
						//pcreltotemp
	.lipcrel	l183
	add	r7
l201: # 

						//../DeMiSTify/firmware/main.c, line 670
						//call
						//pcreltotemp
	.lipcrel	_configstring_getdigit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 670
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 671
						//call
						//pcreltotemp
	.lipcrel	_configstring_getdigit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 671
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 673
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	44
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 673
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7

						//../DeMiSTify/firmware/main.c, line 674
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 676
						//pcreltotemp
	.lipcrel	l205
	add	r7
l204: # 

						//../DeMiSTify/firmware/main.c, line 676
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
l205: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 678
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 678
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	68
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 678
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 678
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 678
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 679
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 679
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 679
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 679
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 679
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 683
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x103
	ldidx	r6
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 683
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 683
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 685
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 685
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 62
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r1
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 686
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 2
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 686
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 686
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 686
						//pcreltotemp
	.lipcrel	l209
	add	r7
l208: # 

						//../DeMiSTify/firmware/main.c, line 686
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l209: # 

						//../DeMiSTify/firmware/main.c, line 686
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 686
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
	.liconst	32
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 686
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 278
		// Real offset of type is 286, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 686
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 686
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/main.c, line 686
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 686
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l243
		add	r7
						// freereg r2
						// freereg r3

						//../DeMiSTify/firmware/main.c, line 688
						// (bitwise/arithmetic) 	//ops: 7, 5, 1
						// (obj to r0) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 62
						// reg r4 - only match against tmp
	mt	r4
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 689
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	32
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 689
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r3

						//../DeMiSTify/firmware/main.c, line 689
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 310
		// Real offset of type is 310, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 689
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 314
		// Real offset of type is 314, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// static
	.liabs	l211,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 689
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 318
		// Real offset of type is 318, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 689
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 690
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type a
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
l238: # 
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 693
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 694
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	48
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 694
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 694
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l215
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 694
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 334
		// Real offset of type is 334, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 694
						//pcreltotemp
	.lipcrel	l216
	add	r7
l215: # 

						//../DeMiSTify/firmware/main.c, line 694
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 334
		// Real offset of type is 334, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l216: # 

						//../DeMiSTify/firmware/main.c, line 694
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 694
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 694
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 694
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 694
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 350
		// Real offset of type is 358, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 694
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 694
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 694
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7
l243: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 697
						// (test)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x103
	ldidx	r6

						//../DeMiSTify/firmware/main.c, line 697
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 699
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 699
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 700
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cycle
						// extern pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 703
						//pcreltotemp
	.lipcrel	l220
	add	r7
l219: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 704
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 704
						// Z disposable
		// Offsets 2, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 298
		// Real offset of type is 298, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 705
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	4
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_toggle
						// extern pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
l220: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 707
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	40
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 708
						//pcreltotemp
	.lipcrel	l183
	add	r7
l221: # 

						//../DeMiSTify/firmware/main.c, line 710
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 710
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l183: # 

						//../DeMiSTify/firmware/main.c, line 713
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/main.c, line 713
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l227
		add	r7

						//../DeMiSTify/firmware/main.c, line 715
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 715
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l225
		add	r7

						//../DeMiSTify/firmware/main.c, line 716
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 718
						//pcreltotemp
	.lipcrel	l227
	add	r7
l225: # 

						//../DeMiSTify/firmware/main.c, line 718
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 722
						//pcreltotemp
	.lipcrel	l227
	add	r7
l182: # 

						//../DeMiSTify/firmware/main.c, line 723
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	70
	cmp	r4

						//../DeMiSTify/firmware/main.c, line 723
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l229
		add	r7

						//../DeMiSTify/firmware/main.c, line 724
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l229: # 

						//../DeMiSTify/firmware/main.c, line 725
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 725
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l227: # 

						//../DeMiSTify/firmware/main.c, line 727
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 555
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/main.c, line 555
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7

						//../DeMiSTify/firmware/main.c, line 555
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	76
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 555
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l235
		add	r7
l240: # 

						//../DeMiSTify/firmware/main.c, line 729
						//call
						//pcreltotemp
	.lipcrel	_configstring_end // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l157: # 

						//../DeMiSTify/firmware/main.c, line 732
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 732
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l244
		add	r7
						// freereg r1
						// freereg r2
l239: # 

						//../DeMiSTify/firmware/main.c, line 733
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_moremenu
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 734
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/main.c, line 734
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	68
	ldidx	r6
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 734
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//../DeMiSTify/firmware/main.c, line 734
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 734
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/main.c, line 735
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 458
		// Real offset of type is 458, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 732
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/main.c, line 732
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	7
	cmp	r0

						//../DeMiSTify/firmware/main.c, line 732
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l239
		add	r7
l244: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-52
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	.section	.rodata.12
l211:
	.byte	58
	.byte	32
	.byte	0
	.section	.rodata.13
l186:
	.byte	68
	.byte	73
	.byte	80
	.byte	32
	.byte	83
	.byte	119
	.byte	105
	.byte	116
	.byte	99
	.byte	104
	.byte	101
	.byte	115
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.14
	.global	_buildmenu
_buildmenu:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 741
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../DeMiSTify/firmware/main.c, line 741
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l248
		add	r7

						//../DeMiSTify/firmware/main.c, line 742
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l248: # 

						//../DeMiSTify/firmware/main.c, line 743
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	7
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 743
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/main.c, line 743
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 743
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 743
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 743
						//call
						//pcreltotemp
	.lipcrel	_parseconf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 744
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 744
						//call
						//pcreltotemp
	.lipcrel	l120 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 745
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../DeMiSTify/firmware/main.c, line 745
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l250
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 746
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 746
						//call
						//pcreltotemp
	.lipcrel	_Menu_Set // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l250: # 
						// allocreg r1
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.15
	.weak	_autoboot
_autoboot:
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 769
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 774
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 774
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 776
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.16
	.weak	_get_rtc
_get_rtc:
	stdec	r6
	mt	r3
	stdec	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r3
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// const
	.liconst	255
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 784
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-44
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 786
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 21 type 503
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
	.liconst	-4
						//sizemod based on type 0x503
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
						// const
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	1
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x6a
	mt	r0
	st	r6

						//../DeMiSTify/firmware/main.c, line 786
						// (test)
						// (obj to tmp) flags 6a type 503
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r6

						//../DeMiSTify/firmware/main.c, line 786
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l257
		add	r7

						//../DeMiSTify/firmware/main.c, line 789
		// Offsets 65, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	65
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 790
		// Offsets 146, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	146
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 791
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 1
						// matchobj comparing flags 240 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 791
		// Offsets 1, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 1
						// extern (offset 1)
	.liabs	_sector_buffer, 1
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 791
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 792
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 792
						// Z disposable
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 793
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 793
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82
						//extern: comparing 2 with 1
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 794
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 794
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 795
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 795
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 796
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 796
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 797
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 797
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 798
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 6)
	.liabs	_sector_buffer, 10
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 799
		// Offsets 64, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 82
						// matchobj comparing flags a1 with 82
						// deref
						// const to r0
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	64
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 802
						//pcreltotemp
	.lipcrel	l258
	add	r7
l257: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 803
		// Offsets 1, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 1)
	.liabs	_sector_buffer, 1
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 803
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 804
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 805
		// Offsets 0, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 0
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 2 with 1
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 806
		// Offsets 25, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 0
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	25
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 807
		// Offsets 1, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 808
		// Offsets 34, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 0
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	34
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 809
		// Offsets 3, 6
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 6, 0
		// Real offset of type is 6, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l258: # 

						//../DeMiSTify/firmware/main.c, line 811
		// Offsets 0, 7
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 7, 0
		// Real offset of type is 7, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 7)
	.liabs	_sector_buffer, 7
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 812
						//setreturn
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
						//Fuzzy match found, offset: -8 (varadr: 0)
	.liconst	-8
	add	r0

						// required value found in r0
						// freereg r2
						// freereg r3
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.17
	.weak	_init
_init:
	stdec	r6
						// allocreg r2

						//../DeMiSTify/firmware/main.c, line 821
						//call
						//pcreltotemp
	.lipcrel	_PS2Init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 823
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 823
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 828
						//call
						//pcreltotemp
	.lipcrel	_sd_init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 828
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 828
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l265
		add	r7

						//../DeMiSTify/firmware/main.c, line 828
						//call
						//pcreltotemp
	.lipcrel	_FindDrive // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 828
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 828
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l265
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 828
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 828
						//pcreltotemp
	.lipcrel	l266
	add	r7
l265: # 

						//../DeMiSTify/firmware/main.c, line 828
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l266: # 

						//../DeMiSTify/firmware/main.c, line 828
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/main.c, line 828
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l273
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 830
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 830
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l267,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 830
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l272: # 
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 832
						//pcreltotemp
	.lipcrel	l272
	add	r7
l273: # 
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 835
						//call
						//pcreltotemp
	.lipcrel	_AutoScandoubler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/main.c, line 838
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 838
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l271,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 838
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 839
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 839
						//call
						//pcreltotemp
	.lipcrel	_autoboot // extern
	add	r7
						// Nested call - popping 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/main.c, line 839
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/main.c, line 839
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/main.c, line 842
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r2
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r7

	.section	.rodata.18
l267:
	.byte	83
	.byte	68
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	46
	.byte	0
	.section	.rodata.19
l271:
	.byte	66
	.byte	111
	.byte	111
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1a
	.weak	_mainloop
_mainloop:
	stdec	r6
l279: # 

						//../DeMiSTify/firmware/main.c, line 860
						//call
						//pcreltotemp
	.lipcrel	_Menu_Run // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 863
						//call
						//pcreltotemp
	.lipcrel	_HandleHDD // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/main.c, line 851
						//pcreltotemp
	.lipcrel	l279
	add	r7
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1b
	.weak	_main
_main:
	stdec	r6

						//../DeMiSTify/firmware/main.c, line 883
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 884
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/main.c, line 885
						//call
						//pcreltotemp
	.lipcrel	_init // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/main.c, line 886
						//call
						//pcreltotemp
	.lipcrel	_mainloop // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/main.c, line 887
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
	ldinc	r6
	mr	r7

	.section	.data.1c
	.global	_romtype
_romtype:
	.byte	0
	.section	.data.1d
	.global	_unit
_unit:
	.byte	0
	.section	.data.1e
	.global	_std_label_exit
_std_label_exit:
	.byte	128
	.byte	32
	.byte	69
	.byte	120
	.byte	105
	.byte	116
	.byte	0
	.section	.data.1f
	.global	_std_label_back
_std_label_back:
	.byte	128
	.byte	32
	.byte	66
	.byte	97
	.byte	99
	.byte	107
	.byte	0
	.section	.data.20
	.global	_menu
_menu:
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,30
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,60
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,90
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,120
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,150
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
						// Declaring from tree
						// static
	.ref	l42,180
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l41
	.int	0
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l40
	.int	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.21
	.weak	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l251
	.section	.bss.22
	.global	_menupage
	.comm	_menupage,4
	.section	.bss.23
	.global	_file
	.comm	_file,20
	.section	.bss.24
	.global	_menuindex
	.comm	_menuindex,4
	.section	.bss.25
	.global	_moremenu
	.comm	_moremenu,4
	.section	.bss.26
	.global	_romindex
	.comm	_romindex,4
	.section	.bss.27
	.global	_filename
	.comm	_filename,12
	.section	.rodata.28
l251:
	.byte	66
	.byte	79
	.byte	79
	.byte	84
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	0
	.section	.data.29
l149:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	32
	.byte	42
	.byte	46
	.byte	0
	.section	.bss.2a
	.lcomm	l42,210
