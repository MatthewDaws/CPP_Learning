
min2.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <.text>:
  401000:	c3                   	retq   
  401001:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401008:	0f 1f 84 00 00 00 00 
  40100f:	00 
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	31 c0                	xor    %eax,%eax
  401016:	66 81 3d e1 ef ff ff 	cmpw   $0x5a4d,-0x101f(%rip)        # 0x400000
  40101d:	4d 5a 
  40101f:	c7 05 1f 70 00 00 01 	movl   $0x1,0x701f(%rip)        # 0x408048
  401026:	00 00 00 
  401029:	c7 05 11 70 00 00 01 	movl   $0x1,0x7011(%rip)        # 0x408044
  401030:	00 00 00 
  401033:	c7 05 03 70 00 00 01 	movl   $0x1,0x7003(%rip)        # 0x408040
  40103a:	00 00 00 
  40103d:	c7 05 09 70 00 00 01 	movl   $0x1,0x7009(%rip)        # 0x408050
  401044:	00 00 00 
  401047:	74 67                	je     0x4010b0
  401049:	89 05 b9 6f 00 00    	mov    %eax,0x6fb9(%rip)        # 0x408008
  40104f:	8b 05 0b 70 00 00    	mov    0x700b(%rip),%eax        # 0x408060
  401055:	85 c0                	test   %eax,%eax
  401057:	74 48                	je     0x4010a1
  401059:	b9 02 00 00 00       	mov    $0x2,%ecx
  40105e:	e8 35 1d 00 00       	callq  0x402d98
  401063:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40106a:	e8 91 06 00 00       	callq  0x401700
  40106f:	8b 15 fb 6f 00 00    	mov    0x6ffb(%rip),%edx        # 0x408070
  401075:	48 89 05 1c 79 00 00 	mov    %rax,0x791c(%rip)        # 0x408998
  40107c:	48 89 05 0d 79 00 00 	mov    %rax,0x790d(%rip)        # 0x408990
  401083:	48 8b 05 e6 82 00 00 	mov    0x82e6(%rip),%rax        # 0x409370
  40108a:	89 10                	mov    %edx,(%rax)
  40108c:	e8 af 0b 00 00       	callq  0x401c40
  401091:	83 3d c8 2f 00 00 01 	cmpl   $0x1,0x2fc8(%rip)        # 0x404060
  401098:	74 66                	je     0x401100
  40109a:	31 c0                	xor    %eax,%eax
  40109c:	48 83 c4 28          	add    $0x28,%rsp
  4010a0:	c3                   	retq   
  4010a1:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a6:	e8 ed 1c 00 00       	callq  0x402d98
  4010ab:	eb b6                	jmp    0x401063
  4010ad:	0f 1f 00             	nopl   (%rax)
  4010b0:	48 63 0d 85 ef ff ff 	movslq -0x107b(%rip),%rcx        # 0x40003c
  4010b7:	48 8d 15 42 ef ff ff 	lea    -0x10be(%rip),%rdx        # 0x400000
  4010be:	48 01 ca             	add    %rcx,%rdx
  4010c1:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4010c7:	75 80                	jne    0x401049
  4010c9:	0f b7 4a 18          	movzwl 0x18(%rdx),%ecx
  4010cd:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010d2:	74 3f                	je     0x401113
  4010d4:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010d9:	0f 85 6a ff ff ff    	jne    0x401049
  4010df:	83 ba 84 00 00 00 0e 	cmpl   $0xe,0x84(%rdx)
  4010e6:	0f 86 5d ff ff ff    	jbe    0x401049
  4010ec:	8b 92 f8 00 00 00    	mov    0xf8(%rdx),%edx
  4010f2:	31 c0                	xor    %eax,%eax
  4010f4:	85 d2                	test   %edx,%edx
  4010f6:	0f 95 c0             	setne  %al
  4010f9:	e9 4b ff ff ff       	jmpq   0x401049
  4010fe:	66 90                	xchg   %ax,%ax
  401100:	48 8d 0d a9 0b 00 00 	lea    0xba9(%rip),%rcx        # 0x401cb0
  401107:	e8 94 0b 00 00       	callq  0x401ca0
  40110c:	31 c0                	xor    %eax,%eax
  40110e:	48 83 c4 28          	add    $0x28,%rsp
  401112:	c3                   	retq   
  401113:	83 7a 74 0e          	cmpl   $0xe,0x74(%rdx)
  401117:	0f 86 2c ff ff ff    	jbe    0x401049
  40111d:	8b 8a e8 00 00 00    	mov    0xe8(%rdx),%ecx
  401123:	31 c0                	xor    %eax,%eax
  401125:	85 c9                	test   %ecx,%ecx
  401127:	0f 95 c0             	setne  %al
  40112a:	e9 1a ff ff ff       	jmpq   0x401049
  40112f:	90                   	nop
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	8b 05 46 6f 00 00    	mov    0x6f46(%rip),%eax        # 0x408080
  40113a:	4c 8d 05 d7 6e 00 00 	lea    0x6ed7(%rip),%r8        # 0x408018
  401141:	44 8b 0d d8 2e 00 00 	mov    0x2ed8(%rip),%r9d        # 0x404020
  401148:	48 8d 15 d1 6e 00 00 	lea    0x6ed1(%rip),%rdx        # 0x408020
  40114f:	48 8d 0d d2 6e 00 00 	lea    0x6ed2(%rip),%rcx        # 0x408028
  401156:	89 05 a4 6e 00 00    	mov    %eax,0x6ea4(%rip)        # 0x408000
  40115c:	48 8d 05 9d 6e 00 00 	lea    0x6e9d(%rip),%rax        # 0x408000
  401163:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401168:	e8 33 1c 00 00       	callq  0x402da0
  40116d:	89 05 9d 6e 00 00    	mov    %eax,0x6e9d(%rip)        # 0x408010
  401173:	48 83 c4 38          	add    $0x38,%rsp
  401177:	c3                   	retq   
  401178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40117f:	00 
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	44 8b 0d ca 6e 00 00 	mov    0x6eca(%rip),%r9d        # 0x408060
  401196:	31 c0                	xor    %eax,%eax
  401198:	b9 0d 00 00 00       	mov    $0xd,%ecx
  40119d:	45 85 c9             	test   %r9d,%r9d
  4011a0:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4011a5:	48 89 d7             	mov    %rdx,%rdi
  4011a8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011ab:	0f 85 af 02 00 00    	jne    0x401460
  4011b1:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011b8:	00 00 
  4011ba:	31 f6                	xor    %esi,%esi
  4011bc:	48 8b 58 08          	mov    0x8(%rax),%rbx
  4011c0:	48 8b 3d 11 81 00 00 	mov    0x8111(%rip),%rdi        # 0x4092d8
  4011c7:	eb 17                	jmp    0x4011e0
  4011c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4011d0:	48 39 c3             	cmp    %rax,%rbx
  4011d3:	0f 84 27 02 00 00    	je     0x401400
  4011d9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011de:	ff d7                	callq  *%rdi
  4011e0:	48 89 f0             	mov    %rsi,%rax
  4011e3:	f0 48 0f b1 1d bc 77 	lock cmpxchg %rbx,0x77bc(%rip)        # 0x4089a8
  4011ea:	00 00 
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 df                	jne    0x4011d0
  4011f1:	8b 05 a9 77 00 00    	mov    0x77a9(%rip),%eax        # 0x4089a0
  4011f7:	31 db                	xor    %ebx,%ebx
  4011f9:	83 f8 01             	cmp    $0x1,%eax
  4011fc:	0f 84 12 02 00 00    	je     0x401414
  401202:	8b 05 98 77 00 00    	mov    0x7798(%rip),%eax        # 0x4089a0
  401208:	85 c0                	test   %eax,%eax
  40120a:	0f 84 60 02 00 00    	je     0x401470
  401210:	c7 05 ea 6d 00 00 01 	movl   $0x1,0x6dea(%rip)        # 0x408004
  401217:	00 00 00 
  40121a:	8b 05 80 77 00 00    	mov    0x7780(%rip),%eax        # 0x4089a0
  401220:	83 f8 01             	cmp    $0x1,%eax
  401223:	0f 84 04 02 00 00    	je     0x40142d
  401229:	85 db                	test   %ebx,%ebx
  40122b:	0f 84 21 02 00 00    	je     0x401452
  401231:	48 8b 05 e8 3d 00 00 	mov    0x3de8(%rip),%rax        # 0x405020
  401238:	48 85 c0             	test   %rax,%rax
  40123b:	74 0c                	je     0x401249
  40123d:	45 31 c0             	xor    %r8d,%r8d
  401240:	ba 02 00 00 00       	mov    $0x2,%edx
  401245:	31 c9                	xor    %ecx,%ecx
  401247:	ff d0                	callq  *%rax
  401249:	e8 02 0e 00 00       	callq  0x402050
  40124e:	48 8d 0d 3b 08 00 00 	lea    0x83b(%rip),%rcx        # 0x401a90
  401255:	ff 15 75 80 00 00    	callq  *0x8075(%rip)        # 0x4092d0
  40125b:	48 89 05 3e 6e 00 00 	mov    %rax,0x6e3e(%rip)        # 0x4080a0
  401262:	e8 39 07 00 00       	callq  0x4019a0
  401267:	48 8d 0d 92 fd ff ff 	lea    -0x26e(%rip),%rcx        # 0x401000
  40126e:	e8 4d 1b 00 00       	callq  0x402dc0
  401273:	e8 f8 10 00 00       	callq  0x402370
  401278:	48 8d 05 81 ed ff ff 	lea    -0x127f(%rip),%rax        # 0x400000
  40127f:	48 89 05 02 77 00 00 	mov    %rax,0x7702(%rip)        # 0x408988
  401286:	48 8b 05 c3 80 00 00 	mov    0x80c3(%rip),%rax        # 0x409350
  40128d:	48 8b 00             	mov    (%rax),%rax
  401290:	48 85 c0             	test   %rax,%rax
  401293:	74 52                	je     0x4012e7
  401295:	31 c9                	xor    %ecx,%ecx
  401297:	eb 18                	jmp    0x4012b1
  401299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 3c                	je     0x4012e0
  4012a4:	85 c9                	test   %ecx,%ecx
  4012a6:	74 2c                	je     0x4012d4
  4012a8:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ad:	48 83 c0 01          	add    $0x1,%rax
  4012b1:	0f b6 10             	movzbl (%rax),%edx
  4012b4:	80 fa 20             	cmp    $0x20,%dl
  4012b7:	7e e7                	jle    0x4012a0
  4012b9:	41 89 c8             	mov    %ecx,%r8d
  4012bc:	41 83 f0 01          	xor    $0x1,%r8d
  4012c0:	80 fa 22             	cmp    $0x22,%dl
  4012c3:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c7:	eb e4                	jmp    0x4012ad
  4012c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 0c                	je     0x4012e0
  4012d4:	48 83 c0 01          	add    $0x1,%rax
  4012d8:	0f b6 10             	movzbl (%rax),%edx
  4012db:	80 fa 20             	cmp    $0x20,%dl
  4012de:	7e f0                	jle    0x4012d0
  4012e0:	48 89 05 99 76 00 00 	mov    %rax,0x7699(%rip)        # 0x408980
  4012e7:	44 8b 05 72 6d 00 00 	mov    0x6d72(%rip),%r8d        # 0x408060
  4012ee:	45 85 c0             	test   %r8d,%r8d
  4012f1:	74 16                	je     0x401309
  4012f3:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  4012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4012fd:	0f 85 ed 00 00 00    	jne    0x4013f0
  401303:	89 05 f7 2c 00 00    	mov    %eax,0x2cf7(%rip)        # 0x404000
  401309:	44 8b 25 18 6d 00 00 	mov    0x6d18(%rip),%r12d        # 0x408028
  401310:	45 8d 6c 24 01       	lea    0x1(%r12),%r13d
  401315:	4d 63 ed             	movslq %r13d,%r13
  401318:	49 c1 e5 03          	shl    $0x3,%r13
  40131c:	4c 89 e9             	mov    %r13,%rcx
  40131f:	e8 ac 1a 00 00       	callq  0x402dd0
  401324:	45 85 e4             	test   %r12d,%r12d
  401327:	48 8b 3d f2 6c 00 00 	mov    0x6cf2(%rip),%rdi        # 0x408020
  40132e:	48 89 c5             	mov    %rax,%rbp
  401331:	0f 8e 5b 01 00 00    	jle    0x401492
  401337:	31 db                	xor    %ebx,%ebx
  401339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401340:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401344:	e8 8f 1a 00 00       	callq  0x402dd8
  401349:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134d:	48 89 f1             	mov    %rsi,%rcx
  401350:	e8 7b 1a 00 00       	callq  0x402dd0
  401355:	49 89 f0             	mov    %rsi,%r8
  401358:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40135d:	48 89 c1             	mov    %rax,%rcx
  401360:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  401364:	48 83 c3 01          	add    $0x1,%rbx
  401368:	e8 73 1a 00 00       	callq  0x402de0
  40136d:	41 39 dc             	cmp    %ebx,%r12d
  401370:	7f ce                	jg     0x401340
  401372:	49 83 ed 08          	sub    $0x8,%r13
  401376:	4a c7 44 2d 00 00 00 	movq   $0x0,0x0(%rbp,%r13,1)
  40137d:	00 00 
  40137f:	48 89 2d 9a 6c 00 00 	mov    %rbp,0x6c9a(%rip)        # 0x408020
  401386:	e8 95 10 00 00       	callq  0x402420
  40138b:	48 8b 15 86 6c 00 00 	mov    0x6c86(%rip),%rdx        # 0x408018
  401392:	48 8b 05 8f 7f 00 00 	mov    0x7f8f(%rip),%rax        # 0x409328
  401399:	8b 0d 89 6c 00 00    	mov    0x6c89(%rip),%ecx        # 0x408028
  40139f:	48 89 10             	mov    %rdx,(%rax)
  4013a2:	4c 8b 05 6f 6c 00 00 	mov    0x6c6f(%rip),%r8        # 0x408018
  4013a9:	48 8b 15 70 6c 00 00 	mov    0x6c70(%rip),%rdx        # 0x408020
  4013b0:	e8 9b 1b 00 00       	callq  0x402f50
  4013b5:	8b 0d 4d 6c 00 00    	mov    0x6c4d(%rip),%ecx        # 0x408008
  4013bb:	89 05 4b 6c 00 00    	mov    %eax,0x6c4b(%rip)        # 0x40800c
  4013c1:	85 c9                	test   %ecx,%ecx
  4013c3:	0f 84 d1 00 00 00    	je     0x40149a
  4013c9:	8b 15 35 6c 00 00    	mov    0x6c35(%rip),%edx        # 0x408004
  4013cf:	85 d2                	test   %edx,%edx
  4013d1:	75 0b                	jne    0x4013de
  4013d3:	e8 10 1a 00 00       	callq  0x402de8
  4013d8:	8b 05 2e 6c 00 00    	mov    0x6c2e(%rip),%eax        # 0x40800c
  4013de:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013e5:	5b                   	pop    %rbx
  4013e6:	5e                   	pop    %rsi
  4013e7:	5f                   	pop    %rdi
  4013e8:	5d                   	pop    %rbp
  4013e9:	41 5c                	pop    %r12
  4013eb:	41 5d                	pop    %r13
  4013ed:	c3                   	retq   
  4013ee:	66 90                	xchg   %ax,%ax
  4013f0:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013f5:	e9 09 ff ff ff       	jmpq   0x401303
  4013fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401400:	8b 05 9a 75 00 00    	mov    0x759a(%rip),%eax        # 0x4089a0
  401406:	bb 01 00 00 00       	mov    $0x1,%ebx
  40140b:	83 f8 01             	cmp    $0x1,%eax
  40140e:	0f 85 ee fd ff ff    	jne    0x401202
  401414:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401419:	e8 d2 19 00 00       	callq  0x402df0
  40141e:	8b 05 7c 75 00 00    	mov    0x757c(%rip),%eax        # 0x4089a0
  401424:	83 f8 01             	cmp    $0x1,%eax
  401427:	0f 85 fc fd ff ff    	jne    0x401229
  40142d:	48 8d 15 dc 8b 00 00 	lea    0x8bdc(%rip),%rdx        # 0x40a010
  401434:	48 8d 0d c5 8b 00 00 	lea    0x8bc5(%rip),%rcx        # 0x40a000
  40143b:	e8 b8 19 00 00       	callq  0x402df8
  401440:	85 db                	test   %ebx,%ebx
  401442:	c7 05 54 75 00 00 02 	movl   $0x2,0x7554(%rip)        # 0x4089a0
  401449:	00 00 00 
  40144c:	0f 85 df fd ff ff    	jne    0x401231
  401452:	31 c0                	xor    %eax,%eax
  401454:	48 87 05 4d 75 00 00 	xchg   %rax,0x754d(%rip)        # 0x4089a8
  40145b:	e9 d1 fd ff ff       	jmpq   0x401231
  401460:	48 89 d1             	mov    %rdx,%rcx
  401463:	ff 15 17 7e 00 00    	callq  *0x7e17(%rip)        # 0x409280
  401469:	e9 43 fd ff ff       	jmpq   0x4011b1
  40146e:	66 90                	xchg   %ax,%ax
  401470:	48 8d 15 b9 8b 00 00 	lea    0x8bb9(%rip),%rdx        # 0x40a030
  401477:	c7 05 1f 75 00 00 01 	movl   $0x1,0x751f(%rip)        # 0x4089a0
  40147e:	00 00 00 
  401481:	48 8d 0d 90 8b 00 00 	lea    0x8b90(%rip),%rcx        # 0x40a018
  401488:	e8 6b 19 00 00       	callq  0x402df8
  40148d:	e9 88 fd ff ff       	jmpq   0x40121a
  401492:	45 31 ed             	xor    %r13d,%r13d
  401495:	e9 dc fe ff ff       	jmpq   0x401376
  40149a:	89 c1                	mov    %eax,%ecx
  40149c:	0f 1f 40 00          	nopl   0x0(%rax)
  4014a0:	e8 5b 19 00 00       	callq  0x402e00
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp
  4014b4:	c7 05 a2 6b 00 00 01 	movl   $0x1,0x6ba2(%rip)        # 0x408060
  4014bb:	00 00 00 
  4014be:	e8 7d 0f 00 00       	callq  0x402440
  4014c3:	e8 b8 fc ff ff       	callq  0x401180
  4014c8:	90                   	nop
  4014c9:	90                   	nop
  4014ca:	48 83 c4 28          	add    $0x28,%rsp
  4014ce:	c3                   	retq   
  4014cf:	90                   	nop
  4014d0:	48 83 ec 28          	sub    $0x28,%rsp
  4014d4:	c7 05 82 6b 00 00 00 	movl   $0x0,0x6b82(%rip)        # 0x408060
  4014db:	00 00 00 
  4014de:	e8 5d 0f 00 00       	callq  0x402440
  4014e3:	e8 98 fc ff ff       	callq  0x401180
  4014e8:	90                   	nop
  4014e9:	90                   	nop
  4014ea:	48 83 c4 28          	add    $0x28,%rsp
  4014ee:	c3                   	retq   
  4014ef:	90                   	nop
  4014f0:	48 8d 0d 39 6b 00 00 	lea    0x6b39(%rip),%rcx        # 0x408030
  4014f7:	e9 f4 00 00 00       	jmpq   0x4015f0
  4014fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401500:	53                   	push   %rbx
  401501:	48 83 ec 50          	sub    $0x50,%rsp
  401505:	0f 29 74 24 30       	movaps %xmm6,0x30(%rsp)
  40150a:	0f 29 7c 24 40       	movaps %xmm7,0x40(%rsp)
  40150f:	48 85 c9             	test   %rcx,%rcx
  401512:	0f 88 9a 00 00 00    	js     0x4015b2
  401518:	66 0f ef ff          	pxor   %xmm7,%xmm7
  40151c:	f2 48 0f 2a f9       	cvtsi2sd %rcx,%xmm7
  401521:	f2 0f 51 f7          	sqrtsd %xmm7,%xmm6
  401525:	bb 02 00 00 00       	mov    $0x2,%ebx
  40152a:	eb 24                	jmp    0x401550
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)
  401530:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401534:	f2 48 0f 2a cb       	cvtsi2sd %rbx,%xmm1
  401539:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  40153d:	72 42                	jb     0x401581
  40153f:	31 d2                	xor    %edx,%edx
  401541:	48 89 c8             	mov    %rcx,%rax
  401544:	48 f7 f3             	div    %rbx
  401547:	48 85 d2             	test   %rdx,%rdx
  40154a:	74 54                	je     0x4015a0
  40154c:	48 83 c3 01          	add    $0x1,%rbx
  401550:	66 0f 2e f6          	ucomisd %xmm6,%xmm6
  401554:	66 0f 28 c6          	movapd %xmm6,%xmm0
  401558:	7a 79                	jp     0x4015d3
  40155a:	48 85 db             	test   %rbx,%rbx
  40155d:	79 d1                	jns    0x401530
  40155f:	48 89 da             	mov    %rbx,%rdx
  401562:	48 89 d8             	mov    %rbx,%rax
  401565:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401569:	48 d1 ea             	shr    %rdx
  40156c:	83 e0 01             	and    $0x1,%eax
  40156f:	48 09 c2             	or     %rax,%rdx
  401572:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  401577:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  40157b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  40157f:	73 be                	jae    0x40153f
  401581:	0f 28 74 24 30       	movaps 0x30(%rsp),%xmm6
  401586:	b8 01 00 00 00       	mov    $0x1,%eax
  40158b:	0f 28 7c 24 40       	movaps 0x40(%rsp),%xmm7
  401590:	48 83 c4 50          	add    $0x50,%rsp
  401594:	5b                   	pop    %rbx
  401595:	c3                   	retq   
  401596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40159d:	00 00 00 
  4015a0:	0f 28 74 24 30       	movaps 0x30(%rsp),%xmm6
  4015a5:	31 c0                	xor    %eax,%eax
  4015a7:	0f 28 7c 24 40       	movaps 0x40(%rsp),%xmm7
  4015ac:	48 83 c4 50          	add    $0x50,%rsp
  4015b0:	5b                   	pop    %rbx
  4015b1:	c3                   	retq   
  4015b2:	48 89 c8             	mov    %rcx,%rax
  4015b5:	48 89 ca             	mov    %rcx,%rdx
  4015b8:	66 0f ef ff          	pxor   %xmm7,%xmm7
  4015bc:	48 d1 e8             	shr    %rax
  4015bf:	83 e2 01             	and    $0x1,%edx
  4015c2:	48 09 d0             	or     %rdx,%rax
  4015c5:	f2 48 0f 2a f8       	cvtsi2sd %rax,%xmm7
  4015ca:	f2 0f 58 ff          	addsd  %xmm7,%xmm7
  4015ce:	e9 4e ff ff ff       	jmpq   0x401521
  4015d3:	66 0f 28 c7          	movapd %xmm7,%xmm0
  4015d7:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  4015dc:	e8 7f 16 00 00       	callq  0x402c60
  4015e1:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  4015e6:	e9 6f ff ff ff       	jmpq   0x40155a
  4015eb:	90                   	nop
  4015ec:	90                   	nop
  4015ed:	90                   	nop
  4015ee:	90                   	nop
  4015ef:	90                   	nop
  4015f0:	ff 25 2a 7e 00 00    	jmpq   *0x7e2a(%rip)        # 0x409420
  4015f6:	90                   	nop
  4015f7:	90                   	nop
  4015f8:	ff 25 12 7e 00 00    	jmpq   *0x7e12(%rip)        # 0x409410
  4015fe:	90                   	nop
  4015ff:	90                   	nop
  401600:	ff 25 fa 7d 00 00    	jmpq   *0x7dfa(%rip)        # 0x409400
  401606:	90                   	nop
  401607:	90                   	nop
  401608:	ff 25 1a 7e 00 00    	jmpq   *0x7e1a(%rip)        # 0x409428
  40160e:	90                   	nop
  40160f:	90                   	nop
  401610:	ff 25 f2 7d 00 00    	jmpq   *0x7df2(%rip)        # 0x409408
  401616:	90                   	nop
  401617:	90                   	nop
  401618:	ff 25 22 7e 00 00    	jmpq   *0x7e22(%rip)        # 0x409440
  40161e:	90                   	nop
  40161f:	90                   	nop
  401620:	ff 25 12 7e 00 00    	jmpq   *0x7e12(%rip)        # 0x409438
  401626:	90                   	nop
  401627:	90                   	nop
  401628:	ff 25 ea 7d 00 00    	jmpq   *0x7dea(%rip)        # 0x409418
  40162e:	90                   	nop
  40162f:	90                   	nop
  401630:	48 83 ec 28          	sub    $0x28,%rsp
  401634:	85 d2                	test   %edx,%edx
  401636:	74 18                	je     0x401650
  401638:	83 fa 03             	cmp    $0x3,%edx
  40163b:	74 13                	je     0x401650
  40163d:	b8 01 00 00 00       	mov    $0x1,%eax
  401642:	48 83 c4 28          	add    $0x28,%rsp
  401646:	c3                   	retq   
  401647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40164e:	00 00 
  401650:	e8 4b 11 00 00       	callq  0x4027a0
  401655:	b8 01 00 00 00       	mov    $0x1,%eax
  40165a:	48 83 c4 28          	add    $0x28,%rsp
  40165e:	c3                   	retq   
  40165f:	90                   	nop
  401660:	56                   	push   %rsi
  401661:	53                   	push   %rbx
  401662:	48 83 ec 28          	sub    $0x28,%rsp
  401666:	83 3d e3 29 00 00 02 	cmpl   $0x2,0x29e3(%rip)        # 0x404050
  40166d:	74 0a                	je     0x401679
  40166f:	c7 05 d7 29 00 00 02 	movl   $0x2,0x29d7(%rip)        # 0x404050
  401676:	00 00 00 
  401679:	83 fa 02             	cmp    $0x2,%edx
  40167c:	74 12                	je     0x401690
  40167e:	83 fa 01             	cmp    $0x1,%edx
  401681:	74 3f                	je     0x4016c2
  401683:	b8 01 00 00 00       	mov    $0x1,%eax
  401688:	48 83 c4 28          	add    $0x28,%rsp
  40168c:	5b                   	pop    %rbx
  40168d:	5e                   	pop    %rsi
  40168e:	c3                   	retq   
  40168f:	90                   	nop
  401690:	48 8d 1d c9 89 00 00 	lea    0x89c9(%rip),%rbx        # 0x40a060
  401697:	48 8d 35 c2 89 00 00 	lea    0x89c2(%rip),%rsi        # 0x40a060
  40169e:	48 39 f3             	cmp    %rsi,%rbx
  4016a1:	74 e0                	je     0x401683
  4016a3:	48 8b 03             	mov    (%rbx),%rax
  4016a6:	48 85 c0             	test   %rax,%rax
  4016a9:	74 02                	je     0x4016ad
  4016ab:	ff d0                	callq  *%rax
  4016ad:	48 83 c3 08          	add    $0x8,%rbx
  4016b1:	48 39 f3             	cmp    %rsi,%rbx
  4016b4:	75 ed                	jne    0x4016a3
  4016b6:	b8 01 00 00 00       	mov    $0x1,%eax
  4016bb:	48 83 c4 28          	add    $0x28,%rsp
  4016bf:	5b                   	pop    %rbx
  4016c0:	5e                   	pop    %rsi
  4016c1:	c3                   	retq   
  4016c2:	e8 d9 10 00 00       	callq  0x4027a0
  4016c7:	eb ba                	jmp    0x401683
  4016c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4016d0:	31 c0                	xor    %eax,%eax
  4016d2:	c3                   	retq   
  4016d3:	90                   	nop
  4016d4:	90                   	nop
  4016d5:	90                   	nop
  4016d6:	90                   	nop
  4016d7:	90                   	nop
  4016d8:	90                   	nop
  4016d9:	90                   	nop
  4016da:	90                   	nop
  4016db:	90                   	nop
  4016dc:	90                   	nop
  4016dd:	90                   	nop
  4016de:	90                   	nop
  4016df:	90                   	nop
  4016e0:	48 8b 05 51 7c 00 00 	mov    0x7c51(%rip),%rax        # 0x409338
  4016e7:	48 ff e0             	rex.W jmpq *%rax
  4016ea:	90                   	nop
  4016eb:	90                   	nop
  4016ec:	90                   	nop
  4016ed:	90                   	nop
  4016ee:	90                   	nop
  4016ef:	90                   	nop
  4016f0:	48 89 c8             	mov    %rcx,%rax
  4016f3:	c3                   	retq   
  4016f4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4016fb:	00 00 00 00 00 
  401700:	48 89 c8             	mov    %rcx,%rax
  401703:	c3                   	retq   
  401704:	90                   	nop
  401705:	90                   	nop
  401706:	90                   	nop
  401707:	90                   	nop
  401708:	90                   	nop
  401709:	90                   	nop
  40170a:	90                   	nop
  40170b:	90                   	nop
  40170c:	90                   	nop
  40170d:	90                   	nop
  40170e:	90                   	nop
  40170f:	90                   	nop
  401710:	53                   	push   %rbx
  401711:	48 83 ec 30          	sub    $0x30,%rsp
  401715:	48 89 cb             	mov    %rcx,%rbx
  401718:	48 8b 0d 71 72 00 00 	mov    0x7271(%rip),%rcx        # 0x408990
  40171f:	e8 cc ff ff ff       	callq  0x4016f0
  401724:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401728:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40172d:	74 76                	je     0x4017a5
  40172f:	b9 08 00 00 00       	mov    $0x8,%ecx
  401734:	e8 df 16 00 00       	callq  0x402e18
  401739:	48 8b 0d 50 72 00 00 	mov    0x7250(%rip),%rcx        # 0x408990
  401740:	e8 ab ff ff ff       	callq  0x4016f0
  401745:	48 8b 0d 4c 72 00 00 	mov    0x724c(%rip),%rcx        # 0x408998
  40174c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401751:	e8 9a ff ff ff       	callq  0x4016f0
  401756:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40175b:	48 89 d9             	mov    %rbx,%rcx
  40175e:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
  401763:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401768:	e8 b3 16 00 00       	callq  0x402e20
  40176d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401772:	48 89 c3             	mov    %rax,%rbx
  401775:	e8 86 ff ff ff       	callq  0x401700
  40177a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40177f:	48 89 05 0a 72 00 00 	mov    %rax,0x720a(%rip)        # 0x408990
  401786:	e8 75 ff ff ff       	callq  0x401700
  40178b:	b9 08 00 00 00       	mov    $0x8,%ecx
  401790:	48 89 05 01 72 00 00 	mov    %rax,0x7201(%rip)        # 0x408998
  401797:	e8 8c 16 00 00       	callq  0x402e28
  40179c:	48 89 d8             	mov    %rbx,%rax
  40179f:	48 83 c4 30          	add    $0x30,%rsp
  4017a3:	5b                   	pop    %rbx
  4017a4:	c3                   	retq   
  4017a5:	48 89 d9             	mov    %rbx,%rcx
  4017a8:	ff 15 da 7b 00 00    	callq  *0x7bda(%rip)        # 0x409388
  4017ae:	48 83 c4 30          	add    $0x30,%rsp
  4017b2:	5b                   	pop    %rbx
  4017b3:	c3                   	retq   
  4017b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4017bb:	00 00 00 00 00 
  4017c0:	48 83 ec 28          	sub    $0x28,%rsp
  4017c4:	e8 47 ff ff ff       	callq  0x401710
  4017c9:	48 85 c0             	test   %rax,%rax
  4017cc:	0f 94 c0             	sete   %al
  4017cf:	0f b6 c0             	movzbl %al,%eax
  4017d2:	f7 d8                	neg    %eax
  4017d4:	48 83 c4 28          	add    $0x28,%rsp
  4017d8:	c3                   	retq   
  4017d9:	90                   	nop
  4017da:	90                   	nop
  4017db:	90                   	nop
  4017dc:	90                   	nop
  4017dd:	90                   	nop
  4017de:	90                   	nop
  4017df:	90                   	nop
  4017e0:	53                   	push   %rbx
  4017e1:	48 83 ec 30          	sub    $0x30,%rsp
  4017e5:	8b 01                	mov    (%rcx),%eax
  4017e7:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4017ec:	77 62                	ja     0x401850
  4017ee:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4017f3:	73 7e                	jae    0x401873
  4017f5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4017fa:	0f 84 10 01 00 00    	je     0x401910
  401800:	0f 87 ea 00 00 00    	ja     0x4018f0
  401806:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40180b:	0f 84 ff 00 00 00    	je     0x401910
  401811:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401816:	0f 85 e2 00 00 00    	jne    0x4018fe
  40181c:	31 d2                	xor    %edx,%edx
  40181e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401823:	e8 08 16 00 00       	callq  0x402e30
  401828:	48 83 f8 01          	cmp    $0x1,%rax
  40182c:	0f 84 34 01 00 00    	je     0x401966
  401832:	48 85 c0             	test   %rax,%rax
  401835:	0f 84 f5 00 00 00    	je     0x401930
  40183b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401840:	ff d0                	callq  *%rax
  401842:	31 c0                	xor    %eax,%eax
  401844:	48 83 c4 30          	add    $0x30,%rsp
  401848:	5b                   	pop    %rbx
  401849:	c3                   	retq   
  40184a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401850:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401855:	0f 84 c5 00 00 00    	je     0x401920
  40185b:	77 53                	ja     0x4018b0
  40185d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401862:	0f 84 a8 00 00 00    	je     0x401910
  401868:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  40186d:	0f 85 8b 00 00 00    	jne    0x4018fe
  401873:	bb 01 00 00 00       	mov    $0x1,%ebx
  401878:	31 d2                	xor    %edx,%edx
  40187a:	b9 08 00 00 00       	mov    $0x8,%ecx
  40187f:	e8 ac 15 00 00       	callq  0x402e30
  401884:	48 83 f8 01          	cmp    $0x1,%rax
  401888:	48 89 c2             	mov    %rax,%rdx
  40188b:	0f 84 af 00 00 00    	je     0x401940
  401891:	48 85 d2             	test   %rdx,%rdx
  401894:	b8 01 00 00 00       	mov    $0x1,%eax
  401899:	74 a9                	je     0x401844
  40189b:	b9 08 00 00 00       	mov    $0x8,%ecx
  4018a0:	ff d2                	callq  *%rdx
  4018a2:	31 c0                	xor    %eax,%eax
  4018a4:	48 83 c4 30          	add    $0x30,%rsp
  4018a8:	5b                   	pop    %rbx
  4018a9:	c3                   	retq   
  4018aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4018b0:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4018b5:	74 59                	je     0x401910
  4018b7:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4018bc:	75 40                	jne    0x4018fe
  4018be:	31 d2                	xor    %edx,%edx
  4018c0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4018c5:	e8 66 15 00 00       	callq  0x402e30
  4018ca:	48 83 f8 01          	cmp    $0x1,%rax
  4018ce:	0f 84 a8 00 00 00    	je     0x40197c
  4018d4:	48 85 c0             	test   %rax,%rax
  4018d7:	74 57                	je     0x401930
  4018d9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4018de:	ff d0                	callq  *%rax
  4018e0:	31 c0                	xor    %eax,%eax
  4018e2:	e9 5d ff ff ff       	jmpq   0x401844
  4018e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018ee:	00 00 
  4018f0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4018f5:	74 c7                	je     0x4018be
  4018f7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4018fc:	74 12                	je     0x401910
  4018fe:	b8 01 00 00 00       	mov    $0x1,%eax
  401903:	48 83 c4 30          	add    $0x30,%rsp
  401907:	5b                   	pop    %rbx
  401908:	c3                   	retq   
  401909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401910:	31 c0                	xor    %eax,%eax
  401912:	48 83 c4 30          	add    $0x30,%rsp
  401916:	5b                   	pop    %rbx
  401917:	c3                   	retq   
  401918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40191f:	00 
  401920:	31 db                	xor    %ebx,%ebx
  401922:	e9 51 ff ff ff       	jmpq   0x401878
  401927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40192e:	00 00 
  401930:	b8 04 00 00 00       	mov    $0x4,%eax
  401935:	48 83 c4 30          	add    $0x30,%rsp
  401939:	5b                   	pop    %rbx
  40193a:	c3                   	retq   
  40193b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401940:	b9 08 00 00 00       	mov    $0x8,%ecx
  401945:	e8 e6 14 00 00       	callq  0x402e30
  40194a:	31 c0                	xor    %eax,%eax
  40194c:	85 db                	test   %ebx,%ebx
  40194e:	0f 84 f0 fe ff ff    	je     0x401844
  401954:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  401958:	e8 13 0a 00 00       	callq  0x402370
  40195d:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  401961:	e9 de fe ff ff       	jmpq   0x401844
  401966:	ba 01 00 00 00       	mov    $0x1,%edx
  40196b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401970:	e8 bb 14 00 00       	callq  0x402e30
  401975:	31 c0                	xor    %eax,%eax
  401977:	e9 c8 fe ff ff       	jmpq   0x401844
  40197c:	ba 01 00 00 00       	mov    $0x1,%edx
  401981:	b9 04 00 00 00       	mov    $0x4,%ecx
  401986:	e8 a5 14 00 00       	callq  0x402e30
  40198b:	31 c0                	xor    %eax,%eax
  40198d:	e9 b2 fe ff ff       	jmpq   0x401844
  401992:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401999:	1f 84 00 00 00 00 00 
  4019a0:	41 54                	push   %r12
  4019a2:	55                   	push   %rbp
  4019a3:	57                   	push   %rdi
  4019a4:	56                   	push   %rsi
  4019a5:	53                   	push   %rbx
  4019a6:	48 83 ec 20          	sub    $0x20,%rsp
  4019aa:	e8 11 11 00 00       	callq  0x402ac0
  4019af:	8b 15 f3 66 00 00    	mov    0x66f3(%rip),%edx        # 0x4080a8
  4019b5:	48 89 c5             	mov    %rax,%rbp
  4019b8:	85 d2                	test   %edx,%edx
  4019ba:	89 d0                	mov    %edx,%eax
  4019bc:	75 25                	jne    0x4019e3
  4019be:	48 85 ed             	test   %rbp,%rbp
  4019c1:	74 20                	je     0x4019e3
  4019c3:	48 8d 0d 66 36 00 00 	lea    0x3666(%rip),%rcx        # 0x405030
  4019ca:	c7 05 d4 66 00 00 01 	movl   $0x1,0x66d4(%rip)        # 0x4080a8
  4019d1:	00 00 00 
  4019d4:	e8 f7 0e 00 00       	callq  0x4028d0
  4019d9:	48 85 c0             	test   %rax,%rax
  4019dc:	74 12                	je     0x4019f0
  4019de:	b8 01 00 00 00       	mov    $0x1,%eax
  4019e3:	48 83 c4 20          	add    $0x20,%rsp
  4019e7:	5b                   	pop    %rbx
  4019e8:	5e                   	pop    %rsi
  4019e9:	5f                   	pop    %rdi
  4019ea:	5d                   	pop    %rbp
  4019eb:	41 5c                	pop    %r12
  4019ed:	c3                   	retq   
  4019ee:	66 90                	xchg   %ax,%ax
  4019f0:	48 8d 1d c9 67 00 00 	lea    0x67c9(%rip),%rbx        # 0x4081c0
  4019f7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4019fc:	48 8d 35 bd 66 00 00 	lea    0x66bd(%rip),%rsi        # 0x4080c0
  401a03:	48 89 df             	mov    %rbx,%rdi
  401a06:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401a09:	4c 8d 25 d0 fd ff ff 	lea    -0x230(%rip),%r12        # 0x4017e0
  401a10:	48 89 f7             	mov    %rsi,%rdi
  401a13:	49 29 ec             	sub    %rbp,%r12
  401a16:	b1 20                	mov    $0x20,%cl
  401a18:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401a1b:	31 ff                	xor    %edi,%edi
  401a1d:	eb 2f                	jmp    0x401a4e
  401a1f:	90                   	nop
  401a20:	c6 06 09             	movb   $0x9,(%rsi)
  401a23:	48 83 c7 01          	add    $0x1,%rdi
  401a27:	48 83 c3 0c          	add    $0xc,%rbx
  401a2b:	44 89 66 04          	mov    %r12d,0x4(%rsi)
  401a2f:	8b 42 0c             	mov    0xc(%rdx),%eax
  401a32:	89 43 f4             	mov    %eax,-0xc(%rbx)
  401a35:	03 42 08             	add    0x8(%rdx),%eax
  401a38:	89 43 f8             	mov    %eax,-0x8(%rbx)
  401a3b:	48 89 f0             	mov    %rsi,%rax
  401a3e:	48 83 c6 08          	add    $0x8,%rsi
  401a42:	48 29 e8             	sub    %rbp,%rax
  401a45:	89 43 fc             	mov    %eax,-0x4(%rbx)
  401a48:	48 83 ff 20          	cmp    $0x20,%rdi
  401a4c:	74 37                	je     0x401a85
  401a4e:	48 89 f9             	mov    %rdi,%rcx
  401a51:	e8 ca 0f 00 00       	callq  0x402a20
  401a56:	48 85 c0             	test   %rax,%rax
  401a59:	48 89 c2             	mov    %rax,%rdx
  401a5c:	75 c2                	jne    0x401a20
  401a5e:	48 85 ff             	test   %rdi,%rdi
  401a61:	0f 84 77 ff ff ff    	je     0x4019de
  401a67:	89 fa                	mov    %edi,%edx
  401a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a70:	48 8d 0d 49 67 00 00 	lea    0x6749(%rip),%rcx        # 0x4081c0
  401a77:	49 89 e8             	mov    %rbp,%r8
  401a7a:	ff 15 30 78 00 00    	callq  *0x7830(%rip)        # 0x4092b0
  401a80:	e9 59 ff ff ff       	jmpq   0x4019de
  401a85:	ba 20 00 00 00       	mov    $0x20,%edx
  401a8a:	eb e4                	jmp    0x401a70
  401a8c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a90:	56                   	push   %rsi
  401a91:	53                   	push   %rbx
  401a92:	48 83 ec 28          	sub    $0x28,%rsp
  401a96:	48 8b 11             	mov    (%rcx),%rdx
  401a99:	48 89 cb             	mov    %rcx,%rbx
  401a9c:	8b 02                	mov    (%rdx),%eax
  401a9e:	89 c1                	mov    %eax,%ecx
  401aa0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  401aa6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  401aac:	0f 84 d3 00 00 00    	je     0x401b85
  401ab2:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401ab7:	0f 87 83 00 00 00    	ja     0x401b40
  401abd:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401ac2:	0f 83 93 00 00 00    	jae    0x401b5b
  401ac8:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401acd:	74 32                	je     0x401b01
  401acf:	77 3f                	ja     0x401b10
  401ad1:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401ad6:	74 29                	je     0x401b01
  401ad8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401add:	75 43                	jne    0x401b22
  401adf:	31 d2                	xor    %edx,%edx
  401ae1:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401ae6:	e8 45 13 00 00       	callq  0x402e30
  401aeb:	48 83 f8 01          	cmp    $0x1,%rax
  401aef:	0f 84 20 01 00 00    	je     0x401c15
  401af5:	48 85 c0             	test   %rax,%rax
  401af8:	74 28                	je     0x401b22
  401afa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401aff:	ff d0                	callq  *%rax
  401b01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b06:	48 83 c4 28          	add    $0x28,%rsp
  401b0a:	5b                   	pop    %rbx
  401b0b:	5e                   	pop    %rsi
  401b0c:	c3                   	retq   
  401b0d:	0f 1f 00             	nopl   (%rax)
  401b10:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  401b15:	0f 84 8f 00 00 00    	je     0x401baa
  401b1b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  401b20:	74 df                	je     0x401b01
  401b22:	48 8b 05 77 65 00 00 	mov    0x6577(%rip),%rax        # 0x4080a0
  401b29:	48 85 c0             	test   %rax,%rax
  401b2c:	74 d8                	je     0x401b06
  401b2e:	48 89 d9             	mov    %rbx,%rcx
  401b31:	48 83 c4 28          	add    $0x28,%rsp
  401b35:	5b                   	pop    %rbx
  401b36:	5e                   	pop    %rsi
  401b37:	48 ff e0             	rex.W jmpq *%rax
  401b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401b40:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401b45:	0f 84 95 00 00 00    	je     0x401be0
  401b4b:	77 47                	ja     0x401b94
  401b4d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401b52:	74 ad                	je     0x401b01
  401b54:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401b59:	75 c7                	jne    0x401b22
  401b5b:	be 01 00 00 00       	mov    $0x1,%esi
  401b60:	31 d2                	xor    %edx,%edx
  401b62:	b9 08 00 00 00       	mov    $0x8,%ecx
  401b67:	e8 c4 12 00 00       	callq  0x402e30
  401b6c:	48 83 f8 01          	cmp    $0x1,%rax
  401b70:	74 7e                	je     0x401bf0
  401b72:	48 85 c0             	test   %rax,%rax
  401b75:	74 ab                	je     0x401b22
  401b77:	b9 08 00 00 00       	mov    $0x8,%ecx
  401b7c:	ff d0                	callq  *%rax
  401b7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b83:	eb 81                	jmp    0x401b06
  401b85:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  401b89:	0f 85 23 ff ff ff    	jne    0x401ab2
  401b8f:	e9 6d ff ff ff       	jmpq   0x401b01
  401b94:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401b99:	0f 84 62 ff ff ff    	je     0x401b01
  401b9f:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401ba4:	0f 85 78 ff ff ff    	jne    0x401b22
  401baa:	31 d2                	xor    %edx,%edx
  401bac:	b9 04 00 00 00       	mov    $0x4,%ecx
  401bb1:	e8 7a 12 00 00       	callq  0x402e30
  401bb6:	48 83 f8 01          	cmp    $0x1,%rax
  401bba:	74 6d                	je     0x401c29
  401bbc:	48 85 c0             	test   %rax,%rax
  401bbf:	0f 84 5d ff ff ff    	je     0x401b22
  401bc5:	b9 04 00 00 00       	mov    $0x4,%ecx
  401bca:	ff d0                	callq  *%rax
  401bcc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bd1:	e9 30 ff ff ff       	jmpq   0x401b06
  401bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bdd:	00 00 00 
  401be0:	31 f6                	xor    %esi,%esi
  401be2:	e9 79 ff ff ff       	jmpq   0x401b60
  401be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401bee:	00 00 
  401bf0:	ba 01 00 00 00       	mov    $0x1,%edx
  401bf5:	b9 08 00 00 00       	mov    $0x8,%ecx
  401bfa:	e8 31 12 00 00       	callq  0x402e30
  401bff:	85 f6                	test   %esi,%esi
  401c01:	0f 84 fa fe ff ff    	je     0x401b01
  401c07:	e8 64 07 00 00       	callq  0x402370
  401c0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c10:	e9 ec fe ff ff       	jmpq   0x401b01
  401c15:	ba 01 00 00 00       	mov    $0x1,%edx
  401c1a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401c1f:	e8 0c 12 00 00       	callq  0x402e30
  401c24:	e9 d8 fe ff ff       	jmpq   0x401b01
  401c29:	ba 01 00 00 00       	mov    $0x1,%edx
  401c2e:	b9 04 00 00 00       	mov    $0x4,%ecx
  401c33:	e8 f8 11 00 00       	callq  0x402e30
  401c38:	e9 c4 fe ff ff       	jmpq   0x401b01
  401c3d:	90                   	nop
  401c3e:	90                   	nop
  401c3f:	90                   	nop
  401c40:	31 c0                	xor    %eax,%eax
  401c42:	c3                   	retq   
  401c43:	90                   	nop
  401c44:	90                   	nop
  401c45:	90                   	nop
  401c46:	90                   	nop
  401c47:	90                   	nop
  401c48:	90                   	nop
  401c49:	90                   	nop
  401c4a:	90                   	nop
  401c4b:	90                   	nop
  401c4c:	90                   	nop
  401c4d:	90                   	nop
  401c4e:	90                   	nop
  401c4f:	90                   	nop
  401c50:	48 83 ec 58          	sub    $0x58,%rsp
  401c54:	48 8b 05 e5 66 00 00 	mov    0x66e5(%rip),%rax        # 0x408340
  401c5b:	48 85 c0             	test   %rax,%rax
  401c5e:	74 2c                	je     0x401c8c
  401c60:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401c67:	00 00 
  401c69:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401c6d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401c72:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401c77:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401c7d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401c83:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401c89:	ff d0                	callq  *%rax
  401c8b:	90                   	nop
  401c8c:	48 83 c4 58          	add    $0x58,%rsp
  401c90:	c3                   	retq   
  401c91:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401c98:	0f 1f 84 00 00 00 00 
  401c9f:	00 
  401ca0:	48 89 0d 99 66 00 00 	mov    %rcx,0x6699(%rip)        # 0x408340
  401ca7:	e9 8c 11 00 00       	jmpq   0x402e38
  401cac:	0f 1f 40 00          	nopl   0x0(%rax)
  401cb0:	56                   	push   %rsi
  401cb1:	53                   	push   %rbx
  401cb2:	48 83 ec 78          	sub    $0x78,%rsp
  401cb6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401cbb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401cc0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401cc6:	83 39 06             	cmpl   $0x6,(%rcx)
  401cc9:	0f 87 d1 00 00 00    	ja     0x401da0
  401ccf:	8b 11                	mov    (%rcx),%edx
  401cd1:	48 8d 05 8c 34 00 00 	lea    0x348c(%rip),%rax        # 0x405164
  401cd8:	48 63 14 90          	movslq (%rax,%rdx,4),%rdx
  401cdc:	48 01 d0             	add    %rdx,%rax
  401cdf:	ff e0                	jmpq   *%rax
  401ce1:	48 8d 1d 77 33 00 00 	lea    0x3377(%rip),%rbx        # 0x40505f
  401ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401cef:	00 
  401cf0:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401cf4:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401cfa:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401cff:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401d04:	e8 37 11 00 00       	callq  0x402e40
  401d09:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401d10:	49 89 f1             	mov    %rsi,%r9
  401d13:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401d19:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401d1d:	49 89 d8             	mov    %rbx,%r8
  401d20:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401d26:	48 8d 15 0b 34 00 00 	lea    0x340b(%rip),%rdx        # 0x405138
  401d2d:	e8 16 11 00 00       	callq  0x402e48
  401d32:	90                   	nop
  401d33:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401d38:	31 c0                	xor    %eax,%eax
  401d3a:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401d3f:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401d45:	48 83 c4 78          	add    $0x78,%rsp
  401d49:	5b                   	pop    %rbx
  401d4a:	5e                   	pop    %rsi
  401d4b:	c3                   	retq   
  401d4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401d50:	48 8d 1d 29 33 00 00 	lea    0x3329(%rip),%rbx        # 0x405080
  401d57:	eb 97                	jmp    0x401cf0
  401d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401d60:	48 8d 1d 89 33 00 00 	lea    0x3389(%rip),%rbx        # 0x4050f0
  401d67:	eb 87                	jmp    0x401cf0
  401d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401d70:	48 8d 1d 51 33 00 00 	lea    0x3351(%rip),%rbx        # 0x4050c8
  401d77:	e9 74 ff ff ff       	jmpq   0x401cf0
  401d7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401d80:	48 8d 1d 19 33 00 00 	lea    0x3319(%rip),%rbx        # 0x4050a0
  401d87:	e9 64 ff ff ff       	jmpq   0x401cf0
  401d8c:	0f 1f 40 00          	nopl   0x0(%rax)
  401d90:	48 8d 1d a9 32 00 00 	lea    0x32a9(%rip),%rbx        # 0x405040
  401d97:	e9 54 ff ff ff       	jmpq   0x401cf0
  401d9c:	0f 1f 40 00          	nopl   0x0(%rax)
  401da0:	48 8d 1d 7f 33 00 00 	lea    0x337f(%rip),%rbx        # 0x405126
  401da7:	e9 44 ff ff ff       	jmpq   0x401cf0
  401dac:	90                   	nop
  401dad:	90                   	nop
  401dae:	90                   	nop
  401daf:	90                   	nop
  401db0:	56                   	push   %rsi
  401db1:	53                   	push   %rbx
  401db2:	48 83 ec 38          	sub    $0x38,%rsp
  401db6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401dbb:	48 89 cb             	mov    %rcx,%rbx
  401dbe:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401dc3:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401dc8:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401dcd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401dd2:	e8 69 10 00 00       	callq  0x402e40
  401dd7:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401ddd:	ba 01 00 00 00       	mov    $0x1,%edx
  401de2:	4c 8d 48 60          	lea    0x60(%rax),%r9
  401de6:	48 8d 0d 93 33 00 00 	lea    0x3393(%rip),%rcx        # 0x405180
  401ded:	e8 5e 10 00 00       	callq  0x402e50
  401df2:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401df7:	e8 44 10 00 00       	callq  0x402e40
  401dfc:	48 89 da             	mov    %rbx,%rdx
  401dff:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401e03:	49 89 f0             	mov    %rsi,%r8
  401e06:	e8 4d 10 00 00       	callq  0x402e58
  401e0b:	e8 50 10 00 00       	callq  0x402e60
  401e10:	90                   	nop
  401e11:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401e18:	0f 1f 84 00 00 00 00 
  401e1f:	00 
  401e20:	41 56                	push   %r14
  401e22:	41 55                	push   %r13
  401e24:	41 54                	push   %r12
  401e26:	55                   	push   %rbp
  401e27:	57                   	push   %rdi
  401e28:	56                   	push   %rsi
  401e29:	53                   	push   %rbx
  401e2a:	48 83 ec 60          	sub    $0x60,%rsp
  401e2e:	48 89 ce             	mov    %rcx,%rsi
  401e31:	8b 0d 1d 65 00 00    	mov    0x651d(%rip),%ecx        # 0x408354
  401e37:	48 89 d7             	mov    %rdx,%rdi
  401e3a:	4c 89 c5             	mov    %r8,%rbp
  401e3d:	85 c9                	test   %ecx,%ecx
  401e3f:	0f 8e c0 01 00 00    	jle    0x402005
  401e45:	48 8b 05 0c 65 00 00 	mov    0x650c(%rip),%rax        # 0x408358
  401e4c:	31 db                	xor    %ebx,%ebx
  401e4e:	66 90                	xchg   %ax,%ax
  401e50:	4c 8b 48 08          	mov    0x8(%rax),%r9
  401e54:	4c 39 ce             	cmp    %r9,%rsi
  401e57:	72 13                	jb     0x401e6c
  401e59:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e5d:	8b 52 08             	mov    0x8(%rdx),%edx
  401e60:	49 01 d1             	add    %rdx,%r9
  401e63:	4c 39 ce             	cmp    %r9,%rsi
  401e66:	0f 82 d4 00 00 00    	jb     0x401f40
  401e6c:	83 c3 01             	add    $0x1,%ebx
  401e6f:	48 83 c0 18          	add    $0x18,%rax
  401e73:	39 cb                	cmp    %ecx,%ebx
  401e75:	75 d9                	jne    0x401e50
  401e77:	48 89 f1             	mov    %rsi,%rcx
  401e7a:	e8 01 0b 00 00       	callq  0x402980
  401e7f:	48 85 c0             	test   %rax,%rax
  401e82:	49 89 c4             	mov    %rax,%r12
  401e85:	0f 84 9e 01 00 00    	je     0x402029
  401e8b:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  401e90:	48 63 db             	movslq %ebx,%rbx
  401e93:	4c 8d 34 5b          	lea    (%rbx,%rbx,2),%r14
  401e97:	49 c1 e6 03          	shl    $0x3,%r14
  401e9b:	4c 89 f3             	mov    %r14,%rbx
  401e9e:	48 03 1d b3 64 00 00 	add    0x64b3(%rip),%rbx        # 0x408358
  401ea5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ea9:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
  401eaf:	e8 0c 0c 00 00       	callq  0x402ac0
  401eb4:	41 8b 54 24 0c       	mov    0xc(%r12),%edx
  401eb9:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401ebf:	48 01 d0             	add    %rdx,%rax
  401ec2:	4c 89 ea             	mov    %r13,%rdx
  401ec5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ec9:	48 8b 05 88 64 00 00 	mov    0x6488(%rip),%rax        # 0x408358
  401ed0:	48 8b 1d 29 74 00 00 	mov    0x7429(%rip),%rbx        # 0x409300
  401ed7:	4a 8b 4c 30 08       	mov    0x8(%rax,%r14,1),%rcx
  401edc:	ff d3                	callq  *%rbx
  401ede:	48 85 c0             	test   %rax,%rax
  401ee1:	0f 84 25 01 00 00    	je     0x40200c
  401ee7:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401eeb:	83 f8 04             	cmp    $0x4,%eax
  401eee:	0f 85 cc 00 00 00    	jne    0x401fc0
  401ef4:	83 05 59 64 00 00 01 	addl   $0x1,0x6459(%rip)        # 0x408354
  401efb:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401f01:	4c 89 ea             	mov    %r13,%rdx
  401f04:	48 89 f1             	mov    %rsi,%rcx
  401f07:	ff d3                	callq  *%rbx
  401f09:	48 85 c0             	test   %rax,%rax
  401f0c:	0f 84 26 01 00 00    	je     0x402038
  401f12:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401f16:	83 f8 04             	cmp    $0x4,%eax
  401f19:	75 35                	jne    0x401f50
  401f1b:	49 89 e8             	mov    %rbp,%r8
  401f1e:	48 89 fa             	mov    %rdi,%rdx
  401f21:	48 89 f1             	mov    %rsi,%rcx
  401f24:	48 83 c4 60          	add    $0x60,%rsp
  401f28:	5b                   	pop    %rbx
  401f29:	5e                   	pop    %rsi
  401f2a:	5f                   	pop    %rdi
  401f2b:	5d                   	pop    %rbp
  401f2c:	41 5c                	pop    %r12
  401f2e:	41 5d                	pop    %r13
  401f30:	41 5e                	pop    %r14
  401f32:	e9 a9 0e 00 00       	jmpq   0x402de0
  401f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401f3e:	00 00 
  401f40:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  401f45:	48 8b 1d b4 73 00 00 	mov    0x73b4(%rip),%rbx        # 0x409300
  401f4c:	eb ad                	jmp    0x401efb
  401f4e:	66 90                	xchg   %ax,%ax
  401f50:	83 f8 40             	cmp    $0x40,%eax
  401f53:	74 c6                	je     0x401f1b
  401f55:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  401f5a:	4c 8d 64 24 2c       	lea    0x2c(%rsp),%r12
  401f5f:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401f65:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401f6a:	4d 89 e1             	mov    %r12,%r9
  401f6d:	48 8b 1d 84 73 00 00 	mov    0x7384(%rip),%rbx        # 0x4092f8
  401f74:	ff d3                	callq  *%rbx
  401f76:	49 89 e8             	mov    %rbp,%r8
  401f79:	48 89 fa             	mov    %rdi,%rdx
  401f7c:	48 89 f1             	mov    %rsi,%rcx
  401f7f:	e8 5c 0e 00 00       	callq  0x402de0
  401f84:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401f88:	83 f8 40             	cmp    $0x40,%eax
  401f8b:	74 1a                	je     0x401fa7
  401f8d:	83 f8 04             	cmp    $0x4,%eax
  401f90:	74 15                	je     0x401fa7
  401f92:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  401f97:	4d 89 e1             	mov    %r12,%r9
  401f9a:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  401f9f:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401fa4:	ff d3                	callq  *%rbx
  401fa6:	90                   	nop
  401fa7:	48 83 c4 60          	add    $0x60,%rsp
  401fab:	5b                   	pop    %rbx
  401fac:	5e                   	pop    %rsi
  401fad:	5f                   	pop    %rdi
  401fae:	5d                   	pop    %rbp
  401faf:	41 5c                	pop    %r12
  401fb1:	41 5d                	pop    %r13
  401fb3:	41 5e                	pop    %r14
  401fb5:	c3                   	retq   
  401fb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401fbd:	00 00 00 
  401fc0:	83 f8 40             	cmp    $0x40,%eax
  401fc3:	0f 84 2b ff ff ff    	je     0x401ef4
  401fc9:	4c 03 35 88 63 00 00 	add    0x6388(%rip),%r14        # 0x408358
  401fd0:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401fd6:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  401fdb:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401fe0:	4d 89 f1             	mov    %r14,%r9
  401fe3:	ff 15 0f 73 00 00    	callq  *0x730f(%rip)        # 0x4092f8
  401fe9:	85 c0                	test   %eax,%eax
  401feb:	0f 85 03 ff ff ff    	jne    0x401ef4
  401ff1:	ff 15 81 72 00 00    	callq  *0x7281(%rip)        # 0x409278
  401ff7:	48 8d 0d fa 31 00 00 	lea    0x31fa(%rip),%rcx        # 0x4051f8
  401ffe:	89 c2                	mov    %eax,%edx
  402000:	e8 ab fd ff ff       	callq  0x401db0
  402005:	31 db                	xor    %ebx,%ebx
  402007:	e9 6b fe ff ff       	jmpq   0x401e77
  40200c:	48 8b 05 45 63 00 00 	mov    0x6345(%rip),%rax        # 0x408358
  402013:	48 8d 0d a6 31 00 00 	lea    0x31a6(%rip),%rcx        # 0x4051c0
  40201a:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  40201f:	4e 8b 44 30 08       	mov    0x8(%rax,%r14,1),%r8
  402024:	e8 87 fd ff ff       	callq  0x401db0
  402029:	48 8d 0d 70 31 00 00 	lea    0x3170(%rip),%rcx        # 0x4051a0
  402030:	48 89 f2             	mov    %rsi,%rdx
  402033:	e8 78 fd ff ff       	callq  0x401db0
  402038:	48 8d 0d 81 31 00 00 	lea    0x3181(%rip),%rcx        # 0x4051c0
  40203f:	49 89 f0             	mov    %rsi,%r8
  402042:	ba 30 00 00 00       	mov    $0x30,%edx
  402047:	e8 64 fd ff ff       	callq  0x401db0
  40204c:	90                   	nop
  40204d:	0f 1f 00             	nopl   (%rax)
  402050:	55                   	push   %rbp
  402051:	41 56                	push   %r14
  402053:	41 55                	push   %r13
  402055:	41 54                	push   %r12
  402057:	57                   	push   %rdi
  402058:	56                   	push   %rsi
  402059:	53                   	push   %rbx
  40205a:	48 89 e5             	mov    %rsp,%rbp
  40205d:	48 83 ec 60          	sub    $0x60,%rsp
  402061:	8b 1d e9 62 00 00    	mov    0x62e9(%rip),%ebx        # 0x408350
  402067:	85 db                	test   %ebx,%ebx
  402069:	74 15                	je     0x402080
  40206b:	48 89 ec             	mov    %rbp,%rsp
  40206e:	5b                   	pop    %rbx
  40206f:	5e                   	pop    %rsi
  402070:	5f                   	pop    %rdi
  402071:	41 5c                	pop    %r12
  402073:	41 5d                	pop    %r13
  402075:	41 5e                	pop    %r14
  402077:	5d                   	pop    %rbp
  402078:	c3                   	retq   
  402079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402080:	c7 05 c6 62 00 00 01 	movl   $0x1,0x62c6(%rip)        # 0x408350
  402087:	00 00 00 
  40208a:	e8 41 09 00 00       	callq  0x4029d0
  40208f:	48 98                	cltq   
  402091:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  402095:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40209c:	00 
  40209d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020a1:	e8 7a 0b 00 00       	callq  0x402c20
  4020a6:	48 8d 35 5b 39 00 00 	lea    0x395b(%rip),%rsi        # 0x405a08
  4020ad:	c7 05 9d 62 00 00 00 	movl   $0x0,0x629d(%rip)        # 0x408354
  4020b4:	00 00 00 
  4020b7:	48 8d 1d 32 39 00 00 	lea    0x3932(%rip),%rbx        # 0x4059f0
  4020be:	48 29 c4             	sub    %rax,%rsp
  4020c1:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4020c6:	48 89 05 8b 62 00 00 	mov    %rax,0x628b(%rip)        # 0x408358
  4020cd:	48 89 f0             	mov    %rsi,%rax
  4020d0:	48 29 d8             	sub    %rbx,%rax
  4020d3:	48 83 f8 07          	cmp    $0x7,%rax
  4020d7:	7e 92                	jle    0x40206b
  4020d9:	48 83 f8 0b          	cmp    $0xb,%rax
  4020dd:	7e 33                	jle    0x402112
  4020df:	44 8b 1d 0a 39 00 00 	mov    0x390a(%rip),%r11d        # 0x4059f0
  4020e6:	45 85 db             	test   %r11d,%r11d
  4020e9:	0f 85 51 01 00 00    	jne    0x402240
  4020ef:	44 8b 15 fe 38 00 00 	mov    0x38fe(%rip),%r10d        # 0x4059f4
  4020f6:	45 85 d2             	test   %r10d,%r10d
  4020f9:	0f 85 41 01 00 00    	jne    0x402240
  4020ff:	44 8b 0d f2 38 00 00 	mov    0x38f2(%rip),%r9d        # 0x4059f8
  402106:	45 85 c9             	test   %r9d,%r9d
  402109:	75 1e                	jne    0x402129
  40210b:	48 8d 1d ea 38 00 00 	lea    0x38ea(%rip),%rbx        # 0x4059fc
  402112:	44 8b 03             	mov    (%rbx),%r8d
  402115:	45 85 c0             	test   %r8d,%r8d
  402118:	0f 85 22 01 00 00    	jne    0x402240
  40211e:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402121:	85 c9                	test   %ecx,%ecx
  402123:	0f 85 17 01 00 00    	jne    0x402240
  402129:	8b 53 08             	mov    0x8(%rbx),%edx
  40212c:	83 fa 01             	cmp    $0x1,%edx
  40212f:	0f 85 28 02 00 00    	jne    0x40235d
  402135:	48 83 c3 0c          	add    $0xc,%rbx
  402139:	48 39 f3             	cmp    %rsi,%rbx
  40213c:	0f 83 29 ff ff ff    	jae    0x40206b
  402142:	4c 8d 35 b7 de ff ff 	lea    -0x2149(%rip),%r14        # 0x400000
  402149:	49 bd 00 00 00 00 ff 	movabs $0xffffffff00000000,%r13
  402150:	ff ff ff 
  402153:	4c 8d 65 d0          	lea    -0x30(%rbp),%r12
  402157:	8b 4b 04             	mov    0x4(%rbx),%ecx
  40215a:	44 8b 03             	mov    (%rbx),%r8d
  40215d:	0f b6 43 08          	movzbl 0x8(%rbx),%eax
  402161:	4c 01 f1             	add    %r14,%rcx
  402164:	4d 01 f0             	add    %r14,%r8
  402167:	83 f8 10             	cmp    $0x10,%eax
  40216a:	49 8b 10             	mov    (%r8),%rdx
  40216d:	0f 84 49 01 00 00    	je     0x4022bc
  402173:	0f 86 05 01 00 00    	jbe    0x40227e
  402179:	83 f8 20             	cmp    $0x20,%eax
  40217c:	0f 84 8a 01 00 00    	je     0x40230c
  402182:	83 f8 40             	cmp    $0x40,%eax
  402185:	0f 85 6b 01 00 00    	jne    0x4022f6
  40218b:	4c 29 c2             	sub    %r8,%rdx
  40218e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402194:	4c 89 e7             	mov    %r12,%rdi
  402197:	48 03 11             	add    (%rcx),%rdx
  40219a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40219e:	4c 89 e2             	mov    %r12,%rdx
  4021a1:	e8 7a fc ff ff       	callq  0x401e20
  4021a6:	48 83 c3 0c          	add    $0xc,%rbx
  4021aa:	48 39 f3             	cmp    %rsi,%rbx
  4021ad:	72 a8                	jb     0x402157
  4021af:	90                   	nop
  4021b0:	8b 05 9e 61 00 00    	mov    0x619e(%rip),%eax        # 0x408354
  4021b6:	31 db                	xor    %ebx,%ebx
  4021b8:	31 f6                	xor    %esi,%esi
  4021ba:	85 c0                	test   %eax,%eax
  4021bc:	0f 8e a9 fe ff ff    	jle    0x40206b
  4021c2:	4c 8b 35 37 71 00 00 	mov    0x7137(%rip),%r14        # 0x409300
  4021c9:	4c 8d 6d cc          	lea    -0x34(%rbp),%r13
  4021cd:	4c 8b 25 24 71 00 00 	mov    0x7124(%rip),%r12        # 0x4092f8
  4021d4:	eb 1d                	jmp    0x4021f3
  4021d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021dd:	00 00 00 
  4021e0:	83 c6 01             	add    $0x1,%esi
  4021e3:	48 83 c3 18          	add    $0x18,%rbx
  4021e7:	3b 35 67 61 00 00    	cmp    0x6167(%rip),%esi        # 0x408354
  4021ed:	0f 8d 78 fe ff ff    	jge    0x40206b
  4021f3:	48 89 d8             	mov    %rbx,%rax
  4021f6:	48 03 05 5b 61 00 00 	add    0x615b(%rip),%rax        # 0x408358
  4021fd:	8b 10                	mov    (%rax),%edx
  4021ff:	85 d2                	test   %edx,%edx
  402201:	74 dd                	je     0x4021e0
  402203:	48 8b 48 08          	mov    0x8(%rax),%rcx
  402207:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  40220d:	48 89 fa             	mov    %rdi,%rdx
  402210:	41 ff d6             	callq  *%r14
  402213:	48 85 c0             	test   %rax,%rax
  402216:	0f 84 23 01 00 00    	je     0x40233f
  40221c:	48 8b 05 35 61 00 00 	mov    0x6135(%rip),%rax        # 0x408358
  402223:	4d 89 e9             	mov    %r13,%r9
  402226:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40222a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40222e:	44 8b 04 18          	mov    (%rax,%rbx,1),%r8d
  402232:	41 ff d4             	callq  *%r12
  402235:	eb a9                	jmp    0x4021e0
  402237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40223e:	00 00 
  402240:	48 39 f3             	cmp    %rsi,%rbx
  402243:	0f 83 22 fe ff ff    	jae    0x40206b
  402249:	4c 8d 25 b0 dd ff ff 	lea    -0x2250(%rip),%r12        # 0x400000
  402250:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  402254:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402257:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40225d:	48 89 fa             	mov    %rdi,%rdx
  402260:	48 83 c3 08          	add    $0x8,%rbx
  402264:	4c 01 e1             	add    %r12,%rcx
  402267:	8b 01                	mov    (%rcx),%eax
  402269:	03 43 f8             	add    -0x8(%rbx),%eax
  40226c:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40226f:	e8 ac fb ff ff       	callq  0x401e20
  402274:	48 39 f3             	cmp    %rsi,%rbx
  402277:	72 db                	jb     0x402254
  402279:	e9 32 ff ff ff       	jmpq   0x4021b0
  40227e:	83 f8 08             	cmp    $0x8,%eax
  402281:	75 73                	jne    0x4022f6
  402283:	44 0f b6 09          	movzbl (%rcx),%r9d
  402287:	4c 89 e7             	mov    %r12,%rdi
  40228a:	41 0f b6 c1          	movzbl %r9b,%eax
  40228e:	49 89 c2             	mov    %rax,%r10
  402291:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  402298:	45 84 c9             	test   %r9b,%r9b
  40229b:	49 0f 48 c2          	cmovs  %r10,%rax
  40229f:	4c 29 c0             	sub    %r8,%rax
  4022a2:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4022a8:	48 01 d0             	add    %rdx,%rax
  4022ab:	4c 89 e2             	mov    %r12,%rdx
  4022ae:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4022b2:	e8 69 fb ff ff       	callq  0x401e20
  4022b7:	e9 ea fe ff ff       	jmpq   0x4021a6
  4022bc:	44 0f b7 09          	movzwl (%rcx),%r9d
  4022c0:	4c 89 e7             	mov    %r12,%rdi
  4022c3:	41 0f b7 c1          	movzwl %r9w,%eax
  4022c7:	49 89 c2             	mov    %rax,%r10
  4022ca:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  4022d1:	66 45 85 c9          	test   %r9w,%r9w
  4022d5:	49 0f 48 c2          	cmovs  %r10,%rax
  4022d9:	4c 29 c0             	sub    %r8,%rax
  4022dc:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  4022e2:	48 01 d0             	add    %rdx,%rax
  4022e5:	4c 89 e2             	mov    %r12,%rdx
  4022e8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4022ec:	e8 2f fb ff ff       	callq  0x401e20
  4022f1:	e9 b0 fe ff ff       	jmpq   0x4021a6
  4022f6:	89 c2                	mov    %eax,%edx
  4022f8:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  4022ff:	00 
  402300:	48 8d 0d 51 2f 00 00 	lea    0x2f51(%rip),%rcx        # 0x405258
  402307:	e8 a4 fa ff ff       	callq  0x401db0
  40230c:	44 8b 09             	mov    (%rcx),%r9d
  40230f:	4c 89 e7             	mov    %r12,%rdi
  402312:	44 89 c8             	mov    %r9d,%eax
  402315:	49 89 c2             	mov    %rax,%r10
  402318:	4d 09 ea             	or     %r13,%r10
  40231b:	45 85 c9             	test   %r9d,%r9d
  40231e:	49 0f 48 c2          	cmovs  %r10,%rax
  402322:	4c 29 c0             	sub    %r8,%rax
  402325:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40232b:	48 01 d0             	add    %rdx,%rax
  40232e:	4c 89 e2             	mov    %r12,%rdx
  402331:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  402335:	e8 e6 fa ff ff       	callq  0x401e20
  40233a:	e9 67 fe ff ff       	jmpq   0x4021a6
  40233f:	48 03 1d 12 60 00 00 	add    0x6012(%rip),%rbx        # 0x408358
  402346:	48 8d 0d 73 2e 00 00 	lea    0x2e73(%rip),%rcx        # 0x4051c0
  40234d:	48 8b 43 10          	mov    0x10(%rbx),%rax
  402351:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  402355:	8b 50 08             	mov    0x8(%rax),%edx
  402358:	e8 53 fa ff ff       	callq  0x401db0
  40235d:	48 8d 0d bc 2e 00 00 	lea    0x2ebc(%rip),%rcx        # 0x405220
  402364:	e8 47 fa ff ff       	callq  0x401db0
  402369:	90                   	nop
  40236a:	90                   	nop
  40236b:	90                   	nop
  40236c:	90                   	nop
  40236d:	90                   	nop
  40236e:	90                   	nop
  40236f:	90                   	nop
  402370:	db e3                	fninit 
  402372:	c3                   	retq   
  402373:	90                   	nop
  402374:	90                   	nop
  402375:	90                   	nop
  402376:	90                   	nop
  402377:	90                   	nop
  402378:	90                   	nop
  402379:	90                   	nop
  40237a:	90                   	nop
  40237b:	90                   	nop
  40237c:	90                   	nop
  40237d:	90                   	nop
  40237e:	90                   	nop
  40237f:	90                   	nop
  402380:	48 83 ec 28          	sub    $0x28,%rsp
  402384:	48 8b 05 b5 1c 00 00 	mov    0x1cb5(%rip),%rax        # 0x404040
  40238b:	48 8b 00             	mov    (%rax),%rax
  40238e:	48 85 c0             	test   %rax,%rax
  402391:	74 1d                	je     0x4023b0
  402393:	ff d0                	callq  *%rax
  402395:	48 8b 05 a4 1c 00 00 	mov    0x1ca4(%rip),%rax        # 0x404040
  40239c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4023a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4023a4:	48 89 15 95 1c 00 00 	mov    %rdx,0x1c95(%rip)        # 0x404040
  4023ab:	48 85 c0             	test   %rax,%rax
  4023ae:	75 e3                	jne    0x402393
  4023b0:	48 83 c4 28          	add    $0x28,%rsp
  4023b4:	c3                   	retq   
  4023b5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4023bc:	00 00 00 00 
  4023c0:	56                   	push   %rsi
  4023c1:	53                   	push   %rbx
  4023c2:	48 83 ec 28          	sub    $0x28,%rsp
  4023c6:	48 8b 05 e3 0c 00 00 	mov    0xce3(%rip),%rax        # 0x4030b0
  4023cd:	83 f8 ff             	cmp    $0xffffffff,%eax
  4023d0:	89 c3                	mov    %eax,%ebx
  4023d2:	74 2c                	je     0x402400
  4023d4:	48 8d 35 d5 0c 00 00 	lea    0xcd5(%rip),%rsi        # 0x4030b0
  4023db:	85 db                	test   %ebx,%ebx
  4023dd:	74 0b                	je     0x4023ea
  4023df:	90                   	nop
  4023e0:	89 d8                	mov    %ebx,%eax
  4023e2:	ff 14 c6             	callq  *(%rsi,%rax,8)
  4023e5:	83 eb 01             	sub    $0x1,%ebx
  4023e8:	75 f6                	jne    0x4023e0
  4023ea:	48 8d 0d 8f ff ff ff 	lea    -0x71(%rip),%rcx        # 0x402380
  4023f1:	48 83 c4 28          	add    $0x28,%rsp
  4023f5:	5b                   	pop    %rbx
  4023f6:	5e                   	pop    %rsi
  4023f7:	e9 c4 f3 ff ff       	jmpq   0x4017c0
  4023fc:	0f 1f 40 00          	nopl   0x0(%rax)
  402400:	48 8d 35 a9 0c 00 00 	lea    0xca9(%rip),%rsi        # 0x4030b0
  402407:	31 db                	xor    %ebx,%ebx
  402409:	eb 07                	jmp    0x402412
  40240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402410:	89 c3                	mov    %eax,%ebx
  402412:	8d 43 01             	lea    0x1(%rbx),%eax
  402415:	89 c2                	mov    %eax,%edx
  402417:	48 83 3c d6 00       	cmpq   $0x0,(%rsi,%rdx,8)
  40241c:	75 f2                	jne    0x402410
  40241e:	eb b4                	jmp    0x4023d4
  402420:	8b 05 3a 5f 00 00    	mov    0x5f3a(%rip),%eax        # 0x408360
  402426:	85 c0                	test   %eax,%eax
  402428:	74 06                	je     0x402430
  40242a:	f3 c3                	repz retq 
  40242c:	0f 1f 40 00          	nopl   0x0(%rax)
  402430:	c7 05 26 5f 00 00 01 	movl   $0x1,0x5f26(%rip)        # 0x408360
  402437:	00 00 00 
  40243a:	eb 84                	jmp    0x4023c0
  40243c:	90                   	nop
  40243d:	90                   	nop
  40243e:	90                   	nop
  40243f:	90                   	nop
  402440:	41 54                	push   %r12
  402442:	55                   	push   %rbp
  402443:	57                   	push   %rdi
  402444:	56                   	push   %rsi
  402445:	53                   	push   %rbx
  402446:	48 83 ec 40          	sub    $0x40,%rsp
  40244a:	48 8b 1d 2f 1c 00 00 	mov    0x1c2f(%rip),%rbx        # 0x404080
  402451:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  402458:	2b 00 00 
  40245b:	48 39 c3             	cmp    %rax,%rbx
  40245e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402465:	00 00 
  402467:	74 17                	je     0x402480
  402469:	48 f7 d3             	not    %rbx
  40246c:	48 89 1d 1d 1c 00 00 	mov    %rbx,0x1c1d(%rip)        # 0x404090
  402473:	48 83 c4 40          	add    $0x40,%rsp
  402477:	5b                   	pop    %rbx
  402478:	5e                   	pop    %rsi
  402479:	5f                   	pop    %rdi
  40247a:	5d                   	pop    %rbp
  40247b:	41 5c                	pop    %r12
  40247d:	c3                   	retq   
  40247e:	66 90                	xchg   %ax,%ax
  402480:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402485:	ff 15 fd 6d 00 00    	callq  *0x6dfd(%rip)        # 0x409288
  40248b:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  402490:	ff 15 d2 6d 00 00    	callq  *0x6dd2(%rip)        # 0x409268
  402496:	89 c5                	mov    %eax,%ebp
  402498:	ff 15 d2 6d 00 00    	callq  *0x6dd2(%rip)        # 0x409270
  40249e:	89 c7                	mov    %eax,%edi
  4024a0:	ff 15 ea 6d 00 00    	callq  *0x6dea(%rip)        # 0x409290
  4024a6:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  4024ab:	89 c6                	mov    %eax,%esi
  4024ad:	ff 15 f5 6d 00 00    	callq  *0x6df5(%rip)        # 0x4092a8
  4024b3:	4c 89 e2             	mov    %r12,%rdx
  4024b6:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
  4024bd:	ff 00 00 
  4024c0:	48 33 54 24 30       	xor    0x30(%rsp),%rdx
  4024c5:	48 31 ea             	xor    %rbp,%rdx
  4024c8:	48 31 fa             	xor    %rdi,%rdx
  4024cb:	48 31 f2             	xor    %rsi,%rdx
  4024ce:	48 21 c2             	and    %rax,%rdx
  4024d1:	48 39 da             	cmp    %rbx,%rdx
  4024d4:	74 1f                	je     0x4024f5
  4024d6:	48 89 d0             	mov    %rdx,%rax
  4024d9:	48 f7 d0             	not    %rax
  4024dc:	48 89 15 9d 1b 00 00 	mov    %rdx,0x1b9d(%rip)        # 0x404080
  4024e3:	48 89 05 a6 1b 00 00 	mov    %rax,0x1ba6(%rip)        # 0x404090
  4024ea:	48 83 c4 40          	add    $0x40,%rsp
  4024ee:	5b                   	pop    %rbx
  4024ef:	5e                   	pop    %rsi
  4024f0:	5f                   	pop    %rdi
  4024f1:	5d                   	pop    %rbp
  4024f2:	41 5c                	pop    %r12
  4024f4:	c3                   	retq   
  4024f5:	48 b8 cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rax
  4024fc:	d4 ff ff 
  4024ff:	48 ba 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rdx
  402506:	2b 00 00 
  402509:	eb d1                	jmp    0x4024dc
  40250b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402510:	55                   	push   %rbp
  402511:	56                   	push   %rsi
  402512:	53                   	push   %rbx
  402513:	48 89 e5             	mov    %rsp,%rbp
  402516:	48 83 ec 70          	sub    $0x70,%rsp
  40251a:	48 89 ce             	mov    %rcx,%rsi
  40251d:	48 8d 0d 5c 5e 00 00 	lea    0x5e5c(%rip),%rcx        # 0x408380
  402524:	ff 15 8e 6d 00 00    	callq  *0x6d8e(%rip)        # 0x4092b8
  40252a:	48 8b 1d 47 5f 00 00 	mov    0x5f47(%rip),%rbx        # 0x408478
  402531:	45 31 c0             	xor    %r8d,%r8d
  402534:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  402538:	48 89 d9             	mov    %rbx,%rcx
  40253b:	ff 15 7f 6d 00 00    	callq  *0x6d7f(%rip)        # 0x4092c0
  402541:	48 85 c0             	test   %rax,%rax
  402544:	49 89 c1             	mov    %rax,%r9
  402547:	0f 84 a3 00 00 00    	je     0x4025f0
  40254d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402551:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402555:	49 89 d8             	mov    %rbx,%r8
  402558:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40255d:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402561:	31 c9                	xor    %ecx,%ecx
  402563:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402568:	48 8d 05 11 5e 00 00 	lea    0x5e11(%rip),%rax        # 0x408380
  40256f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402576:	00 00 
  402578:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40257d:	ff 15 45 6d 00 00    	callq  *0x6d45(%rip)        # 0x4092c8
  402583:	48 8b 05 ee 5e 00 00 	mov    0x5eee(%rip),%rax        # 0x408478
  40258a:	31 c9                	xor    %ecx,%ecx
  40258c:	48 89 35 6d 5e 00 00 	mov    %rsi,0x5e6d(%rip)        # 0x408400
  402593:	c7 05 c3 62 00 00 09 	movl   $0xc0000409,0x62c3(%rip)        # 0x408860
  40259a:	04 00 c0 
  40259d:	c7 05 bd 62 00 00 01 	movl   $0x1,0x62bd(%rip)        # 0x408864
  4025a4:	00 00 00 
  4025a7:	48 89 05 c2 62 00 00 	mov    %rax,0x62c2(%rip)        # 0x408870
  4025ae:	48 8b 05 cb 1a 00 00 	mov    0x1acb(%rip),%rax        # 0x404080
  4025b5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4025b9:	48 8b 05 d0 1a 00 00 	mov    0x1ad0(%rip),%rax        # 0x404090
  4025c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4025c4:	ff 15 06 6d 00 00    	callq  *0x6d06(%rip)        # 0x4092d0
  4025ca:	48 8d 0d bf 2c 00 00 	lea    0x2cbf(%rip),%rcx        # 0x405290
  4025d1:	ff 15 19 6d 00 00    	callq  *0x6d19(%rip)        # 0x4092f0
  4025d7:	ff 15 83 6c 00 00    	callq  *0x6c83(%rip)        # 0x409260
  4025dd:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  4025e2:	48 89 c1             	mov    %rax,%rcx
  4025e5:	ff 15 f5 6c 00 00    	callq  *0x6cf5(%rip)        # 0x4092e0
  4025eb:	e8 70 08 00 00       	callq  0x402e60
  4025f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4025f4:	48 89 05 7d 5e 00 00 	mov    %rax,0x5e7d(%rip)        # 0x408478
  4025fb:	48 8d 45 08          	lea    0x8(%rbp),%rax
  4025ff:	48 89 05 12 5e 00 00 	mov    %rax,0x5e12(%rip)        # 0x408418
  402606:	e9 78 ff ff ff       	jmpq   0x402583
  40260b:	90                   	nop
  40260c:	90                   	nop
  40260d:	90                   	nop
  40260e:	90                   	nop
  40260f:	90                   	nop
  402610:	55                   	push   %rbp
  402611:	57                   	push   %rdi
  402612:	56                   	push   %rsi
  402613:	53                   	push   %rbx
  402614:	48 83 ec 28          	sub    $0x28,%rsp
  402618:	48 8d 0d 01 63 00 00 	lea    0x6301(%rip),%rcx        # 0x408920
  40261f:	ff 15 33 6c 00 00    	callq  *0x6c33(%rip)        # 0x409258
  402625:	48 8b 1d d4 62 00 00 	mov    0x62d4(%rip),%rbx        # 0x408900
  40262c:	48 85 db             	test   %rbx,%rbx
  40262f:	74 33                	je     0x402664
  402631:	48 8b 2d b0 6c 00 00 	mov    0x6cb0(%rip),%rbp        # 0x4092e8
  402638:	48 8b 3d 39 6c 00 00 	mov    0x6c39(%rip),%rdi        # 0x409278
  40263f:	90                   	nop
  402640:	8b 0b                	mov    (%rbx),%ecx
  402642:	ff d5                	callq  *%rbp
  402644:	48 89 c6             	mov    %rax,%rsi
  402647:	ff d7                	callq  *%rdi
  402649:	85 c0                	test   %eax,%eax
  40264b:	75 0e                	jne    0x40265b
  40264d:	48 85 f6             	test   %rsi,%rsi
  402650:	74 09                	je     0x40265b
  402652:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402656:	48 89 f1             	mov    %rsi,%rcx
  402659:	ff d0                	callq  *%rax
  40265b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40265f:	48 85 db             	test   %rbx,%rbx
  402662:	75 dc                	jne    0x402640
  402664:	48 8b 05 35 6c 00 00 	mov    0x6c35(%rip),%rax        # 0x4092a0
  40266b:	48 8d 0d ae 62 00 00 	lea    0x62ae(%rip),%rcx        # 0x408920
  402672:	48 83 c4 28          	add    $0x28,%rsp
  402676:	5b                   	pop    %rbx
  402677:	5e                   	pop    %rsi
  402678:	5f                   	pop    %rdi
  402679:	5d                   	pop    %rbp
  40267a:	48 ff e0             	rex.W jmpq *%rax
  40267d:	0f 1f 00             	nopl   (%rax)
  402680:	55                   	push   %rbp
  402681:	57                   	push   %rdi
  402682:	56                   	push   %rsi
  402683:	53                   	push   %rbx
  402684:	48 83 ec 28          	sub    $0x28,%rsp
  402688:	8b 05 7a 62 00 00    	mov    0x627a(%rip),%eax        # 0x408908
  40268e:	31 f6                	xor    %esi,%esi
  402690:	85 c0                	test   %eax,%eax
  402692:	89 cd                	mov    %ecx,%ebp
  402694:	48 89 d7             	mov    %rdx,%rdi
  402697:	75 0b                	jne    0x4026a4
  402699:	89 f0                	mov    %esi,%eax
  40269b:	48 83 c4 28          	add    $0x28,%rsp
  40269f:	5b                   	pop    %rbx
  4026a0:	5e                   	pop    %rsi
  4026a1:	5f                   	pop    %rdi
  4026a2:	5d                   	pop    %rbp
  4026a3:	c3                   	retq   
  4026a4:	ba 18 00 00 00       	mov    $0x18,%edx
  4026a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4026ae:	e8 b5 07 00 00       	callq  0x402e68
  4026b3:	48 85 c0             	test   %rax,%rax
  4026b6:	48 89 c3             	mov    %rax,%rbx
  4026b9:	74 3d                	je     0x4026f8
  4026bb:	89 28                	mov    %ebp,(%rax)
  4026bd:	48 8d 0d 5c 62 00 00 	lea    0x625c(%rip),%rcx        # 0x408920
  4026c4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4026c8:	ff 15 8a 6b 00 00    	callq  *0x6b8a(%rip)        # 0x409258
  4026ce:	48 8b 05 2b 62 00 00 	mov    0x622b(%rip),%rax        # 0x408900
  4026d5:	48 8d 0d 44 62 00 00 	lea    0x6244(%rip),%rcx        # 0x408920
  4026dc:	48 89 1d 1d 62 00 00 	mov    %rbx,0x621d(%rip)        # 0x408900
  4026e3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026e7:	ff 15 b3 6b 00 00    	callq  *0x6bb3(%rip)        # 0x4092a0
  4026ed:	89 f0                	mov    %esi,%eax
  4026ef:	48 83 c4 28          	add    $0x28,%rsp
  4026f3:	5b                   	pop    %rbx
  4026f4:	5e                   	pop    %rsi
  4026f5:	5f                   	pop    %rdi
  4026f6:	5d                   	pop    %rbp
  4026f7:	c3                   	retq   
  4026f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4026fd:	eb 9a                	jmp    0x402699
  4026ff:	90                   	nop
  402700:	53                   	push   %rbx
  402701:	48 83 ec 20          	sub    $0x20,%rsp
  402705:	8b 05 fd 61 00 00    	mov    0x61fd(%rip),%eax        # 0x408908
  40270b:	85 c0                	test   %eax,%eax
  40270d:	89 cb                	mov    %ecx,%ebx
  40270f:	75 0f                	jne    0x402720
  402711:	31 c0                	xor    %eax,%eax
  402713:	48 83 c4 20          	add    $0x20,%rsp
  402717:	5b                   	pop    %rbx
  402718:	c3                   	retq   
  402719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402720:	48 8d 0d f9 61 00 00 	lea    0x61f9(%rip),%rcx        # 0x408920
  402727:	ff 15 2b 6b 00 00    	callq  *0x6b2b(%rip)        # 0x409258
  40272d:	48 8b 15 cc 61 00 00 	mov    0x61cc(%rip),%rdx        # 0x408900
  402734:	48 85 d2             	test   %rdx,%rdx
  402737:	74 1c                	je     0x402755
  402739:	8b 02                	mov    (%rdx),%eax
  40273b:	39 d8                	cmp    %ebx,%eax
  40273d:	75 0d                	jne    0x40274c
  40273f:	eb 4e                	jmp    0x40278f
  402741:	44 8b 00             	mov    (%rax),%r8d
  402744:	41 39 d8             	cmp    %ebx,%r8d
  402747:	74 27                	je     0x402770
  402749:	48 89 c2             	mov    %rax,%rdx
  40274c:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402750:	48 85 c0             	test   %rax,%rax
  402753:	75 ec                	jne    0x402741
  402755:	48 8d 0d c4 61 00 00 	lea    0x61c4(%rip),%rcx        # 0x408920
  40275c:	ff 15 3e 6b 00 00    	callq  *0x6b3e(%rip)        # 0x4092a0
  402762:	31 c0                	xor    %eax,%eax
  402764:	48 83 c4 20          	add    $0x20,%rsp
  402768:	5b                   	pop    %rbx
  402769:	c3                   	retq   
  40276a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402770:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402774:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
  402778:	48 89 c1             	mov    %rax,%rcx
  40277b:	e8 f0 06 00 00       	callq  0x402e70
  402780:	48 8d 0d 99 61 00 00 	lea    0x6199(%rip),%rcx        # 0x408920
  402787:	ff 15 13 6b 00 00    	callq  *0x6b13(%rip)        # 0x4092a0
  40278d:	eb d3                	jmp    0x402762
  40278f:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402793:	48 89 05 66 61 00 00 	mov    %rax,0x6166(%rip)        # 0x408900
  40279a:	48 89 d0             	mov    %rdx,%rax
  40279d:	eb d9                	jmp    0x402778
  40279f:	90                   	nop
  4027a0:	48 83 ec 28          	sub    $0x28,%rsp
  4027a4:	83 fa 01             	cmp    $0x1,%edx
  4027a7:	74 49                	je     0x4027f2
  4027a9:	72 19                	jb     0x4027c4
  4027ab:	83 fa 03             	cmp    $0x3,%edx
  4027ae:	75 0a                	jne    0x4027ba
  4027b0:	8b 05 52 61 00 00    	mov    0x6152(%rip),%eax        # 0x408908
  4027b6:	85 c0                	test   %eax,%eax
  4027b8:	75 66                	jne    0x402820
  4027ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4027bf:	48 83 c4 28          	add    $0x28,%rsp
  4027c3:	c3                   	retq   
  4027c4:	8b 05 3e 61 00 00    	mov    0x613e(%rip),%eax        # 0x408908
  4027ca:	85 c0                	test   %eax,%eax
  4027cc:	75 62                	jne    0x402830
  4027ce:	8b 05 34 61 00 00    	mov    0x6134(%rip),%eax        # 0x408908
  4027d4:	83 f8 01             	cmp    $0x1,%eax
  4027d7:	75 e1                	jne    0x4027ba
  4027d9:	48 8d 0d 40 61 00 00 	lea    0x6140(%rip),%rcx        # 0x408920
  4027e0:	c7 05 1e 61 00 00 00 	movl   $0x0,0x611e(%rip)        # 0x408908
  4027e7:	00 00 00 
  4027ea:	ff 15 60 6a 00 00    	callq  *0x6a60(%rip)        # 0x409250
  4027f0:	eb c8                	jmp    0x4027ba
  4027f2:	8b 05 10 61 00 00    	mov    0x6110(%rip),%eax        # 0x408908
  4027f8:	85 c0                	test   %eax,%eax
  4027fa:	74 14                	je     0x402810
  4027fc:	c7 05 02 61 00 00 01 	movl   $0x1,0x6102(%rip)        # 0x408908
  402803:	00 00 00 
  402806:	b8 01 00 00 00       	mov    $0x1,%eax
  40280b:	48 83 c4 28          	add    $0x28,%rsp
  40280f:	c3                   	retq   
  402810:	48 8d 0d 09 61 00 00 	lea    0x6109(%rip),%rcx        # 0x408920
  402817:	ff 15 7b 6a 00 00    	callq  *0x6a7b(%rip)        # 0x409298
  40281d:	eb dd                	jmp    0x4027fc
  40281f:	90                   	nop
  402820:	e8 eb fd ff ff       	callq  0x402610
  402825:	eb 93                	jmp    0x4027ba
  402827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40282e:	00 00 
  402830:	e8 db fd ff ff       	callq  0x402610
  402835:	eb 97                	jmp    0x4027ce
  402837:	90                   	nop
  402838:	90                   	nop
  402839:	90                   	nop
  40283a:	90                   	nop
  40283b:	90                   	nop
  40283c:	90                   	nop
  40283d:	90                   	nop
  40283e:	90                   	nop
  40283f:	90                   	nop
  402840:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402844:	48 01 c1             	add    %rax,%rcx
  402847:	31 c0                	xor    %eax,%eax
  402849:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40284f:	74 02                	je     0x402853
  402851:	f3 c3                	repz retq 
  402853:	31 c0                	xor    %eax,%eax
  402855:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40285b:	0f 94 c0             	sete   %al
  40285e:	c3                   	retq   
  40285f:	90                   	nop
  402860:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402865:	74 09                	je     0x402870
  402867:	31 c0                	xor    %eax,%eax
  402869:	c3                   	retq   
  40286a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402870:	eb ce                	jmp    0x402840
  402872:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402879:	1f 84 00 00 00 00 00 
  402880:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402884:	48 01 c1             	add    %rax,%rcx
  402887:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40288b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402890:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402894:	85 c9                	test   %ecx,%ecx
  402896:	74 28                	je     0x4028c0
  402898:	83 e9 01             	sub    $0x1,%ecx
  40289b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40289f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4028a4:	8b 48 0c             	mov    0xc(%rax),%ecx
  4028a7:	41 89 c8             	mov    %ecx,%r8d
  4028aa:	49 39 d0             	cmp    %rdx,%r8
  4028ad:	77 08                	ja     0x4028b7
  4028af:	03 48 08             	add    0x8(%rax),%ecx
  4028b2:	48 39 ca             	cmp    %rcx,%rdx
  4028b5:	72 0b                	jb     0x4028c2
  4028b7:	48 83 c0 28          	add    $0x28,%rax
  4028bb:	4c 39 c8             	cmp    %r9,%rax
  4028be:	75 e4                	jne    0x4028a4
  4028c0:	31 c0                	xor    %eax,%eax
  4028c2:	f3 c3                	repz retq 
  4028c4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4028cb:	00 00 00 00 00 
  4028d0:	57                   	push   %rdi
  4028d1:	56                   	push   %rsi
  4028d2:	53                   	push   %rbx
  4028d3:	48 83 ec 20          	sub    $0x20,%rsp
  4028d7:	48 89 ce             	mov    %rcx,%rsi
  4028da:	e8 f9 04 00 00       	callq  0x402dd8
  4028df:	48 83 f8 08          	cmp    $0x8,%rax
  4028e3:	77 1f                	ja     0x402904
  4028e5:	48 8d 1d 14 d7 ff ff 	lea    -0x28ec(%rip),%rbx        # 0x400000
  4028ec:	31 ff                	xor    %edi,%edi
  4028ee:	66 81 3d 09 d7 ff ff 	cmpw   $0x5a4d,-0x28f7(%rip)        # 0x400000
  4028f5:	4d 5a 
  4028f7:	74 18                	je     0x402911
  4028f9:	48 89 f8             	mov    %rdi,%rax
  4028fc:	48 83 c4 20          	add    $0x20,%rsp
  402900:	5b                   	pop    %rbx
  402901:	5e                   	pop    %rsi
  402902:	5f                   	pop    %rdi
  402903:	c3                   	retq   
  402904:	31 ff                	xor    %edi,%edi
  402906:	48 89 f8             	mov    %rdi,%rax
  402909:	48 83 c4 20          	add    $0x20,%rsp
  40290d:	5b                   	pop    %rbx
  40290e:	5e                   	pop    %rsi
  40290f:	5f                   	pop    %rdi
  402910:	c3                   	retq   
  402911:	48 89 d9             	mov    %rbx,%rcx
  402914:	e8 27 ff ff ff       	callq  0x402840
  402919:	85 c0                	test   %eax,%eax
  40291b:	74 dc                	je     0x4028f9
  40291d:	48 63 15 18 d7 ff ff 	movslq -0x28e8(%rip),%rdx        # 0x40003c
  402924:	48 01 da             	add    %rbx,%rdx
  402927:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  40292b:	48 8d 5c 02 18       	lea    0x18(%rdx,%rax,1),%rbx
  402930:	0f b7 42 06          	movzwl 0x6(%rdx),%eax
  402934:	85 c0                	test   %eax,%eax
  402936:	74 c1                	je     0x4028f9
  402938:	83 e8 01             	sub    $0x1,%eax
  40293b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40293f:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402944:	eb 13                	jmp    0x402959
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 
  402950:	48 83 c3 28          	add    $0x28,%rbx
  402954:	48 39 fb             	cmp    %rdi,%rbx
  402957:	74 ab                	je     0x402904
  402959:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  40295f:	48 89 f2             	mov    %rsi,%rdx
  402962:	48 89 d9             	mov    %rbx,%rcx
  402965:	e8 0e 05 00 00       	callq  0x402e78
  40296a:	85 c0                	test   %eax,%eax
  40296c:	75 e2                	jne    0x402950
  40296e:	48 89 df             	mov    %rbx,%rdi
  402971:	48 89 f8             	mov    %rdi,%rax
  402974:	48 83 c4 20          	add    $0x20,%rsp
  402978:	5b                   	pop    %rbx
  402979:	5e                   	pop    %rsi
  40297a:	5f                   	pop    %rdi
  40297b:	c3                   	retq   
  40297c:	0f 1f 40 00          	nopl   0x0(%rax)
  402980:	56                   	push   %rsi
  402981:	53                   	push   %rbx
  402982:	48 83 ec 28          	sub    $0x28,%rsp
  402986:	48 8d 1d 73 d6 ff ff 	lea    -0x298d(%rip),%rbx        # 0x400000
  40298d:	66 81 3d 6a d6 ff ff 	cmpw   $0x5a4d,-0x2996(%rip)        # 0x400000
  402994:	4d 5a 
  402996:	48 89 ce             	mov    %rcx,%rsi
  402999:	74 09                	je     0x4029a4
  40299b:	31 c0                	xor    %eax,%eax
  40299d:	48 83 c4 28          	add    $0x28,%rsp
  4029a1:	5b                   	pop    %rbx
  4029a2:	5e                   	pop    %rsi
  4029a3:	c3                   	retq   
  4029a4:	48 89 d9             	mov    %rbx,%rcx
  4029a7:	e8 94 fe ff ff       	callq  0x402840
  4029ac:	85 c0                	test   %eax,%eax
  4029ae:	74 eb                	je     0x40299b
  4029b0:	48 29 de             	sub    %rbx,%rsi
  4029b3:	48 89 d9             	mov    %rbx,%rcx
  4029b6:	48 89 f2             	mov    %rsi,%rdx
  4029b9:	48 83 c4 28          	add    $0x28,%rsp
  4029bd:	5b                   	pop    %rbx
  4029be:	5e                   	pop    %rsi
  4029bf:	e9 bc fe ff ff       	jmpq   0x402880
  4029c4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4029cb:	00 00 00 00 00 
  4029d0:	56                   	push   %rsi
  4029d1:	53                   	push   %rbx
  4029d2:	48 83 ec 28          	sub    $0x28,%rsp
  4029d6:	48 8d 35 23 d6 ff ff 	lea    -0x29dd(%rip),%rsi        # 0x400000
  4029dd:	31 db                	xor    %ebx,%ebx
  4029df:	66 81 3d 18 d6 ff ff 	cmpw   $0x5a4d,-0x29e8(%rip)        # 0x400000
  4029e6:	4d 5a 
  4029e8:	74 09                	je     0x4029f3
  4029ea:	89 d8                	mov    %ebx,%eax
  4029ec:	48 83 c4 28          	add    $0x28,%rsp
  4029f0:	5b                   	pop    %rbx
  4029f1:	5e                   	pop    %rsi
  4029f2:	c3                   	retq   
  4029f3:	48 89 f1             	mov    %rsi,%rcx
  4029f6:	e8 45 fe ff ff       	callq  0x402840
  4029fb:	85 c0                	test   %eax,%eax
  4029fd:	74 eb                	je     0x4029ea
  4029ff:	48 63 05 36 d6 ff ff 	movslq -0x29ca(%rip),%rax        # 0x40003c
  402a06:	0f b7 5c 06 06       	movzwl 0x6(%rsi,%rax,1),%ebx
  402a0b:	89 d8                	mov    %ebx,%eax
  402a0d:	48 83 c4 28          	add    $0x28,%rsp
  402a11:	5b                   	pop    %rbx
  402a12:	5e                   	pop    %rsi
  402a13:	c3                   	retq   
  402a14:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402a1b:	00 00 00 00 00 
  402a20:	57                   	push   %rdi
  402a21:	56                   	push   %rsi
  402a22:	53                   	push   %rbx
  402a23:	48 83 ec 20          	sub    $0x20,%rsp
  402a27:	48 8d 3d d2 d5 ff ff 	lea    -0x2a2e(%rip),%rdi        # 0x400000
  402a2e:	31 f6                	xor    %esi,%esi
  402a30:	66 81 3d c7 d5 ff ff 	cmpw   $0x5a4d,-0x2a39(%rip)        # 0x400000
  402a37:	4d 5a 
  402a39:	48 89 cb             	mov    %rcx,%rbx
  402a3c:	74 12                	je     0x402a50
  402a3e:	48 89 f0             	mov    %rsi,%rax
  402a41:	48 83 c4 20          	add    $0x20,%rsp
  402a45:	5b                   	pop    %rbx
  402a46:	5e                   	pop    %rsi
  402a47:	5f                   	pop    %rdi
  402a48:	c3                   	retq   
  402a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a50:	48 89 f9             	mov    %rdi,%rcx
  402a53:	e8 e8 fd ff ff       	callq  0x402840
  402a58:	85 c0                	test   %eax,%eax
  402a5a:	74 e2                	je     0x402a3e
  402a5c:	48 63 0d d9 d5 ff ff 	movslq -0x2a27(%rip),%rcx        # 0x40003c
  402a63:	48 01 f9             	add    %rdi,%rcx
  402a66:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402a6a:	48 8d 54 01 18       	lea    0x18(%rcx,%rax,1),%rdx
  402a6f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402a73:	85 c0                	test   %eax,%eax
  402a75:	74 c7                	je     0x402a3e
  402a77:	83 e8 01             	sub    $0x1,%eax
  402a7a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402a7e:	48 8d 44 c2 28       	lea    0x28(%rdx,%rax,8),%rax
  402a83:	f6 42 27 20          	testb  $0x20,0x27(%rdx)
  402a87:	74 09                	je     0x402a92
  402a89:	48 85 db             	test   %rbx,%rbx
  402a8c:	74 22                	je     0x402ab0
  402a8e:	48 83 eb 01          	sub    $0x1,%rbx
  402a92:	48 83 c2 28          	add    $0x28,%rdx
  402a96:	48 39 c2             	cmp    %rax,%rdx
  402a99:	75 e8                	jne    0x402a83
  402a9b:	31 f6                	xor    %esi,%esi
  402a9d:	48 89 f0             	mov    %rsi,%rax
  402aa0:	48 83 c4 20          	add    $0x20,%rsp
  402aa4:	5b                   	pop    %rbx
  402aa5:	5e                   	pop    %rsi
  402aa6:	5f                   	pop    %rdi
  402aa7:	c3                   	retq   
  402aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aaf:	00 
  402ab0:	48 89 d6             	mov    %rdx,%rsi
  402ab3:	48 89 f0             	mov    %rsi,%rax
  402ab6:	48 83 c4 20          	add    $0x20,%rsp
  402aba:	5b                   	pop    %rbx
  402abb:	5e                   	pop    %rsi
  402abc:	5f                   	pop    %rdi
  402abd:	c3                   	retq   
  402abe:	66 90                	xchg   %ax,%ax
  402ac0:	53                   	push   %rbx
  402ac1:	48 83 ec 20          	sub    $0x20,%rsp
  402ac5:	31 db                	xor    %ebx,%ebx
  402ac7:	66 81 3d 30 d5 ff ff 	cmpw   $0x5a4d,-0x2ad0(%rip)        # 0x400000
  402ace:	4d 5a 
  402ad0:	74 0e                	je     0x402ae0
  402ad2:	48 89 d8             	mov    %rbx,%rax
  402ad5:	48 83 c4 20          	add    $0x20,%rsp
  402ad9:	5b                   	pop    %rbx
  402ada:	c3                   	retq   
  402adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ae0:	48 8d 0d 19 d5 ff ff 	lea    -0x2ae7(%rip),%rcx        # 0x400000
  402ae7:	e8 54 fd ff ff       	callq  0x402840
  402aec:	85 c0                	test   %eax,%eax
  402aee:	48 8d 05 0b d5 ff ff 	lea    -0x2af5(%rip),%rax        # 0x400000
  402af5:	48 0f 45 d8          	cmovne %rax,%rbx
  402af9:	48 89 d8             	mov    %rbx,%rax
  402afc:	48 83 c4 20          	add    $0x20,%rsp
  402b00:	5b                   	pop    %rbx
  402b01:	c3                   	retq   
  402b02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402b09:	1f 84 00 00 00 00 00 
  402b10:	56                   	push   %rsi
  402b11:	53                   	push   %rbx
  402b12:	48 83 ec 28          	sub    $0x28,%rsp
  402b16:	48 8d 1d e3 d4 ff ff 	lea    -0x2b1d(%rip),%rbx        # 0x400000
  402b1d:	31 c0                	xor    %eax,%eax
  402b1f:	66 81 3d d8 d4 ff ff 	cmpw   $0x5a4d,-0x2b28(%rip)        # 0x400000
  402b26:	4d 5a 
  402b28:	48 89 ce             	mov    %rcx,%rsi
  402b2b:	74 07                	je     0x402b34
  402b2d:	48 83 c4 28          	add    $0x28,%rsp
  402b31:	5b                   	pop    %rbx
  402b32:	5e                   	pop    %rsi
  402b33:	c3                   	retq   
  402b34:	48 89 d9             	mov    %rbx,%rcx
  402b37:	e8 04 fd ff ff       	callq  0x402840
  402b3c:	85 c0                	test   %eax,%eax
  402b3e:	74 ed                	je     0x402b2d
  402b40:	48 89 f2             	mov    %rsi,%rdx
  402b43:	48 89 d9             	mov    %rbx,%rcx
  402b46:	48 29 da             	sub    %rbx,%rdx
  402b49:	e8 32 fd ff ff       	callq  0x402880
  402b4e:	48 85 c0             	test   %rax,%rax
  402b51:	74 0f                	je     0x402b62
  402b53:	8b 40 24             	mov    0x24(%rax),%eax
  402b56:	f7 d0                	not    %eax
  402b58:	c1 e8 1f             	shr    $0x1f,%eax
  402b5b:	48 83 c4 28          	add    $0x28,%rsp
  402b5f:	5b                   	pop    %rbx
  402b60:	5e                   	pop    %rsi
  402b61:	c3                   	retq   
  402b62:	31 c0                	xor    %eax,%eax
  402b64:	eb c7                	jmp    0x402b2d
  402b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b6d:	00 00 00 
  402b70:	55                   	push   %rbp
  402b71:	57                   	push   %rdi
  402b72:	56                   	push   %rsi
  402b73:	53                   	push   %rbx
  402b74:	48 83 ec 28          	sub    $0x28,%rsp
  402b78:	48 8d 35 81 d4 ff ff 	lea    -0x2b7f(%rip),%rsi        # 0x400000
  402b7f:	31 ed                	xor    %ebp,%ebp
  402b81:	66 81 3d 76 d4 ff ff 	cmpw   $0x5a4d,-0x2b8a(%rip)        # 0x400000
  402b88:	4d 5a 
  402b8a:	89 cb                	mov    %ecx,%ebx
  402b8c:	74 12                	je     0x402ba0
  402b8e:	48 89 e8             	mov    %rbp,%rax
  402b91:	48 83 c4 28          	add    $0x28,%rsp
  402b95:	5b                   	pop    %rbx
  402b96:	5e                   	pop    %rsi
  402b97:	5f                   	pop    %rdi
  402b98:	5d                   	pop    %rbp
  402b99:	c3                   	retq   
  402b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402ba0:	48 89 f1             	mov    %rsi,%rcx
  402ba3:	e8 98 fc ff ff       	callq  0x402840
  402ba8:	85 c0                	test   %eax,%eax
  402baa:	74 e2                	je     0x402b8e
  402bac:	48 63 05 89 d4 ff ff 	movslq -0x2b77(%rip),%rax        # 0x40003c
  402bb3:	8b bc 06 90 00 00 00 	mov    0x90(%rsi,%rax,1),%edi
  402bba:	85 ff                	test   %edi,%edi
  402bbc:	74 d0                	je     0x402b8e
  402bbe:	48 89 fa             	mov    %rdi,%rdx
  402bc1:	48 89 f1             	mov    %rsi,%rcx
  402bc4:	e8 b7 fc ff ff       	callq  0x402880
  402bc9:	48 85 c0             	test   %rax,%rax
  402bcc:	74 c0                	je     0x402b8e
  402bce:	48 01 f7             	add    %rsi,%rdi
  402bd1:	48 89 fa             	mov    %rdi,%rdx
  402bd4:	75 11                	jne    0x402be7
  402bd6:	eb b6                	jmp    0x402b8e
  402bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bdf:	00 
  402be0:	83 eb 01             	sub    $0x1,%ebx
  402be3:	48 83 c2 14          	add    $0x14,%rdx
  402be7:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402bea:	85 c9                	test   %ecx,%ecx
  402bec:	75 07                	jne    0x402bf5
  402bee:	8b 42 0c             	mov    0xc(%rdx),%eax
  402bf1:	85 c0                	test   %eax,%eax
  402bf3:	74 1b                	je     0x402c10
  402bf5:	85 db                	test   %ebx,%ebx
  402bf7:	7f e7                	jg     0x402be0
  402bf9:	8b 6a 0c             	mov    0xc(%rdx),%ebp
  402bfc:	48 01 f5             	add    %rsi,%rbp
  402bff:	48 89 e8             	mov    %rbp,%rax
  402c02:	48 83 c4 28          	add    $0x28,%rsp
  402c06:	5b                   	pop    %rbx
  402c07:	5e                   	pop    %rsi
  402c08:	5f                   	pop    %rdi
  402c09:	5d                   	pop    %rbp
  402c0a:	c3                   	retq   
  402c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402c10:	31 ed                	xor    %ebp,%ebp
  402c12:	48 89 e8             	mov    %rbp,%rax
  402c15:	48 83 c4 28          	add    $0x28,%rsp
  402c19:	5b                   	pop    %rbx
  402c1a:	5e                   	pop    %rsi
  402c1b:	5f                   	pop    %rdi
  402c1c:	5d                   	pop    %rbp
  402c1d:	c3                   	retq   
  402c1e:	90                   	nop
  402c1f:	90                   	nop
  402c20:	51                   	push   %rcx
  402c21:	50                   	push   %rax
  402c22:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402c28:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402c2d:	72 19                	jb     0x402c48
  402c2f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402c36:	48 83 09 00          	orq    $0x0,(%rcx)
  402c3a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402c40:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402c46:	77 e7                	ja     0x402c2f
  402c48:	48 29 c1             	sub    %rax,%rcx
  402c4b:	48 83 09 00          	orq    $0x0,(%rcx)
  402c4f:	58                   	pop    %rax
  402c50:	59                   	pop    %rcx
  402c51:	c3                   	retq   
  402c52:	90                   	nop
  402c53:	90                   	nop
  402c54:	90                   	nop
  402c55:	90                   	nop
  402c56:	90                   	nop
  402c57:	90                   	nop
  402c58:	90                   	nop
  402c59:	90                   	nop
  402c5a:	90                   	nop
  402c5b:	90                   	nop
  402c5c:	90                   	nop
  402c5d:	90                   	nop
  402c5e:	90                   	nop
  402c5f:	90                   	nop
  402c60:	48 83 ec 58          	sub    $0x58,%rsp
  402c64:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  402c69:	66 48 0f 7e c2       	movq   %xmm0,%rdx
  402c6e:	66 48 0f 7e c1       	movq   %xmm0,%rcx
  402c73:	66 0f 28 d0          	movapd %xmm0,%xmm2
  402c77:	48 c1 ea 20          	shr    $0x20,%rdx
  402c7b:	89 d0                	mov    %edx,%eax
  402c7d:	81 e2 00 00 f0 7f    	and    $0x7ff00000,%edx
  402c83:	25 ff ff 0f 00       	and    $0xfffff,%eax
  402c88:	09 c8                	or     %ecx,%eax
  402c8a:	89 c1                	mov    %eax,%ecx
  402c8c:	09 d1                	or     %edx,%ecx
  402c8e:	75 20                	jne    0x402cb0
  402c90:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402c95:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  402c99:	48 c1 e8 20          	shr    $0x20,%rax
  402c9d:	85 c0                	test   %eax,%eax
  402c9f:	78 63                	js     0x402d04
  402ca1:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402ca6:	48 83 c4 58          	add    $0x58,%rsp
  402caa:	c3                   	retq   
  402cab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402cb0:	81 fa 00 00 f0 7f    	cmp    $0x7ff00000,%edx
  402cb6:	74 48                	je     0x402d00
  402cb8:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402cbd:	48 c1 e8 20          	shr    $0x20,%rax
  402cc1:	85 c0                	test   %eax,%eax
  402cc3:	78 3f                	js     0x402d04
  402cc5:	f2 0f 10 05 f3 25 00 	movsd  0x25f3(%rip),%xmm0        # 0x4052c0
  402ccc:	00 
  402ccd:	66 0f 2e d0          	ucomisd %xmm0,%xmm2
  402cd1:	0f 8b ad 00 00 00    	jnp    0x402d84
  402cd7:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
  402cdd:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402ce2:	dd 44 24 38          	fldl   0x38(%rsp)
  402ce6:	d9 fa                	fsqrt  
  402ce8:	dd 5c 24 38          	fstpl  0x38(%rsp)
  402cec:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
  402cf2:	48 83 c4 58          	add    $0x58,%rsp
  402cf6:	c3                   	retq   
  402cf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402cfe:	00 00 
  402d00:	85 c0                	test   %eax,%eax
  402d02:	74 66                	je     0x402d6a
  402d04:	66 48 0f 7e d0       	movq   %xmm2,%rax
  402d09:	f2 0f 10 35 9f 25 00 	movsd  0x259f(%rip),%xmm6        # 0x4052b0
  402d10:	00 
  402d11:	48 c1 e8 20          	shr    $0x20,%rax
  402d15:	85 c0                	test   %eax,%eax
  402d17:	78 47                	js     0x402d60
  402d19:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
  402d1f:	e8 5c 01 00 00       	callq  0x402e80
  402d24:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
  402d2a:	b9 01 00 00 00       	mov    $0x1,%ecx
  402d2f:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
  402d35:	48 8d 15 64 25 00 00 	lea    0x2564(%rip),%rdx        # 0x4052a0
  402d3c:	66 0f 57 db          	xorpd  %xmm3,%xmm3
  402d40:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  402d46:	e8 05 ef ff ff       	callq  0x401c50
  402d4b:	66 0f 28 c6          	movapd %xmm6,%xmm0
  402d4f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402d54:	48 83 c4 58          	add    $0x58,%rsp
  402d58:	c3                   	retq   
  402d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d60:	f2 0f 10 35 40 25 00 	movsd  0x2540(%rip),%xmm6        # 0x4052a8
  402d67:	00 
  402d68:	eb af                	jmp    0x402d19
  402d6a:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402d6f:	48 c1 e8 20          	shr    $0x20,%rax
  402d73:	85 c0                	test   %eax,%eax
  402d75:	78 8d                	js     0x402d04
  402d77:	f2 0f 10 05 39 25 00 	movsd  0x2539(%rip),%xmm0        # 0x4052b8
  402d7e:	00 
  402d7f:	e9 1d ff ff ff       	jmpq   0x402ca1
  402d84:	0f 85 4d ff ff ff    	jne    0x402cd7
  402d8a:	e9 12 ff ff ff       	jmpq   0x402ca1
  402d8f:	90                   	nop
  402d90:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 0x409310
  402d96:	90                   	nop
  402d97:	90                   	nop
  402d98:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 0x409340
  402d9e:	90                   	nop
  402d9f:	90                   	nop
  402da0:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 0x409320
  402da6:	90                   	nop
  402da7:	90                   	nop
  402da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402daf:	00 
  402db0:	48 8b 05 b9 5b 00 00 	mov    0x5bb9(%rip),%rax        # 0x408970
  402db7:	c3                   	retq   
  402db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402dbf:	00 
  402dc0:	48 89 c8             	mov    %rcx,%rax
  402dc3:	48 87 05 a6 5b 00 00 	xchg   %rax,0x5ba6(%rip)        # 0x408970
  402dca:	c3                   	retq   
  402dcb:	90                   	nop
  402dcc:	90                   	nop
  402dcd:	90                   	nop
  402dce:	90                   	nop
  402dcf:	90                   	nop
  402dd0:	ff 25 f2 65 00 00    	jmpq   *0x65f2(%rip)        # 0x4093c8
  402dd6:	90                   	nop
  402dd7:	90                   	nop
  402dd8:	ff 25 02 66 00 00    	jmpq   *0x6602(%rip)        # 0x4093e0
  402dde:	90                   	nop
  402ddf:	90                   	nop
  402de0:	ff 25 ea 65 00 00    	jmpq   *0x65ea(%rip)        # 0x4093d0
  402de6:	90                   	nop
  402de7:	90                   	nop
  402de8:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 0x409360
  402dee:	90                   	nop
  402def:	90                   	nop
  402df0:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 0x409358
  402df6:	90                   	nop
  402df7:	90                   	nop
  402df8:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 0x409378
  402dfe:	90                   	nop
  402dff:	90                   	nop
  402e00:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 0x4093a8
  402e06:	90                   	nop
  402e07:	90                   	nop
  402e08:	ff 25 2a 65 00 00    	jmpq   *0x652a(%rip)        # 0x409338
  402e0e:	90                   	nop
  402e0f:	90                   	nop
  402e10:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 0x409388
  402e16:	90                   	nop
  402e17:	90                   	nop
  402e18:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 0x409380
  402e1e:	90                   	nop
  402e1f:	90                   	nop
  402e20:	ff 25 f2 64 00 00    	jmpq   *0x64f2(%rip)        # 0x409318
  402e26:	90                   	nop
  402e27:	90                   	nop
  402e28:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 0x409390
  402e2e:	90                   	nop
  402e2f:	90                   	nop
  402e30:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 0x4093d8
  402e36:	90                   	nop
  402e37:	90                   	nop
  402e38:	ff 25 0a 65 00 00    	jmpq   *0x650a(%rip)        # 0x409348
  402e3e:	90                   	nop
  402e3f:	90                   	nop
  402e40:	ff 25 ea 64 00 00    	jmpq   *0x64ea(%rip)        # 0x409330
  402e46:	90                   	nop
  402e47:	90                   	nop
  402e48:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 0x4093b0
  402e4e:	90                   	nop
  402e4f:	90                   	nop
  402e50:	ff 25 6a 65 00 00    	jmpq   *0x656a(%rip)        # 0x4093c0
  402e56:	90                   	nop
  402e57:	90                   	nop
  402e58:	ff 25 92 65 00 00    	jmpq   *0x6592(%rip)        # 0x4093f0
  402e5e:	90                   	nop
  402e5f:	90                   	nop
  402e60:	ff 25 32 65 00 00    	jmpq   *0x6532(%rip)        # 0x409398
  402e66:	90                   	nop
  402e67:	90                   	nop
  402e68:	ff 25 32 65 00 00    	jmpq   *0x6532(%rip)        # 0x4093a0
  402e6e:	90                   	nop
  402e6f:	90                   	nop
  402e70:	ff 25 42 65 00 00    	jmpq   *0x6542(%rip)        # 0x4093b8
  402e76:	90                   	nop
  402e77:	90                   	nop
  402e78:	ff 25 6a 65 00 00    	jmpq   *0x656a(%rip)        # 0x4093e8
  402e7e:	90                   	nop
  402e7f:	90                   	nop
  402e80:	ff 25 e2 64 00 00    	jmpq   *0x64e2(%rip)        # 0x409368
  402e86:	90                   	nop
  402e87:	90                   	nop
  402e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e8f:	00 
  402e90:	ff 25 42 64 00 00    	jmpq   *0x6442(%rip)        # 0x4092d8
  402e96:	90                   	nop
  402e97:	90                   	nop
  402e98:	ff 25 32 64 00 00    	jmpq   *0x6432(%rip)        # 0x4092d0
  402e9e:	90                   	nop
  402e9f:	90                   	nop
  402ea0:	ff 25 da 63 00 00    	jmpq   *0x63da(%rip)        # 0x409280
  402ea6:	90                   	nop
  402ea7:	90                   	nop
  402ea8:	ff 25 02 64 00 00    	jmpq   *0x6402(%rip)        # 0x4092b0
  402eae:	90                   	nop
  402eaf:	90                   	nop
  402eb0:	ff 25 4a 64 00 00    	jmpq   *0x644a(%rip)        # 0x409300
  402eb6:	90                   	nop
  402eb7:	90                   	nop
  402eb8:	ff 25 3a 64 00 00    	jmpq   *0x643a(%rip)        # 0x4092f8
  402ebe:	90                   	nop
  402ebf:	90                   	nop
  402ec0:	ff 25 b2 63 00 00    	jmpq   *0x63b2(%rip)        # 0x409278
  402ec6:	90                   	nop
  402ec7:	90                   	nop
  402ec8:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 0x409288
  402ece:	90                   	nop
  402ecf:	90                   	nop
  402ed0:	ff 25 92 63 00 00    	jmpq   *0x6392(%rip)        # 0x409268
  402ed6:	90                   	nop
  402ed7:	90                   	nop
  402ed8:	ff 25 92 63 00 00    	jmpq   *0x6392(%rip)        # 0x409270
  402ede:	90                   	nop
  402edf:	90                   	nop
  402ee0:	ff 25 aa 63 00 00    	jmpq   *0x63aa(%rip)        # 0x409290
  402ee6:	90                   	nop
  402ee7:	90                   	nop
  402ee8:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 0x4092a8
  402eee:	90                   	nop
  402eef:	90                   	nop
  402ef0:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 0x4092b8
  402ef6:	90                   	nop
  402ef7:	90                   	nop
  402ef8:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 0x4092c0
  402efe:	90                   	nop
  402eff:	90                   	nop
  402f00:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 0x4092c8
  402f06:	90                   	nop
  402f07:	90                   	nop
  402f08:	ff 25 e2 63 00 00    	jmpq   *0x63e2(%rip)        # 0x4092f0
  402f0e:	90                   	nop
  402f0f:	90                   	nop
  402f10:	ff 25 4a 63 00 00    	jmpq   *0x634a(%rip)        # 0x409260
  402f16:	90                   	nop
  402f17:	90                   	nop
  402f18:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 0x4092e0
  402f1e:	90                   	nop
  402f1f:	90                   	nop
  402f20:	ff 25 32 63 00 00    	jmpq   *0x6332(%rip)        # 0x409258
  402f26:	90                   	nop
  402f27:	90                   	nop
  402f28:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 0x4092e8
  402f2e:	90                   	nop
  402f2f:	90                   	nop
  402f30:	ff 25 6a 63 00 00    	jmpq   *0x636a(%rip)        # 0x4092a0
  402f36:	90                   	nop
  402f37:	90                   	nop
  402f38:	ff 25 12 63 00 00    	jmpq   *0x6312(%rip)        # 0x409250
  402f3e:	90                   	nop
  402f3f:	90                   	nop
  402f40:	ff 25 52 63 00 00    	jmpq   *0x6352(%rip)        # 0x409298
  402f46:	90                   	nop
  402f47:	90                   	nop
  402f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f4f:	00 
  402f50:	55                   	push   %rbp
  402f51:	57                   	push   %rdi
  402f52:	56                   	push   %rsi
  402f53:	53                   	push   %rbx
  402f54:	48 83 ec 48          	sub    $0x48,%rsp
  402f58:	0f 29 74 24 20       	movaps %xmm6,0x20(%rsp)
  402f5d:	0f 29 7c 24 30       	movaps %xmm7,0x30(%rsp)
  402f62:	be 03 00 00 00       	mov    $0x3,%esi
  402f67:	48 bb e9 fe ff ff ff 	movabs $0xffffffffffffee9,%rbx
  402f6e:	ff ff 0f 
  402f71:	e8 aa f4 ff ff       	callq  0x402420
  402f76:	f2 0f 10 3d 9a 20 00 	movsd  0x209a(%rip),%xmm7        # 0x405018
  402f7d:	00 
  402f7e:	f2 0f 10 35 8a 20 00 	movsd  0x208a(%rip),%xmm6        # 0x405010
  402f85:	00 
  402f86:	e8 6d e6 ff ff       	callq  0x4015f8
  402f8b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f90:	48 89 c7             	mov    %rax,%rdi
  402f93:	eb 1a                	jmp    0x402faf
  402f95:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402f9c:	00 00 00 00 
  402fa0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402fa4:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
  402fa9:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
  402fad:	72 39                	jb     0x402fe8
  402faf:	31 d2                	xor    %edx,%edx
  402fb1:	48 89 d8             	mov    %rbx,%rax
  402fb4:	48 f7 f1             	div    %rcx
  402fb7:	48 85 d2             	test   %rdx,%rdx
  402fba:	0f 84 90 00 00 00    	je     0x403050
  402fc0:	48 83 c1 01          	add    $0x1,%rcx
  402fc4:	79 da                	jns    0x402fa0
  402fc6:	48 89 ca             	mov    %rcx,%rdx
  402fc9:	48 89 c8             	mov    %rcx,%rax
  402fcc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402fd0:	48 d1 ea             	shr    %rdx
  402fd3:	83 e0 01             	and    $0x1,%eax
  402fd6:	48 09 c2             	or     %rax,%rdx
  402fd9:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  402fde:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  402fe2:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
  402fe6:	73 c7                	jae    0x402faf
  402fe8:	bd 01 00 00 00       	mov    $0x1,%ebp
  402fed:	e8 06 e6 ff ff       	callq  0x4015f8
  402ff2:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402ff6:	48 8b 0d e3 22 00 00 	mov    0x22e3(%rip),%rcx        # 0x4052e0
  402ffd:	48 29 f8             	sub    %rdi,%rax
  403000:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  403005:	f2 0f 5e cf          	divsd  %xmm7,%xmm1
  403009:	e8 f2 e5 ff ff       	callq  0x401600
  40300e:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  403014:	48 8d 15 e5 1f 00 00 	lea    0x1fe5(%rip),%rdx        # 0x405000
  40301b:	48 89 c1             	mov    %rax,%rcx
  40301e:	e8 e5 e5 ff ff       	callq  0x401608
  403023:	40 84 ed             	test   %bpl,%bpl
  403026:	75 2c                	jne    0x403054
  403028:	83 ee 01             	sub    $0x1,%esi
  40302b:	0f 85 55 ff ff ff    	jne    0x402f86
  403031:	0f 28 74 24 20       	movaps 0x20(%rsp),%xmm6
  403036:	31 c0                	xor    %eax,%eax
  403038:	0f 28 7c 24 30       	movaps 0x30(%rsp),%xmm7
  40303d:	48 83 c4 48          	add    $0x48,%rsp
  403041:	5b                   	pop    %rbx
  403042:	5e                   	pop    %rsi
  403043:	5f                   	pop    %rdi
  403044:	5d                   	pop    %rbp
  403045:	c3                   	retq   
  403046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40304d:	00 00 00 
  403050:	31 ed                	xor    %ebp,%ebp
  403052:	eb 99                	jmp    0x402fed
  403054:	48 8b 0d 85 22 00 00 	mov    0x2285(%rip),%rcx        # 0x4052e0
  40305b:	48 ba e9 fe ff ff ff 	movabs $0xffffffffffffee9,%rdx
  403062:	ff ff 0f 
  403065:	e8 a6 e5 ff ff       	callq  0x401610
  40306a:	48 8d 15 93 1f 00 00 	lea    0x1f93(%rip),%rdx        # 0x405004
  403071:	48 89 c1             	mov    %rax,%rcx
  403074:	e8 9f e5 ff ff       	callq  0x401618
  403079:	48 89 c1             	mov    %rax,%rcx
  40307c:	e8 9f e5 ff ff       	callq  0x401620
  403081:	eb a5                	jmp    0x403028
  403083:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40308a:	84 00 00 00 00 00 
  403090:	48 83 ec 28          	sub    $0x28,%rsp
  403094:	48 8d 0d 95 4f 00 00 	lea    0x4f95(%rip),%rcx        # 0x408030
  40309b:	e8 88 e5 ff ff       	callq  0x401628
  4030a0:	48 8d 0d 49 e4 ff ff 	lea    -0x1bb7(%rip),%rcx        # 0x4014f0
  4030a7:	48 83 c4 28          	add    $0x28,%rsp
  4030ab:	e9 10 e7 ff ff       	jmpq   0x4017c0
  4030b0:	ff                   	(bad)  
  4030b1:	ff                   	(bad)  
  4030b2:	ff                   	(bad)  
  4030b3:	ff                   	(bad)  
  4030b4:	ff                   	(bad)  
  4030b5:	ff                   	(bad)  
  4030b6:	ff                   	(bad)  
  4030b7:	ff 90 30 40 00 00    	callq  *0x4030(%rax)
	...
  4030c5:	00 00                	add    %al,(%rax)
  4030c7:	00 ff                	add    %bh,%bh
  4030c9:	ff                   	(bad)  
  4030ca:	ff                   	(bad)  
  4030cb:	ff                   	(bad)  
  4030cc:	ff                   	(bad)  
  4030cd:	ff                   	(bad)  
  4030ce:	ff                   	(bad)  
  4030cf:	ff 00                	incl   (%rax)
  4030d1:	00 00                	add    %al,(%rax)
  4030d3:	00 00                	add    %al,(%rax)
  4030d5:	00 00                	add    %al,(%rax)
	...
