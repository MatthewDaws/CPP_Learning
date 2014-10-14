
min2.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401008:	0f 1f 84 00 00 00 00 
  40100f:	00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	31 c0                	xor    %eax,%eax
  401016:	66 81 3d e1 ef ff ff 	cmpw   $0x5a4d,-0x101f(%rip)        # 400000 <__ImageBase>
  40101d:	4d 5a 
  40101f:	c7 05 1f 70 00 00 01 	movl   $0x1,0x701f(%rip)        # 408048 <mingw_initltsdrot_force>
  401026:	00 00 00 
  401029:	c7 05 11 70 00 00 01 	movl   $0x1,0x7011(%rip)        # 408044 <mingw_initltsdyn_force>
  401030:	00 00 00 
  401033:	c7 05 03 70 00 00 01 	movl   $0x1,0x7003(%rip)        # 408040 <mingw_initltssuo_force>
  40103a:	00 00 00 
  40103d:	c7 05 09 70 00 00 01 	movl   $0x1,0x7009(%rip)        # 408050 <mingw_initcharmax>
  401044:	00 00 00 
  401047:	74 67                	je     4010b0 <pre_c_init+0xa0>
  401049:	89 05 b9 6f 00 00    	mov    %eax,0x6fb9(%rip)        # 408008 <managedapp>
  40104f:	8b 05 0b 70 00 00    	mov    0x700b(%rip),%eax        # 408060 <mingw_app_type>
  401055:	85 c0                	test   %eax,%eax
  401057:	74 48                	je     4010a1 <pre_c_init+0x91>
  401059:	b9 02 00 00 00       	mov    $0x2,%ecx
  40105e:	e8 35 1d 00 00       	callq  402d98 <__set_app_type>
  401063:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40106a:	e8 91 06 00 00       	callq  401700 <_encode_pointer>
  40106f:	8b 15 fb 6f 00 00    	mov    0x6ffb(%rip),%edx        # 408070 <_fmode>
  401075:	48 89 05 1c 79 00 00 	mov    %rax,0x791c(%rip)        # 408998 <__onexitend>
  40107c:	48 89 05 0d 79 00 00 	mov    %rax,0x790d(%rip)        # 408990 <__onexitbegin>
  401083:	48 8b 05 e6 82 00 00 	mov    0x82e6(%rip),%rax        # 409370 <__imp__fmode>
  40108a:	89 10                	mov    %edx,(%rax)
  40108c:	e8 af 0b 00 00       	callq  401c40 <_setargv>
  401091:	83 3d c8 2f 00 00 01 	cmpl   $0x1,0x2fc8(%rip)        # 404060 <_MINGW_INSTALL_DEBUG_MATHERR>
  401098:	74 66                	je     401100 <pre_c_init+0xf0>
  40109a:	31 c0                	xor    %eax,%eax
  40109c:	48 83 c4 28          	add    $0x28,%rsp
  4010a0:	c3                   	retq   
  4010a1:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a6:	e8 ed 1c 00 00       	callq  402d98 <__set_app_type>
  4010ab:	eb b6                	jmp    401063 <pre_c_init+0x53>
  4010ad:	0f 1f 00             	nopl   (%rax)
  4010b0:	48 63 0d 85 ef ff ff 	movslq -0x107b(%rip),%rcx        # 40003c <__ImageBase+0x3c>
  4010b7:	48 8d 15 42 ef ff ff 	lea    -0x10be(%rip),%rdx        # 400000 <__ImageBase>
  4010be:	48 01 ca             	add    %rcx,%rdx
  4010c1:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4010c7:	75 80                	jne    401049 <pre_c_init+0x39>
  4010c9:	0f b7 4a 18          	movzwl 0x18(%rdx),%ecx
  4010cd:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010d2:	74 3f                	je     401113 <pre_c_init+0x103>
  4010d4:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010d9:	0f 85 6a ff ff ff    	jne    401049 <pre_c_init+0x39>
  4010df:	83 ba 84 00 00 00 0e 	cmpl   $0xe,0x84(%rdx)
  4010e6:	0f 86 5d ff ff ff    	jbe    401049 <pre_c_init+0x39>
  4010ec:	8b 92 f8 00 00 00    	mov    0xf8(%rdx),%edx
  4010f2:	31 c0                	xor    %eax,%eax
  4010f4:	85 d2                	test   %edx,%edx
  4010f6:	0f 95 c0             	setne  %al
  4010f9:	e9 4b ff ff ff       	jmpq   401049 <pre_c_init+0x39>
  4010fe:	66 90                	xchg   %ax,%ax
  401100:	48 8d 0d a9 0b 00 00 	lea    0xba9(%rip),%rcx        # 401cb0 <_matherr>
  401107:	e8 94 0b 00 00       	callq  401ca0 <__mingw_setusermatherr>
  40110c:	31 c0                	xor    %eax,%eax
  40110e:	48 83 c4 28          	add    $0x28,%rsp
  401112:	c3                   	retq   
  401113:	83 7a 74 0e          	cmpl   $0xe,0x74(%rdx)
  401117:	0f 86 2c ff ff ff    	jbe    401049 <pre_c_init+0x39>
  40111d:	8b 8a e8 00 00 00    	mov    0xe8(%rdx),%ecx
  401123:	31 c0                	xor    %eax,%eax
  401125:	85 c9                	test   %ecx,%ecx
  401127:	0f 95 c0             	setne  %al
  40112a:	e9 1a ff ff ff       	jmpq   401049 <pre_c_init+0x39>
  40112f:	90                   	nop

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	8b 05 46 6f 00 00    	mov    0x6f46(%rip),%eax        # 408080 <_newmode>
  40113a:	4c 8d 05 d7 6e 00 00 	lea    0x6ed7(%rip),%r8        # 408018 <envp>
  401141:	44 8b 0d d8 2e 00 00 	mov    0x2ed8(%rip),%r9d        # 404020 <_dowildcard>
  401148:	48 8d 15 d1 6e 00 00 	lea    0x6ed1(%rip),%rdx        # 408020 <argv>
  40114f:	48 8d 0d d2 6e 00 00 	lea    0x6ed2(%rip),%rcx        # 408028 <argc>
  401156:	89 05 a4 6e 00 00    	mov    %eax,0x6ea4(%rip)        # 408000 <__bss_start__>
  40115c:	48 8d 05 9d 6e 00 00 	lea    0x6e9d(%rip),%rax        # 408000 <__bss_start__>
  401163:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401168:	e8 33 1c 00 00       	callq  402da0 <__getmainargs>
  40116d:	89 05 9d 6e 00 00    	mov    %eax,0x6e9d(%rip)        # 408010 <argret>
  401173:	48 83 c4 38          	add    $0x38,%rsp
  401177:	c3                   	retq   
  401178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40117f:	00 

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	44 8b 0d ca 6e 00 00 	mov    0x6eca(%rip),%r9d        # 408060 <mingw_app_type>
  401196:	31 c0                	xor    %eax,%eax
  401198:	b9 0d 00 00 00       	mov    $0xd,%ecx
  40119d:	45 85 c9             	test   %r9d,%r9d
  4011a0:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4011a5:	48 89 d7             	mov    %rdx,%rdi
  4011a8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011ab:	0f 85 af 02 00 00    	jne    401460 <__tmainCRTStartup+0x2e0>
  4011b1:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011b8:	00 00 
  4011ba:	31 f6                	xor    %esi,%esi
  4011bc:	48 8b 58 08          	mov    0x8(%rax),%rbx
  4011c0:	48 8b 3d 11 81 00 00 	mov    0x8111(%rip),%rdi        # 4092d8 <__imp_Sleep>
  4011c7:	eb 17                	jmp    4011e0 <__tmainCRTStartup+0x60>
  4011c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4011d0:	48 39 c3             	cmp    %rax,%rbx
  4011d3:	0f 84 27 02 00 00    	je     401400 <__tmainCRTStartup+0x280>
  4011d9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011de:	ff d7                	callq  *%rdi
  4011e0:	48 89 f0             	mov    %rsi,%rax
  4011e3:	f0 48 0f b1 1d bc 77 	lock cmpxchg %rbx,0x77bc(%rip)        # 4089a8 <__native_startup_lock>
  4011ea:	00 00 
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 df                	jne    4011d0 <__tmainCRTStartup+0x50>
  4011f1:	8b 05 a9 77 00 00    	mov    0x77a9(%rip),%eax        # 4089a0 <__native_startup_state>
  4011f7:	31 db                	xor    %ebx,%ebx
  4011f9:	83 f8 01             	cmp    $0x1,%eax
  4011fc:	0f 84 12 02 00 00    	je     401414 <__tmainCRTStartup+0x294>
  401202:	8b 05 98 77 00 00    	mov    0x7798(%rip),%eax        # 4089a0 <__native_startup_state>
  401208:	85 c0                	test   %eax,%eax
  40120a:	0f 84 60 02 00 00    	je     401470 <__tmainCRTStartup+0x2f0>
  401210:	c7 05 ea 6d 00 00 01 	movl   $0x1,0x6dea(%rip)        # 408004 <has_cctor>
  401217:	00 00 00 
  40121a:	8b 05 80 77 00 00    	mov    0x7780(%rip),%eax        # 4089a0 <__native_startup_state>
  401220:	83 f8 01             	cmp    $0x1,%eax
  401223:	0f 84 04 02 00 00    	je     40142d <__tmainCRTStartup+0x2ad>
  401229:	85 db                	test   %ebx,%ebx
  40122b:	0f 84 21 02 00 00    	je     401452 <__tmainCRTStartup+0x2d2>
  401231:	48 8b 05 e8 3d 00 00 	mov    0x3de8(%rip),%rax        # 405020 <__dyn_tls_init_callback>
  401238:	48 85 c0             	test   %rax,%rax
  40123b:	74 0c                	je     401249 <__tmainCRTStartup+0xc9>
  40123d:	45 31 c0             	xor    %r8d,%r8d
  401240:	ba 02 00 00 00       	mov    $0x2,%edx
  401245:	31 c9                	xor    %ecx,%ecx
  401247:	ff d0                	callq  *%rax
  401249:	e8 02 0e 00 00       	callq  402050 <_pei386_runtime_relocator>
  40124e:	48 8d 0d 3b 08 00 00 	lea    0x83b(%rip),%rcx        # 401a90 <_gnu_exception_handler>
  401255:	ff 15 75 80 00 00    	callq  *0x8075(%rip)        # 4092d0 <__imp_SetUnhandledExceptionFilter>
  40125b:	48 89 05 3e 6e 00 00 	mov    %rax,0x6e3e(%rip)        # 4080a0 <__mingw_oldexcpt_handler>
  401262:	e8 39 07 00 00       	callq  4019a0 <__mingw_init_ehandler>
  401267:	48 8d 0d 92 fd ff ff 	lea    -0x26e(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126e:	e8 4d 1b 00 00       	callq  402dc0 <_set_invalid_parameter_handler>
  401273:	e8 f8 10 00 00       	callq  402370 <_fpreset>
  401278:	48 8d 05 81 ed ff ff 	lea    -0x127f(%rip),%rax        # 400000 <__ImageBase>
  40127f:	48 89 05 02 77 00 00 	mov    %rax,0x7702(%rip)        # 408988 <__mingw_winmain_hInstance>
  401286:	48 8b 05 c3 80 00 00 	mov    0x80c3(%rip),%rax        # 409350 <__imp__acmdln>
  40128d:	48 8b 00             	mov    (%rax),%rax
  401290:	48 85 c0             	test   %rax,%rax
  401293:	74 52                	je     4012e7 <__tmainCRTStartup+0x167>
  401295:	31 c9                	xor    %ecx,%ecx
  401297:	eb 18                	jmp    4012b1 <__tmainCRTStartup+0x131>
  401299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 3c                	je     4012e0 <__tmainCRTStartup+0x160>
  4012a4:	85 c9                	test   %ecx,%ecx
  4012a6:	74 2c                	je     4012d4 <__tmainCRTStartup+0x154>
  4012a8:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ad:	48 83 c0 01          	add    $0x1,%rax
  4012b1:	0f b6 10             	movzbl (%rax),%edx
  4012b4:	80 fa 20             	cmp    $0x20,%dl
  4012b7:	7e e7                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012b9:	41 89 c8             	mov    %ecx,%r8d
  4012bc:	41 83 f0 01          	xor    $0x1,%r8d
  4012c0:	80 fa 22             	cmp    $0x22,%dl
  4012c3:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c7:	eb e4                	jmp    4012ad <__tmainCRTStartup+0x12d>
  4012c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 0c                	je     4012e0 <__tmainCRTStartup+0x160>
  4012d4:	48 83 c0 01          	add    $0x1,%rax
  4012d8:	0f b6 10             	movzbl (%rax),%edx
  4012db:	80 fa 20             	cmp    $0x20,%dl
  4012de:	7e f0                	jle    4012d0 <__tmainCRTStartup+0x150>
  4012e0:	48 89 05 99 76 00 00 	mov    %rax,0x7699(%rip)        # 408980 <__mingw_winmain_lpCmdLine>
  4012e7:	44 8b 05 72 6d 00 00 	mov    0x6d72(%rip),%r8d        # 408060 <mingw_app_type>
  4012ee:	45 85 c0             	test   %r8d,%r8d
  4012f1:	74 16                	je     401309 <__tmainCRTStartup+0x189>
  4012f3:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  4012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4012fd:	0f 85 ed 00 00 00    	jne    4013f0 <__tmainCRTStartup+0x270>
  401303:	89 05 f7 2c 00 00    	mov    %eax,0x2cf7(%rip)        # 404000 <__data_start__>
  401309:	44 8b 25 18 6d 00 00 	mov    0x6d18(%rip),%r12d        # 408028 <argc>
  401310:	45 8d 6c 24 01       	lea    0x1(%r12),%r13d
  401315:	4d 63 ed             	movslq %r13d,%r13
  401318:	49 c1 e5 03          	shl    $0x3,%r13
  40131c:	4c 89 e9             	mov    %r13,%rcx
  40131f:	e8 ac 1a 00 00       	callq  402dd0 <malloc>
  401324:	45 85 e4             	test   %r12d,%r12d
  401327:	48 8b 3d f2 6c 00 00 	mov    0x6cf2(%rip),%rdi        # 408020 <argv>
  40132e:	48 89 c5             	mov    %rax,%rbp
  401331:	0f 8e 5b 01 00 00    	jle    401492 <__tmainCRTStartup+0x312>
  401337:	31 db                	xor    %ebx,%ebx
  401339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401340:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401344:	e8 8f 1a 00 00       	callq  402dd8 <strlen>
  401349:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134d:	48 89 f1             	mov    %rsi,%rcx
  401350:	e8 7b 1a 00 00       	callq  402dd0 <malloc>
  401355:	49 89 f0             	mov    %rsi,%r8
  401358:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40135d:	48 89 c1             	mov    %rax,%rcx
  401360:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  401364:	48 83 c3 01          	add    $0x1,%rbx
  401368:	e8 73 1a 00 00       	callq  402de0 <memcpy>
  40136d:	41 39 dc             	cmp    %ebx,%r12d
  401370:	7f ce                	jg     401340 <__tmainCRTStartup+0x1c0>
  401372:	49 83 ed 08          	sub    $0x8,%r13
  401376:	4a c7 44 2d 00 00 00 	movq   $0x0,0x0(%rbp,%r13,1)
  40137d:	00 00 
  40137f:	48 89 2d 9a 6c 00 00 	mov    %rbp,0x6c9a(%rip)        # 408020 <argv>
  401386:	e8 95 10 00 00       	callq  402420 <__main>
  40138b:	48 8b 15 86 6c 00 00 	mov    0x6c86(%rip),%rdx        # 408018 <envp>
  401392:	48 8b 05 8f 7f 00 00 	mov    0x7f8f(%rip),%rax        # 409328 <__imp___initenv>
  401399:	8b 0d 89 6c 00 00    	mov    0x6c89(%rip),%ecx        # 408028 <argc>
  40139f:	48 89 10             	mov    %rdx,(%rax)
  4013a2:	4c 8b 05 6f 6c 00 00 	mov    0x6c6f(%rip),%r8        # 408018 <envp>
  4013a9:	48 8b 15 70 6c 00 00 	mov    0x6c70(%rip),%rdx        # 408020 <argv>
  4013b0:	e8 9b 1b 00 00       	callq  402f50 <main>
  4013b5:	8b 0d 4d 6c 00 00    	mov    0x6c4d(%rip),%ecx        # 408008 <managedapp>
  4013bb:	89 05 4b 6c 00 00    	mov    %eax,0x6c4b(%rip)        # 40800c <mainret>
  4013c1:	85 c9                	test   %ecx,%ecx
  4013c3:	0f 84 d1 00 00 00    	je     40149a <__tmainCRTStartup+0x31a>
  4013c9:	8b 15 35 6c 00 00    	mov    0x6c35(%rip),%edx        # 408004 <has_cctor>
  4013cf:	85 d2                	test   %edx,%edx
  4013d1:	75 0b                	jne    4013de <__tmainCRTStartup+0x25e>
  4013d3:	e8 10 1a 00 00       	callq  402de8 <_cexit>
  4013d8:	8b 05 2e 6c 00 00    	mov    0x6c2e(%rip),%eax        # 40800c <mainret>
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
  4013f5:	e9 09 ff ff ff       	jmpq   401303 <__tmainCRTStartup+0x183>
  4013fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401400:	8b 05 9a 75 00 00    	mov    0x759a(%rip),%eax        # 4089a0 <__native_startup_state>
  401406:	bb 01 00 00 00       	mov    $0x1,%ebx
  40140b:	83 f8 01             	cmp    $0x1,%eax
  40140e:	0f 85 ee fd ff ff    	jne    401202 <__tmainCRTStartup+0x82>
  401414:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401419:	e8 d2 19 00 00       	callq  402df0 <_amsg_exit>
  40141e:	8b 05 7c 75 00 00    	mov    0x757c(%rip),%eax        # 4089a0 <__native_startup_state>
  401424:	83 f8 01             	cmp    $0x1,%eax
  401427:	0f 85 fc fd ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  40142d:	48 8d 15 dc 8b 00 00 	lea    0x8bdc(%rip),%rdx        # 40a010 <__xc_z>
  401434:	48 8d 0d c5 8b 00 00 	lea    0x8bc5(%rip),%rcx        # 40a000 <___crt_xc_start__>
  40143b:	e8 b8 19 00 00       	callq  402df8 <_initterm>
  401440:	85 db                	test   %ebx,%ebx
  401442:	c7 05 54 75 00 00 02 	movl   $0x2,0x7554(%rip)        # 4089a0 <__native_startup_state>
  401449:	00 00 00 
  40144c:	0f 85 df fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  401452:	31 c0                	xor    %eax,%eax
  401454:	48 87 05 4d 75 00 00 	xchg   %rax,0x754d(%rip)        # 4089a8 <__native_startup_lock>
  40145b:	e9 d1 fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  401460:	48 89 d1             	mov    %rdx,%rcx
  401463:	ff 15 17 7e 00 00    	callq  *0x7e17(%rip)        # 409280 <__imp_GetStartupInfoA>
  401469:	e9 43 fd ff ff       	jmpq   4011b1 <__tmainCRTStartup+0x31>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	48 8d 15 b9 8b 00 00 	lea    0x8bb9(%rip),%rdx        # 40a030 <__xi_z>
  401477:	c7 05 1f 75 00 00 01 	movl   $0x1,0x751f(%rip)        # 4089a0 <__native_startup_state>
  40147e:	00 00 00 
  401481:	48 8d 0d 90 8b 00 00 	lea    0x8b90(%rip),%rcx        # 40a018 <___crt_xc_end__>
  401488:	e8 6b 19 00 00       	callq  402df8 <_initterm>
  40148d:	e9 88 fd ff ff       	jmpq   40121a <__tmainCRTStartup+0x9a>
  401492:	45 31 ed             	xor    %r13d,%r13d
  401495:	e9 dc fe ff ff       	jmpq   401376 <__tmainCRTStartup+0x1f6>
  40149a:	89 c1                	mov    %eax,%ecx
  40149c:	0f 1f 40 00          	nopl   0x0(%rax)
  4014a0:	e8 5b 19 00 00       	callq  402e00 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	c7 05 a2 6b 00 00 01 	movl   $0x1,0x6ba2(%rip)        # 408060 <mingw_app_type>
  4014bb:	00 00 00 
  4014be:	e8 7d 0f 00 00       	callq  402440 <__security_init_cookie>
  4014c3:	e8 b8 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014c8:	90                   	nop

00000000004014c9 <.l_endw>:
  4014c9:	90                   	nop
  4014ca:	48 83 c4 28          	add    $0x28,%rsp
  4014ce:	c3                   	retq   
  4014cf:	90                   	nop

00000000004014d0 <mainCRTStartup>:
  4014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014d4 <.l_start>:
  4014d4:	c7 05 82 6b 00 00 00 	movl   $0x0,0x6b82(%rip)        # 408060 <mingw_app_type>
  4014db:	00 00 00 
  4014de:	e8 5d 0f 00 00       	callq  402440 <__security_init_cookie>
  4014e3:	e8 98 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014e8:	90                   	nop

00000000004014e9 <.l_end>:
  4014e9:	90                   	nop
  4014ea:	48 83 c4 28          	add    $0x28,%rsp
  4014ee:	c3                   	retq   
  4014ef:	90                   	nop

00000000004014f0 <__tcf_0>:
  4014f0:	48 8d 0d 39 6b 00 00 	lea    0x6b39(%rip),%rcx        # 408030 <_ZStL8__ioinit>
  4014f7:	e9 f4 00 00 00       	jmpq   4015f0 <_ZNSt8ios_base4InitD1Ev>
  4014fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401500 <_Z14is_prime_floaty>:
  401500:	53                   	push   %rbx
  401501:	48 83 ec 50          	sub    $0x50,%rsp
  401505:	0f 29 74 24 30       	movaps %xmm6,0x30(%rsp)
  40150a:	0f 29 7c 24 40       	movaps %xmm7,0x40(%rsp)
  40150f:	48 85 c9             	test   %rcx,%rcx
  401512:	0f 88 9a 00 00 00    	js     4015b2 <_Z14is_prime_floaty+0xb2>
  401518:	66 0f ef ff          	pxor   %xmm7,%xmm7
  40151c:	f2 48 0f 2a f9       	cvtsi2sd %rcx,%xmm7
  401521:	f2 0f 51 f7          	sqrtsd %xmm7,%xmm6
  401525:	bb 02 00 00 00       	mov    $0x2,%ebx
  40152a:	eb 24                	jmp    401550 <_Z14is_prime_floaty+0x50>
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)
  401530:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401534:	f2 48 0f 2a cb       	cvtsi2sd %rbx,%xmm1
  401539:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  40153d:	72 42                	jb     401581 <_Z14is_prime_floaty+0x81>
  40153f:	31 d2                	xor    %edx,%edx
  401541:	48 89 c8             	mov    %rcx,%rax
  401544:	48 f7 f3             	div    %rbx
  401547:	48 85 d2             	test   %rdx,%rdx
  40154a:	74 54                	je     4015a0 <_Z14is_prime_floaty+0xa0>
  40154c:	48 83 c3 01          	add    $0x1,%rbx
  401550:	66 0f 2e f6          	ucomisd %xmm6,%xmm6
  401554:	66 0f 28 c6          	movapd %xmm6,%xmm0
  401558:	7a 79                	jp     4015d3 <_Z14is_prime_floaty+0xd3>
  40155a:	48 85 db             	test   %rbx,%rbx
  40155d:	79 d1                	jns    401530 <_Z14is_prime_floaty+0x30>
  40155f:	48 89 da             	mov    %rbx,%rdx
  401562:	48 89 d8             	mov    %rbx,%rax
  401565:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401569:	48 d1 ea             	shr    %rdx
  40156c:	83 e0 01             	and    $0x1,%eax
  40156f:	48 09 c2             	or     %rax,%rdx
  401572:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  401577:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  40157b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  40157f:	73 be                	jae    40153f <_Z14is_prime_floaty+0x3f>
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
  4015ce:	e9 4e ff ff ff       	jmpq   401521 <_Z14is_prime_floaty+0x21>
  4015d3:	66 0f 28 c7          	movapd %xmm7,%xmm0
  4015d7:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  4015dc:	e8 7f 16 00 00       	callq  402c60 <sqrt>
  4015e1:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  4015e6:	e9 6f ff ff ff       	jmpq   40155a <_Z14is_prime_floaty+0x5a>
  4015eb:	90                   	nop
  4015ec:	90                   	nop
  4015ed:	90                   	nop
  4015ee:	90                   	nop
  4015ef:	90                   	nop

00000000004015f0 <_ZNSt8ios_base4InitD1Ev>:
  4015f0:	ff 25 2a 7e 00 00    	jmpq   *0x7e2a(%rip)        # 409420 <__imp__ZNSt8ios_base4InitD1Ev>
  4015f6:	90                   	nop
  4015f7:	90                   	nop

00000000004015f8 <_ZNSt6chrono3_V212steady_clock3nowEv>:
  4015f8:	ff 25 12 7e 00 00    	jmpq   *0x7e12(%rip)        # 409410 <__imp__ZNSt6chrono3_V212steady_clock3nowEv>
  4015fe:	90                   	nop
  4015ff:	90                   	nop

0000000000401600 <_ZNSo9_M_insertIdEERSoT_>:
  401600:	ff 25 fa 7d 00 00    	jmpq   *0x7dfa(%rip)        # 409400 <__imp__ZNSo9_M_insertIdEERSoT_>
  401606:	90                   	nop
  401607:	90                   	nop

0000000000401608 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
  401608:	ff 25 1a 7e 00 00    	jmpq   *0x7e1a(%rip)        # 409428 <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
  40160e:	90                   	nop
  40160f:	90                   	nop

0000000000401610 <_ZNSo9_M_insertIyEERSoT_>:
  401610:	ff 25 f2 7d 00 00    	jmpq   *0x7df2(%rip)        # 409408 <__imp__ZNSo9_M_insertIyEERSoT_>
  401616:	90                   	nop
  401617:	90                   	nop

0000000000401618 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401618:	ff 25 22 7e 00 00    	jmpq   *0x7e22(%rip)        # 409440 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40161e:	90                   	nop
  40161f:	90                   	nop

0000000000401620 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401620:	ff 25 12 7e 00 00    	jmpq   *0x7e12(%rip)        # 409438 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401626:	90                   	nop
  401627:	90                   	nop

0000000000401628 <_ZNSt8ios_base4InitC1Ev>:
  401628:	ff 25 ea 7d 00 00    	jmpq   *0x7dea(%rip)        # 409418 <__imp__ZNSt8ios_base4InitC1Ev>
  40162e:	90                   	nop
  40162f:	90                   	nop

0000000000401630 <__dyn_tls_dtor>:
  401630:	48 83 ec 28          	sub    $0x28,%rsp
  401634:	85 d2                	test   %edx,%edx
  401636:	74 18                	je     401650 <__dyn_tls_dtor+0x20>
  401638:	83 fa 03             	cmp    $0x3,%edx
  40163b:	74 13                	je     401650 <__dyn_tls_dtor+0x20>
  40163d:	b8 01 00 00 00       	mov    $0x1,%eax
  401642:	48 83 c4 28          	add    $0x28,%rsp
  401646:	c3                   	retq   
  401647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40164e:	00 00 
  401650:	e8 4b 11 00 00       	callq  4027a0 <__mingw_TLScallback>
  401655:	b8 01 00 00 00       	mov    $0x1,%eax
  40165a:	48 83 c4 28          	add    $0x28,%rsp
  40165e:	c3                   	retq   
  40165f:	90                   	nop

0000000000401660 <__dyn_tls_init>:
  401660:	56                   	push   %rsi
  401661:	53                   	push   %rbx
  401662:	48 83 ec 28          	sub    $0x28,%rsp
  401666:	83 3d e3 29 00 00 02 	cmpl   $0x2,0x29e3(%rip)        # 404050 <_CRT_MT>
  40166d:	74 0a                	je     401679 <__dyn_tls_init+0x19>
  40166f:	c7 05 d7 29 00 00 02 	movl   $0x2,0x29d7(%rip)        # 404050 <_CRT_MT>
  401676:	00 00 00 
  401679:	83 fa 02             	cmp    $0x2,%edx
  40167c:	74 12                	je     401690 <__dyn_tls_init+0x30>
  40167e:	83 fa 01             	cmp    $0x1,%edx
  401681:	74 3f                	je     4016c2 <__dyn_tls_init+0x62>
  401683:	b8 01 00 00 00       	mov    $0x1,%eax
  401688:	48 83 c4 28          	add    $0x28,%rsp
  40168c:	5b                   	pop    %rbx
  40168d:	5e                   	pop    %rsi
  40168e:	c3                   	retq   
  40168f:	90                   	nop
  401690:	48 8d 1d c9 89 00 00 	lea    0x89c9(%rip),%rbx        # 40a060 <__xd_z>
  401697:	48 8d 35 c2 89 00 00 	lea    0x89c2(%rip),%rsi        # 40a060 <__xd_z>
  40169e:	48 39 f3             	cmp    %rsi,%rbx
  4016a1:	74 e0                	je     401683 <__dyn_tls_init+0x23>
  4016a3:	48 8b 03             	mov    (%rbx),%rax
  4016a6:	48 85 c0             	test   %rax,%rax
  4016a9:	74 02                	je     4016ad <__dyn_tls_init+0x4d>
  4016ab:	ff d0                	callq  *%rax
  4016ad:	48 83 c3 08          	add    $0x8,%rbx
  4016b1:	48 39 f3             	cmp    %rsi,%rbx
  4016b4:	75 ed                	jne    4016a3 <__dyn_tls_init+0x43>
  4016b6:	b8 01 00 00 00       	mov    $0x1,%eax
  4016bb:	48 83 c4 28          	add    $0x28,%rsp
  4016bf:	5b                   	pop    %rbx
  4016c0:	5e                   	pop    %rsi
  4016c1:	c3                   	retq   
  4016c2:	e8 d9 10 00 00       	callq  4027a0 <__mingw_TLScallback>
  4016c7:	eb ba                	jmp    401683 <__dyn_tls_init+0x23>
  4016c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004016d0 <__tlregdtor>:
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

00000000004016e0 <my_lconv_init>:
  4016e0:	48 8b 05 51 7c 00 00 	mov    0x7c51(%rip),%rax        # 409338 <__imp___lconv_init>
  4016e7:	48 ff e0             	rex.W jmpq *%rax
  4016ea:	90                   	nop
  4016eb:	90                   	nop
  4016ec:	90                   	nop
  4016ed:	90                   	nop
  4016ee:	90                   	nop
  4016ef:	90                   	nop

00000000004016f0 <_decode_pointer>:
  4016f0:	48 89 c8             	mov    %rcx,%rax
  4016f3:	c3                   	retq   
  4016f4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4016fb:	00 00 00 00 00 

0000000000401700 <_encode_pointer>:
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

0000000000401710 <mingw_onexit>:
  401710:	53                   	push   %rbx
  401711:	48 83 ec 30          	sub    $0x30,%rsp
  401715:	48 89 cb             	mov    %rcx,%rbx
  401718:	48 8b 0d 71 72 00 00 	mov    0x7271(%rip),%rcx        # 408990 <__onexitbegin>
  40171f:	e8 cc ff ff ff       	callq  4016f0 <_decode_pointer>
  401724:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401728:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40172d:	74 76                	je     4017a5 <mingw_onexit+0x95>
  40172f:	b9 08 00 00 00       	mov    $0x8,%ecx
  401734:	e8 df 16 00 00       	callq  402e18 <_lock>
  401739:	48 8b 0d 50 72 00 00 	mov    0x7250(%rip),%rcx        # 408990 <__onexitbegin>
  401740:	e8 ab ff ff ff       	callq  4016f0 <_decode_pointer>
  401745:	48 8b 0d 4c 72 00 00 	mov    0x724c(%rip),%rcx        # 408998 <__onexitend>
  40174c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401751:	e8 9a ff ff ff       	callq  4016f0 <_decode_pointer>
  401756:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40175b:	48 89 d9             	mov    %rbx,%rcx
  40175e:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
  401763:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401768:	e8 b3 16 00 00       	callq  402e20 <__dllonexit>
  40176d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401772:	48 89 c3             	mov    %rax,%rbx
  401775:	e8 86 ff ff ff       	callq  401700 <_encode_pointer>
  40177a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40177f:	48 89 05 0a 72 00 00 	mov    %rax,0x720a(%rip)        # 408990 <__onexitbegin>
  401786:	e8 75 ff ff ff       	callq  401700 <_encode_pointer>
  40178b:	b9 08 00 00 00       	mov    $0x8,%ecx
  401790:	48 89 05 01 72 00 00 	mov    %rax,0x7201(%rip)        # 408998 <__onexitend>
  401797:	e8 8c 16 00 00       	callq  402e28 <_unlock>
  40179c:	48 89 d8             	mov    %rbx,%rax
  40179f:	48 83 c4 30          	add    $0x30,%rsp
  4017a3:	5b                   	pop    %rbx
  4017a4:	c3                   	retq   
  4017a5:	48 89 d9             	mov    %rbx,%rcx
  4017a8:	ff 15 da 7b 00 00    	callq  *0x7bda(%rip)        # 409388 <__imp__onexit>
  4017ae:	48 83 c4 30          	add    $0x30,%rsp
  4017b2:	5b                   	pop    %rbx
  4017b3:	c3                   	retq   
  4017b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4017bb:	00 00 00 00 00 

00000000004017c0 <atexit>:
  4017c0:	48 83 ec 28          	sub    $0x28,%rsp
  4017c4:	e8 47 ff ff ff       	callq  401710 <mingw_onexit>
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

00000000004017e0 <__mingw_SEH_error_handler>:
  4017e0:	53                   	push   %rbx
  4017e1:	48 83 ec 30          	sub    $0x30,%rsp
  4017e5:	8b 01                	mov    (%rcx),%eax
  4017e7:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4017ec:	77 62                	ja     401850 <__mingw_SEH_error_handler+0x70>
  4017ee:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4017f3:	73 7e                	jae    401873 <__mingw_SEH_error_handler+0x93>
  4017f5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4017fa:	0f 84 10 01 00 00    	je     401910 <__mingw_SEH_error_handler+0x130>
  401800:	0f 87 ea 00 00 00    	ja     4018f0 <__mingw_SEH_error_handler+0x110>
  401806:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40180b:	0f 84 ff 00 00 00    	je     401910 <__mingw_SEH_error_handler+0x130>
  401811:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401816:	0f 85 e2 00 00 00    	jne    4018fe <__mingw_SEH_error_handler+0x11e>
  40181c:	31 d2                	xor    %edx,%edx
  40181e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401823:	e8 08 16 00 00       	callq  402e30 <signal>
  401828:	48 83 f8 01          	cmp    $0x1,%rax
  40182c:	0f 84 34 01 00 00    	je     401966 <__mingw_SEH_error_handler+0x186>
  401832:	48 85 c0             	test   %rax,%rax
  401835:	0f 84 f5 00 00 00    	je     401930 <__mingw_SEH_error_handler+0x150>
  40183b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401840:	ff d0                	callq  *%rax
  401842:	31 c0                	xor    %eax,%eax
  401844:	48 83 c4 30          	add    $0x30,%rsp
  401848:	5b                   	pop    %rbx
  401849:	c3                   	retq   
  40184a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401850:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401855:	0f 84 c5 00 00 00    	je     401920 <__mingw_SEH_error_handler+0x140>
  40185b:	77 53                	ja     4018b0 <__mingw_SEH_error_handler+0xd0>
  40185d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401862:	0f 84 a8 00 00 00    	je     401910 <__mingw_SEH_error_handler+0x130>
  401868:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  40186d:	0f 85 8b 00 00 00    	jne    4018fe <__mingw_SEH_error_handler+0x11e>
  401873:	bb 01 00 00 00       	mov    $0x1,%ebx
  401878:	31 d2                	xor    %edx,%edx
  40187a:	b9 08 00 00 00       	mov    $0x8,%ecx
  40187f:	e8 ac 15 00 00       	callq  402e30 <signal>
  401884:	48 83 f8 01          	cmp    $0x1,%rax
  401888:	48 89 c2             	mov    %rax,%rdx
  40188b:	0f 84 af 00 00 00    	je     401940 <__mingw_SEH_error_handler+0x160>
  401891:	48 85 d2             	test   %rdx,%rdx
  401894:	b8 01 00 00 00       	mov    $0x1,%eax
  401899:	74 a9                	je     401844 <__mingw_SEH_error_handler+0x64>
  40189b:	b9 08 00 00 00       	mov    $0x8,%ecx
  4018a0:	ff d2                	callq  *%rdx
  4018a2:	31 c0                	xor    %eax,%eax
  4018a4:	48 83 c4 30          	add    $0x30,%rsp
  4018a8:	5b                   	pop    %rbx
  4018a9:	c3                   	retq   
  4018aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4018b0:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4018b5:	74 59                	je     401910 <__mingw_SEH_error_handler+0x130>
  4018b7:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4018bc:	75 40                	jne    4018fe <__mingw_SEH_error_handler+0x11e>
  4018be:	31 d2                	xor    %edx,%edx
  4018c0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4018c5:	e8 66 15 00 00       	callq  402e30 <signal>
  4018ca:	48 83 f8 01          	cmp    $0x1,%rax
  4018ce:	0f 84 a8 00 00 00    	je     40197c <__mingw_SEH_error_handler+0x19c>
  4018d4:	48 85 c0             	test   %rax,%rax
  4018d7:	74 57                	je     401930 <__mingw_SEH_error_handler+0x150>
  4018d9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4018de:	ff d0                	callq  *%rax
  4018e0:	31 c0                	xor    %eax,%eax
  4018e2:	e9 5d ff ff ff       	jmpq   401844 <__mingw_SEH_error_handler+0x64>
  4018e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018ee:	00 00 
  4018f0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4018f5:	74 c7                	je     4018be <__mingw_SEH_error_handler+0xde>
  4018f7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4018fc:	74 12                	je     401910 <__mingw_SEH_error_handler+0x130>
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
  401922:	e9 51 ff ff ff       	jmpq   401878 <__mingw_SEH_error_handler+0x98>
  401927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40192e:	00 00 
  401930:	b8 04 00 00 00       	mov    $0x4,%eax
  401935:	48 83 c4 30          	add    $0x30,%rsp
  401939:	5b                   	pop    %rbx
  40193a:	c3                   	retq   
  40193b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401940:	b9 08 00 00 00       	mov    $0x8,%ecx
  401945:	e8 e6 14 00 00       	callq  402e30 <signal>
  40194a:	31 c0                	xor    %eax,%eax
  40194c:	85 db                	test   %ebx,%ebx
  40194e:	0f 84 f0 fe ff ff    	je     401844 <__mingw_SEH_error_handler+0x64>
  401954:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  401958:	e8 13 0a 00 00       	callq  402370 <_fpreset>
  40195d:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  401961:	e9 de fe ff ff       	jmpq   401844 <__mingw_SEH_error_handler+0x64>
  401966:	ba 01 00 00 00       	mov    $0x1,%edx
  40196b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401970:	e8 bb 14 00 00       	callq  402e30 <signal>
  401975:	31 c0                	xor    %eax,%eax
  401977:	e9 c8 fe ff ff       	jmpq   401844 <__mingw_SEH_error_handler+0x64>
  40197c:	ba 01 00 00 00       	mov    $0x1,%edx
  401981:	b9 04 00 00 00       	mov    $0x4,%ecx
  401986:	e8 a5 14 00 00       	callq  402e30 <signal>
  40198b:	31 c0                	xor    %eax,%eax
  40198d:	e9 b2 fe ff ff       	jmpq   401844 <__mingw_SEH_error_handler+0x64>
  401992:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401999:	1f 84 00 00 00 00 00 

00000000004019a0 <__mingw_init_ehandler>:
  4019a0:	41 54                	push   %r12
  4019a2:	55                   	push   %rbp
  4019a3:	57                   	push   %rdi
  4019a4:	56                   	push   %rsi
  4019a5:	53                   	push   %rbx
  4019a6:	48 83 ec 20          	sub    $0x20,%rsp
  4019aa:	e8 11 11 00 00       	callq  402ac0 <_GetPEImageBase>
  4019af:	8b 15 f3 66 00 00    	mov    0x66f3(%rip),%edx        # 4080a8 <was_here.63467>
  4019b5:	48 89 c5             	mov    %rax,%rbp
  4019b8:	85 d2                	test   %edx,%edx
  4019ba:	89 d0                	mov    %edx,%eax
  4019bc:	75 25                	jne    4019e3 <__mingw_init_ehandler+0x43>
  4019be:	48 85 ed             	test   %rbp,%rbp
  4019c1:	74 20                	je     4019e3 <__mingw_init_ehandler+0x43>
  4019c3:	48 8d 0d 66 36 00 00 	lea    0x3666(%rip),%rcx        # 405030 <.rdata>
  4019ca:	c7 05 d4 66 00 00 01 	movl   $0x1,0x66d4(%rip)        # 4080a8 <was_here.63467>
  4019d1:	00 00 00 
  4019d4:	e8 f7 0e 00 00       	callq  4028d0 <_FindPESectionByName>
  4019d9:	48 85 c0             	test   %rax,%rax
  4019dc:	74 12                	je     4019f0 <__mingw_init_ehandler+0x50>
  4019de:	b8 01 00 00 00       	mov    $0x1,%eax
  4019e3:	48 83 c4 20          	add    $0x20,%rsp
  4019e7:	5b                   	pop    %rbx
  4019e8:	5e                   	pop    %rsi
  4019e9:	5f                   	pop    %rdi
  4019ea:	5d                   	pop    %rbp
  4019eb:	41 5c                	pop    %r12
  4019ed:	c3                   	retq   
  4019ee:	66 90                	xchg   %ax,%ax
  4019f0:	48 8d 1d c9 67 00 00 	lea    0x67c9(%rip),%rbx        # 4081c0 <emu_pdata>
  4019f7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4019fc:	48 8d 35 bd 66 00 00 	lea    0x66bd(%rip),%rsi        # 4080c0 <emu_xdata>
  401a03:	48 89 df             	mov    %rbx,%rdi
  401a06:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401a09:	4c 8d 25 d0 fd ff ff 	lea    -0x230(%rip),%r12        # 4017e0 <__mingw_SEH_error_handler>
  401a10:	48 89 f7             	mov    %rsi,%rdi
  401a13:	49 29 ec             	sub    %rbp,%r12
  401a16:	b1 20                	mov    $0x20,%cl
  401a18:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401a1b:	31 ff                	xor    %edi,%edi
  401a1d:	eb 2f                	jmp    401a4e <__mingw_init_ehandler+0xae>
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
  401a4c:	74 37                	je     401a85 <__mingw_init_ehandler+0xe5>
  401a4e:	48 89 f9             	mov    %rdi,%rcx
  401a51:	e8 ca 0f 00 00       	callq  402a20 <_FindPESectionExec>
  401a56:	48 85 c0             	test   %rax,%rax
  401a59:	48 89 c2             	mov    %rax,%rdx
  401a5c:	75 c2                	jne    401a20 <__mingw_init_ehandler+0x80>
  401a5e:	48 85 ff             	test   %rdi,%rdi
  401a61:	0f 84 77 ff ff ff    	je     4019de <__mingw_init_ehandler+0x3e>
  401a67:	89 fa                	mov    %edi,%edx
  401a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a70:	48 8d 0d 49 67 00 00 	lea    0x6749(%rip),%rcx        # 4081c0 <emu_pdata>
  401a77:	49 89 e8             	mov    %rbp,%r8
  401a7a:	ff 15 30 78 00 00    	callq  *0x7830(%rip)        # 4092b0 <__imp_RtlAddFunctionTable>
  401a80:	e9 59 ff ff ff       	jmpq   4019de <__mingw_init_ehandler+0x3e>
  401a85:	ba 20 00 00 00       	mov    $0x20,%edx
  401a8a:	eb e4                	jmp    401a70 <__mingw_init_ehandler+0xd0>
  401a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a90 <_gnu_exception_handler>:
  401a90:	56                   	push   %rsi
  401a91:	53                   	push   %rbx
  401a92:	48 83 ec 28          	sub    $0x28,%rsp
  401a96:	48 8b 11             	mov    (%rcx),%rdx
  401a99:	48 89 cb             	mov    %rcx,%rbx
  401a9c:	8b 02                	mov    (%rdx),%eax
  401a9e:	89 c1                	mov    %eax,%ecx
  401aa0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  401aa6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  401aac:	0f 84 d3 00 00 00    	je     401b85 <_gnu_exception_handler+0xf5>
  401ab2:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401ab7:	0f 87 83 00 00 00    	ja     401b40 <_gnu_exception_handler+0xb0>
  401abd:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401ac2:	0f 83 93 00 00 00    	jae    401b5b <_gnu_exception_handler+0xcb>
  401ac8:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401acd:	74 32                	je     401b01 <_gnu_exception_handler+0x71>
  401acf:	77 3f                	ja     401b10 <_gnu_exception_handler+0x80>
  401ad1:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401ad6:	74 29                	je     401b01 <_gnu_exception_handler+0x71>
  401ad8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401add:	75 43                	jne    401b22 <_gnu_exception_handler+0x92>
  401adf:	31 d2                	xor    %edx,%edx
  401ae1:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401ae6:	e8 45 13 00 00       	callq  402e30 <signal>
  401aeb:	48 83 f8 01          	cmp    $0x1,%rax
  401aef:	0f 84 20 01 00 00    	je     401c15 <_gnu_exception_handler+0x185>
  401af5:	48 85 c0             	test   %rax,%rax
  401af8:	74 28                	je     401b22 <_gnu_exception_handler+0x92>
  401afa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401aff:	ff d0                	callq  *%rax
  401b01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b06:	48 83 c4 28          	add    $0x28,%rsp
  401b0a:	5b                   	pop    %rbx
  401b0b:	5e                   	pop    %rsi
  401b0c:	c3                   	retq   
  401b0d:	0f 1f 00             	nopl   (%rax)
  401b10:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  401b15:	0f 84 8f 00 00 00    	je     401baa <_gnu_exception_handler+0x11a>
  401b1b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  401b20:	74 df                	je     401b01 <_gnu_exception_handler+0x71>
  401b22:	48 8b 05 77 65 00 00 	mov    0x6577(%rip),%rax        # 4080a0 <__mingw_oldexcpt_handler>
  401b29:	48 85 c0             	test   %rax,%rax
  401b2c:	74 d8                	je     401b06 <_gnu_exception_handler+0x76>
  401b2e:	48 89 d9             	mov    %rbx,%rcx
  401b31:	48 83 c4 28          	add    $0x28,%rsp
  401b35:	5b                   	pop    %rbx
  401b36:	5e                   	pop    %rsi
  401b37:	48 ff e0             	rex.W jmpq *%rax
  401b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401b40:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401b45:	0f 84 95 00 00 00    	je     401be0 <_gnu_exception_handler+0x150>
  401b4b:	77 47                	ja     401b94 <_gnu_exception_handler+0x104>
  401b4d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401b52:	74 ad                	je     401b01 <_gnu_exception_handler+0x71>
  401b54:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401b59:	75 c7                	jne    401b22 <_gnu_exception_handler+0x92>
  401b5b:	be 01 00 00 00       	mov    $0x1,%esi
  401b60:	31 d2                	xor    %edx,%edx
  401b62:	b9 08 00 00 00       	mov    $0x8,%ecx
  401b67:	e8 c4 12 00 00       	callq  402e30 <signal>
  401b6c:	48 83 f8 01          	cmp    $0x1,%rax
  401b70:	74 7e                	je     401bf0 <_gnu_exception_handler+0x160>
  401b72:	48 85 c0             	test   %rax,%rax
  401b75:	74 ab                	je     401b22 <_gnu_exception_handler+0x92>
  401b77:	b9 08 00 00 00       	mov    $0x8,%ecx
  401b7c:	ff d0                	callq  *%rax
  401b7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b83:	eb 81                	jmp    401b06 <_gnu_exception_handler+0x76>
  401b85:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  401b89:	0f 85 23 ff ff ff    	jne    401ab2 <_gnu_exception_handler+0x22>
  401b8f:	e9 6d ff ff ff       	jmpq   401b01 <_gnu_exception_handler+0x71>
  401b94:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401b99:	0f 84 62 ff ff ff    	je     401b01 <_gnu_exception_handler+0x71>
  401b9f:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401ba4:	0f 85 78 ff ff ff    	jne    401b22 <_gnu_exception_handler+0x92>
  401baa:	31 d2                	xor    %edx,%edx
  401bac:	b9 04 00 00 00       	mov    $0x4,%ecx
  401bb1:	e8 7a 12 00 00       	callq  402e30 <signal>
  401bb6:	48 83 f8 01          	cmp    $0x1,%rax
  401bba:	74 6d                	je     401c29 <_gnu_exception_handler+0x199>
  401bbc:	48 85 c0             	test   %rax,%rax
  401bbf:	0f 84 5d ff ff ff    	je     401b22 <_gnu_exception_handler+0x92>
  401bc5:	b9 04 00 00 00       	mov    $0x4,%ecx
  401bca:	ff d0                	callq  *%rax
  401bcc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bd1:	e9 30 ff ff ff       	jmpq   401b06 <_gnu_exception_handler+0x76>
  401bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bdd:	00 00 00 
  401be0:	31 f6                	xor    %esi,%esi
  401be2:	e9 79 ff ff ff       	jmpq   401b60 <_gnu_exception_handler+0xd0>
  401be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401bee:	00 00 
  401bf0:	ba 01 00 00 00       	mov    $0x1,%edx
  401bf5:	b9 08 00 00 00       	mov    $0x8,%ecx
  401bfa:	e8 31 12 00 00       	callq  402e30 <signal>
  401bff:	85 f6                	test   %esi,%esi
  401c01:	0f 84 fa fe ff ff    	je     401b01 <_gnu_exception_handler+0x71>
  401c07:	e8 64 07 00 00       	callq  402370 <_fpreset>
  401c0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c10:	e9 ec fe ff ff       	jmpq   401b01 <_gnu_exception_handler+0x71>
  401c15:	ba 01 00 00 00       	mov    $0x1,%edx
  401c1a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401c1f:	e8 0c 12 00 00       	callq  402e30 <signal>
  401c24:	e9 d8 fe ff ff       	jmpq   401b01 <_gnu_exception_handler+0x71>
  401c29:	ba 01 00 00 00       	mov    $0x1,%edx
  401c2e:	b9 04 00 00 00       	mov    $0x4,%ecx
  401c33:	e8 f8 11 00 00       	callq  402e30 <signal>
  401c38:	e9 c4 fe ff ff       	jmpq   401b01 <_gnu_exception_handler+0x71>
  401c3d:	90                   	nop
  401c3e:	90                   	nop
  401c3f:	90                   	nop

0000000000401c40 <_setargv>:
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

0000000000401c50 <__mingw_raise_matherr>:
  401c50:	48 83 ec 58          	sub    $0x58,%rsp
  401c54:	48 8b 05 e5 66 00 00 	mov    0x66e5(%rip),%rax        # 408340 <stUserMathErr>
  401c5b:	48 85 c0             	test   %rax,%rax
  401c5e:	74 2c                	je     401c8c <__mingw_raise_matherr+0x3c>
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

0000000000401ca0 <__mingw_setusermatherr>:
  401ca0:	48 89 0d 99 66 00 00 	mov    %rcx,0x6699(%rip)        # 408340 <stUserMathErr>
  401ca7:	e9 8c 11 00 00       	jmpq   402e38 <__setusermatherr>
  401cac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401cb0 <_matherr>:
  401cb0:	56                   	push   %rsi
  401cb1:	53                   	push   %rbx
  401cb2:	48 83 ec 78          	sub    $0x78,%rsp
  401cb6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401cbb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401cc0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401cc6:	83 39 06             	cmpl   $0x6,(%rcx)
  401cc9:	0f 87 d1 00 00 00    	ja     401da0 <_matherr+0xf0>
  401ccf:	8b 11                	mov    (%rcx),%edx
  401cd1:	48 8d 05 8c 34 00 00 	lea    0x348c(%rip),%rax        # 405164 <.rdata+0x124>
  401cd8:	48 63 14 90          	movslq (%rax,%rdx,4),%rdx
  401cdc:	48 01 d0             	add    %rdx,%rax
  401cdf:	ff e0                	jmpq   *%rax
  401ce1:	48 8d 1d 77 33 00 00 	lea    0x3377(%rip),%rbx        # 40505f <.rdata+0x1f>
  401ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401cef:	00 
  401cf0:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401cf4:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401cfa:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401cff:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401d04:	e8 37 11 00 00       	callq  402e40 <__iob_func>
  401d09:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401d10:	49 89 f1             	mov    %rsi,%r9
  401d13:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401d19:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401d1d:	49 89 d8             	mov    %rbx,%r8
  401d20:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401d26:	48 8d 15 0b 34 00 00 	lea    0x340b(%rip),%rdx        # 405138 <.rdata+0xf8>
  401d2d:	e8 16 11 00 00       	callq  402e48 <fprintf>
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
  401d50:	48 8d 1d 29 33 00 00 	lea    0x3329(%rip),%rbx        # 405080 <.rdata+0x40>
  401d57:	eb 97                	jmp    401cf0 <_matherr+0x40>
  401d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401d60:	48 8d 1d 89 33 00 00 	lea    0x3389(%rip),%rbx        # 4050f0 <.rdata+0xb0>
  401d67:	eb 87                	jmp    401cf0 <_matherr+0x40>
  401d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401d70:	48 8d 1d 51 33 00 00 	lea    0x3351(%rip),%rbx        # 4050c8 <.rdata+0x88>
  401d77:	e9 74 ff ff ff       	jmpq   401cf0 <_matherr+0x40>
  401d7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401d80:	48 8d 1d 19 33 00 00 	lea    0x3319(%rip),%rbx        # 4050a0 <.rdata+0x60>
  401d87:	e9 64 ff ff ff       	jmpq   401cf0 <_matherr+0x40>
  401d8c:	0f 1f 40 00          	nopl   0x0(%rax)
  401d90:	48 8d 1d a9 32 00 00 	lea    0x32a9(%rip),%rbx        # 405040 <.rdata>
  401d97:	e9 54 ff ff ff       	jmpq   401cf0 <_matherr+0x40>
  401d9c:	0f 1f 40 00          	nopl   0x0(%rax)
  401da0:	48 8d 1d 7f 33 00 00 	lea    0x337f(%rip),%rbx        # 405126 <.rdata+0xe6>
  401da7:	e9 44 ff ff ff       	jmpq   401cf0 <_matherr+0x40>
  401dac:	90                   	nop
  401dad:	90                   	nop
  401dae:	90                   	nop
  401daf:	90                   	nop

0000000000401db0 <__report_error>:
  401db0:	56                   	push   %rsi
  401db1:	53                   	push   %rbx
  401db2:	48 83 ec 38          	sub    $0x38,%rsp
  401db6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401dbb:	48 89 cb             	mov    %rcx,%rbx
  401dbe:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401dc3:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401dc8:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401dcd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401dd2:	e8 69 10 00 00       	callq  402e40 <__iob_func>
  401dd7:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401ddd:	ba 01 00 00 00       	mov    $0x1,%edx
  401de2:	4c 8d 48 60          	lea    0x60(%rax),%r9
  401de6:	48 8d 0d 93 33 00 00 	lea    0x3393(%rip),%rcx        # 405180 <.rdata>
  401ded:	e8 5e 10 00 00       	callq  402e50 <fwrite>
  401df2:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401df7:	e8 44 10 00 00       	callq  402e40 <__iob_func>
  401dfc:	48 89 da             	mov    %rbx,%rdx
  401dff:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401e03:	49 89 f0             	mov    %rsi,%r8
  401e06:	e8 4d 10 00 00       	callq  402e58 <vfprintf>
  401e0b:	e8 50 10 00 00       	callq  402e60 <abort>
  401e10:	90                   	nop
  401e11:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401e18:	0f 1f 84 00 00 00 00 
  401e1f:	00 

0000000000401e20 <__write_memory.part.0>:
  401e20:	41 56                	push   %r14
  401e22:	41 55                	push   %r13
  401e24:	41 54                	push   %r12
  401e26:	55                   	push   %rbp
  401e27:	57                   	push   %rdi
  401e28:	56                   	push   %rsi
  401e29:	53                   	push   %rbx
  401e2a:	48 83 ec 60          	sub    $0x60,%rsp
  401e2e:	48 89 ce             	mov    %rcx,%rsi
  401e31:	8b 0d 1d 65 00 00    	mov    0x651d(%rip),%ecx        # 408354 <maxSections>
  401e37:	48 89 d7             	mov    %rdx,%rdi
  401e3a:	4c 89 c5             	mov    %r8,%rbp
  401e3d:	85 c9                	test   %ecx,%ecx
  401e3f:	0f 8e c0 01 00 00    	jle    402005 <__write_memory.part.0+0x1e5>
  401e45:	48 8b 05 0c 65 00 00 	mov    0x650c(%rip),%rax        # 408358 <the_secs>
  401e4c:	31 db                	xor    %ebx,%ebx
  401e4e:	66 90                	xchg   %ax,%ax
  401e50:	4c 8b 48 08          	mov    0x8(%rax),%r9
  401e54:	4c 39 ce             	cmp    %r9,%rsi
  401e57:	72 13                	jb     401e6c <__write_memory.part.0+0x4c>
  401e59:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e5d:	8b 52 08             	mov    0x8(%rdx),%edx
  401e60:	49 01 d1             	add    %rdx,%r9
  401e63:	4c 39 ce             	cmp    %r9,%rsi
  401e66:	0f 82 d4 00 00 00    	jb     401f40 <__write_memory.part.0+0x120>
  401e6c:	83 c3 01             	add    $0x1,%ebx
  401e6f:	48 83 c0 18          	add    $0x18,%rax
  401e73:	39 cb                	cmp    %ecx,%ebx
  401e75:	75 d9                	jne    401e50 <__write_memory.part.0+0x30>
  401e77:	48 89 f1             	mov    %rsi,%rcx
  401e7a:	e8 01 0b 00 00       	callq  402980 <__mingw_GetSectionForAddress>
  401e7f:	48 85 c0             	test   %rax,%rax
  401e82:	49 89 c4             	mov    %rax,%r12
  401e85:	0f 84 9e 01 00 00    	je     402029 <__write_memory.part.0+0x209>
  401e8b:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  401e90:	48 63 db             	movslq %ebx,%rbx
  401e93:	4c 8d 34 5b          	lea    (%rbx,%rbx,2),%r14
  401e97:	49 c1 e6 03          	shl    $0x3,%r14
  401e9b:	4c 89 f3             	mov    %r14,%rbx
  401e9e:	48 03 1d b3 64 00 00 	add    0x64b3(%rip),%rbx        # 408358 <the_secs>
  401ea5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ea9:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
  401eaf:	e8 0c 0c 00 00       	callq  402ac0 <_GetPEImageBase>
  401eb4:	41 8b 54 24 0c       	mov    0xc(%r12),%edx
  401eb9:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401ebf:	48 01 d0             	add    %rdx,%rax
  401ec2:	4c 89 ea             	mov    %r13,%rdx
  401ec5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ec9:	48 8b 05 88 64 00 00 	mov    0x6488(%rip),%rax        # 408358 <the_secs>
  401ed0:	48 8b 1d 29 74 00 00 	mov    0x7429(%rip),%rbx        # 409300 <__imp_VirtualQuery>
  401ed7:	4a 8b 4c 30 08       	mov    0x8(%rax,%r14,1),%rcx
  401edc:	ff d3                	callq  *%rbx
  401ede:	48 85 c0             	test   %rax,%rax
  401ee1:	0f 84 25 01 00 00    	je     40200c <__write_memory.part.0+0x1ec>
  401ee7:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401eeb:	83 f8 04             	cmp    $0x4,%eax
  401eee:	0f 85 cc 00 00 00    	jne    401fc0 <__write_memory.part.0+0x1a0>
  401ef4:	83 05 59 64 00 00 01 	addl   $0x1,0x6459(%rip)        # 408354 <maxSections>
  401efb:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401f01:	4c 89 ea             	mov    %r13,%rdx
  401f04:	48 89 f1             	mov    %rsi,%rcx
  401f07:	ff d3                	callq  *%rbx
  401f09:	48 85 c0             	test   %rax,%rax
  401f0c:	0f 84 26 01 00 00    	je     402038 <__write_memory.part.0+0x218>
  401f12:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401f16:	83 f8 04             	cmp    $0x4,%eax
  401f19:	75 35                	jne    401f50 <__write_memory.part.0+0x130>
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
  401f32:	e9 a9 0e 00 00       	jmpq   402de0 <memcpy>
  401f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401f3e:	00 00 
  401f40:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  401f45:	48 8b 1d b4 73 00 00 	mov    0x73b4(%rip),%rbx        # 409300 <__imp_VirtualQuery>
  401f4c:	eb ad                	jmp    401efb <__write_memory.part.0+0xdb>
  401f4e:	66 90                	xchg   %ax,%ax
  401f50:	83 f8 40             	cmp    $0x40,%eax
  401f53:	74 c6                	je     401f1b <__write_memory.part.0+0xfb>
  401f55:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  401f5a:	4c 8d 64 24 2c       	lea    0x2c(%rsp),%r12
  401f5f:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401f65:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401f6a:	4d 89 e1             	mov    %r12,%r9
  401f6d:	48 8b 1d 84 73 00 00 	mov    0x7384(%rip),%rbx        # 4092f8 <__imp_VirtualProtect>
  401f74:	ff d3                	callq  *%rbx
  401f76:	49 89 e8             	mov    %rbp,%r8
  401f79:	48 89 fa             	mov    %rdi,%rdx
  401f7c:	48 89 f1             	mov    %rsi,%rcx
  401f7f:	e8 5c 0e 00 00       	callq  402de0 <memcpy>
  401f84:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401f88:	83 f8 40             	cmp    $0x40,%eax
  401f8b:	74 1a                	je     401fa7 <__write_memory.part.0+0x187>
  401f8d:	83 f8 04             	cmp    $0x4,%eax
  401f90:	74 15                	je     401fa7 <__write_memory.part.0+0x187>
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
  401fc3:	0f 84 2b ff ff ff    	je     401ef4 <__write_memory.part.0+0xd4>
  401fc9:	4c 03 35 88 63 00 00 	add    0x6388(%rip),%r14        # 408358 <the_secs>
  401fd0:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401fd6:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  401fdb:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401fe0:	4d 89 f1             	mov    %r14,%r9
  401fe3:	ff 15 0f 73 00 00    	callq  *0x730f(%rip)        # 4092f8 <__imp_VirtualProtect>
  401fe9:	85 c0                	test   %eax,%eax
  401feb:	0f 85 03 ff ff ff    	jne    401ef4 <__write_memory.part.0+0xd4>
  401ff1:	ff 15 81 72 00 00    	callq  *0x7281(%rip)        # 409278 <__imp_GetLastError>
  401ff7:	48 8d 0d fa 31 00 00 	lea    0x31fa(%rip),%rcx        # 4051f8 <.rdata+0x78>
  401ffe:	89 c2                	mov    %eax,%edx
  402000:	e8 ab fd ff ff       	callq  401db0 <__report_error>
  402005:	31 db                	xor    %ebx,%ebx
  402007:	e9 6b fe ff ff       	jmpq   401e77 <__write_memory.part.0+0x57>
  40200c:	48 8b 05 45 63 00 00 	mov    0x6345(%rip),%rax        # 408358 <the_secs>
  402013:	48 8d 0d a6 31 00 00 	lea    0x31a6(%rip),%rcx        # 4051c0 <.rdata+0x40>
  40201a:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  40201f:	4e 8b 44 30 08       	mov    0x8(%rax,%r14,1),%r8
  402024:	e8 87 fd ff ff       	callq  401db0 <__report_error>
  402029:	48 8d 0d 70 31 00 00 	lea    0x3170(%rip),%rcx        # 4051a0 <.rdata+0x20>
  402030:	48 89 f2             	mov    %rsi,%rdx
  402033:	e8 78 fd ff ff       	callq  401db0 <__report_error>
  402038:	48 8d 0d 81 31 00 00 	lea    0x3181(%rip),%rcx        # 4051c0 <.rdata+0x40>
  40203f:	49 89 f0             	mov    %rsi,%r8
  402042:	ba 30 00 00 00       	mov    $0x30,%edx
  402047:	e8 64 fd ff ff       	callq  401db0 <__report_error>
  40204c:	90                   	nop
  40204d:	0f 1f 00             	nopl   (%rax)

0000000000402050 <_pei386_runtime_relocator>:
  402050:	55                   	push   %rbp
  402051:	41 56                	push   %r14
  402053:	41 55                	push   %r13
  402055:	41 54                	push   %r12
  402057:	57                   	push   %rdi
  402058:	56                   	push   %rsi
  402059:	53                   	push   %rbx
  40205a:	48 89 e5             	mov    %rsp,%rbp
  40205d:	48 83 ec 60          	sub    $0x60,%rsp
  402061:	8b 1d e9 62 00 00    	mov    0x62e9(%rip),%ebx        # 408350 <was_init.63638>
  402067:	85 db                	test   %ebx,%ebx
  402069:	74 15                	je     402080 <_pei386_runtime_relocator+0x30>
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
  402080:	c7 05 c6 62 00 00 01 	movl   $0x1,0x62c6(%rip)        # 408350 <was_init.63638>
  402087:	00 00 00 
  40208a:	e8 41 09 00 00       	callq  4029d0 <__mingw_GetSectionCount>
  40208f:	48 98                	cltq   
  402091:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  402095:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40209c:	00 
  40209d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020a1:	e8 7a 0b 00 00       	callq  402c20 <___chkstk_ms>
  4020a6:	48 8d 35 5b 39 00 00 	lea    0x395b(%rip),%rsi        # 405a08 <__RUNTIME_PSEUDO_RELOC_LIST_END__>
  4020ad:	c7 05 9d 62 00 00 00 	movl   $0x0,0x629d(%rip)        # 408354 <maxSections>
  4020b4:	00 00 00 
  4020b7:	48 8d 1d 32 39 00 00 	lea    0x3932(%rip),%rbx        # 4059f0 <__rt_psrelocs_start>
  4020be:	48 29 c4             	sub    %rax,%rsp
  4020c1:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4020c6:	48 89 05 8b 62 00 00 	mov    %rax,0x628b(%rip)        # 408358 <the_secs>
  4020cd:	48 89 f0             	mov    %rsi,%rax
  4020d0:	48 29 d8             	sub    %rbx,%rax
  4020d3:	48 83 f8 07          	cmp    $0x7,%rax
  4020d7:	7e 92                	jle    40206b <_pei386_runtime_relocator+0x1b>
  4020d9:	48 83 f8 0b          	cmp    $0xb,%rax
  4020dd:	7e 33                	jle    402112 <_pei386_runtime_relocator+0xc2>
  4020df:	44 8b 1d 0a 39 00 00 	mov    0x390a(%rip),%r11d        # 4059f0 <__rt_psrelocs_start>
  4020e6:	45 85 db             	test   %r11d,%r11d
  4020e9:	0f 85 51 01 00 00    	jne    402240 <_pei386_runtime_relocator+0x1f0>
  4020ef:	44 8b 15 fe 38 00 00 	mov    0x38fe(%rip),%r10d        # 4059f4 <__rt_psrelocs_start+0x4>
  4020f6:	45 85 d2             	test   %r10d,%r10d
  4020f9:	0f 85 41 01 00 00    	jne    402240 <_pei386_runtime_relocator+0x1f0>
  4020ff:	44 8b 0d f2 38 00 00 	mov    0x38f2(%rip),%r9d        # 4059f8 <__rt_psrelocs_start+0x8>
  402106:	45 85 c9             	test   %r9d,%r9d
  402109:	75 1e                	jne    402129 <_pei386_runtime_relocator+0xd9>
  40210b:	48 8d 1d ea 38 00 00 	lea    0x38ea(%rip),%rbx        # 4059fc <__rt_psrelocs_start+0xc>
  402112:	44 8b 03             	mov    (%rbx),%r8d
  402115:	45 85 c0             	test   %r8d,%r8d
  402118:	0f 85 22 01 00 00    	jne    402240 <_pei386_runtime_relocator+0x1f0>
  40211e:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402121:	85 c9                	test   %ecx,%ecx
  402123:	0f 85 17 01 00 00    	jne    402240 <_pei386_runtime_relocator+0x1f0>
  402129:	8b 53 08             	mov    0x8(%rbx),%edx
  40212c:	83 fa 01             	cmp    $0x1,%edx
  40212f:	0f 85 28 02 00 00    	jne    40235d <_pei386_runtime_relocator+0x30d>
  402135:	48 83 c3 0c          	add    $0xc,%rbx
  402139:	48 39 f3             	cmp    %rsi,%rbx
  40213c:	0f 83 29 ff ff ff    	jae    40206b <_pei386_runtime_relocator+0x1b>
  402142:	4c 8d 35 b7 de ff ff 	lea    -0x2149(%rip),%r14        # 400000 <__ImageBase>
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
  40216d:	0f 84 49 01 00 00    	je     4022bc <_pei386_runtime_relocator+0x26c>
  402173:	0f 86 05 01 00 00    	jbe    40227e <_pei386_runtime_relocator+0x22e>
  402179:	83 f8 20             	cmp    $0x20,%eax
  40217c:	0f 84 8a 01 00 00    	je     40230c <_pei386_runtime_relocator+0x2bc>
  402182:	83 f8 40             	cmp    $0x40,%eax
  402185:	0f 85 6b 01 00 00    	jne    4022f6 <_pei386_runtime_relocator+0x2a6>
  40218b:	4c 29 c2             	sub    %r8,%rdx
  40218e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402194:	4c 89 e7             	mov    %r12,%rdi
  402197:	48 03 11             	add    (%rcx),%rdx
  40219a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40219e:	4c 89 e2             	mov    %r12,%rdx
  4021a1:	e8 7a fc ff ff       	callq  401e20 <__write_memory.part.0>
  4021a6:	48 83 c3 0c          	add    $0xc,%rbx
  4021aa:	48 39 f3             	cmp    %rsi,%rbx
  4021ad:	72 a8                	jb     402157 <_pei386_runtime_relocator+0x107>
  4021af:	90                   	nop
  4021b0:	8b 05 9e 61 00 00    	mov    0x619e(%rip),%eax        # 408354 <maxSections>
  4021b6:	31 db                	xor    %ebx,%ebx
  4021b8:	31 f6                	xor    %esi,%esi
  4021ba:	85 c0                	test   %eax,%eax
  4021bc:	0f 8e a9 fe ff ff    	jle    40206b <_pei386_runtime_relocator+0x1b>
  4021c2:	4c 8b 35 37 71 00 00 	mov    0x7137(%rip),%r14        # 409300 <__imp_VirtualQuery>
  4021c9:	4c 8d 6d cc          	lea    -0x34(%rbp),%r13
  4021cd:	4c 8b 25 24 71 00 00 	mov    0x7124(%rip),%r12        # 4092f8 <__imp_VirtualProtect>
  4021d4:	eb 1d                	jmp    4021f3 <_pei386_runtime_relocator+0x1a3>
  4021d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021dd:	00 00 00 
  4021e0:	83 c6 01             	add    $0x1,%esi
  4021e3:	48 83 c3 18          	add    $0x18,%rbx
  4021e7:	3b 35 67 61 00 00    	cmp    0x6167(%rip),%esi        # 408354 <maxSections>
  4021ed:	0f 8d 78 fe ff ff    	jge    40206b <_pei386_runtime_relocator+0x1b>
  4021f3:	48 89 d8             	mov    %rbx,%rax
  4021f6:	48 03 05 5b 61 00 00 	add    0x615b(%rip),%rax        # 408358 <the_secs>
  4021fd:	8b 10                	mov    (%rax),%edx
  4021ff:	85 d2                	test   %edx,%edx
  402201:	74 dd                	je     4021e0 <_pei386_runtime_relocator+0x190>
  402203:	48 8b 48 08          	mov    0x8(%rax),%rcx
  402207:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  40220d:	48 89 fa             	mov    %rdi,%rdx
  402210:	41 ff d6             	callq  *%r14
  402213:	48 85 c0             	test   %rax,%rax
  402216:	0f 84 23 01 00 00    	je     40233f <_pei386_runtime_relocator+0x2ef>
  40221c:	48 8b 05 35 61 00 00 	mov    0x6135(%rip),%rax        # 408358 <the_secs>
  402223:	4d 89 e9             	mov    %r13,%r9
  402226:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40222a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40222e:	44 8b 04 18          	mov    (%rax,%rbx,1),%r8d
  402232:	41 ff d4             	callq  *%r12
  402235:	eb a9                	jmp    4021e0 <_pei386_runtime_relocator+0x190>
  402237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40223e:	00 00 
  402240:	48 39 f3             	cmp    %rsi,%rbx
  402243:	0f 83 22 fe ff ff    	jae    40206b <_pei386_runtime_relocator+0x1b>
  402249:	4c 8d 25 b0 dd ff ff 	lea    -0x2250(%rip),%r12        # 400000 <__ImageBase>
  402250:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  402254:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402257:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40225d:	48 89 fa             	mov    %rdi,%rdx
  402260:	48 83 c3 08          	add    $0x8,%rbx
  402264:	4c 01 e1             	add    %r12,%rcx
  402267:	8b 01                	mov    (%rcx),%eax
  402269:	03 43 f8             	add    -0x8(%rbx),%eax
  40226c:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40226f:	e8 ac fb ff ff       	callq  401e20 <__write_memory.part.0>
  402274:	48 39 f3             	cmp    %rsi,%rbx
  402277:	72 db                	jb     402254 <_pei386_runtime_relocator+0x204>
  402279:	e9 32 ff ff ff       	jmpq   4021b0 <_pei386_runtime_relocator+0x160>
  40227e:	83 f8 08             	cmp    $0x8,%eax
  402281:	75 73                	jne    4022f6 <_pei386_runtime_relocator+0x2a6>
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
  4022b2:	e8 69 fb ff ff       	callq  401e20 <__write_memory.part.0>
  4022b7:	e9 ea fe ff ff       	jmpq   4021a6 <_pei386_runtime_relocator+0x156>
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
  4022ec:	e8 2f fb ff ff       	callq  401e20 <__write_memory.part.0>
  4022f1:	e9 b0 fe ff ff       	jmpq   4021a6 <_pei386_runtime_relocator+0x156>
  4022f6:	89 c2                	mov    %eax,%edx
  4022f8:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  4022ff:	00 
  402300:	48 8d 0d 51 2f 00 00 	lea    0x2f51(%rip),%rcx        # 405258 <.rdata+0xd8>
  402307:	e8 a4 fa ff ff       	callq  401db0 <__report_error>
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
  402335:	e8 e6 fa ff ff       	callq  401e20 <__write_memory.part.0>
  40233a:	e9 67 fe ff ff       	jmpq   4021a6 <_pei386_runtime_relocator+0x156>
  40233f:	48 03 1d 12 60 00 00 	add    0x6012(%rip),%rbx        # 408358 <the_secs>
  402346:	48 8d 0d 73 2e 00 00 	lea    0x2e73(%rip),%rcx        # 4051c0 <.rdata+0x40>
  40234d:	48 8b 43 10          	mov    0x10(%rbx),%rax
  402351:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  402355:	8b 50 08             	mov    0x8(%rax),%edx
  402358:	e8 53 fa ff ff       	callq  401db0 <__report_error>
  40235d:	48 8d 0d bc 2e 00 00 	lea    0x2ebc(%rip),%rcx        # 405220 <.rdata+0xa0>
  402364:	e8 47 fa ff ff       	callq  401db0 <__report_error>
  402369:	90                   	nop
  40236a:	90                   	nop
  40236b:	90                   	nop
  40236c:	90                   	nop
  40236d:	90                   	nop
  40236e:	90                   	nop
  40236f:	90                   	nop

0000000000402370 <_fpreset>:
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

0000000000402380 <__do_global_dtors>:
  402380:	48 83 ec 28          	sub    $0x28,%rsp
  402384:	48 8b 05 b5 1c 00 00 	mov    0x1cb5(%rip),%rax        # 404040 <p.62361>
  40238b:	48 8b 00             	mov    (%rax),%rax
  40238e:	48 85 c0             	test   %rax,%rax
  402391:	74 1d                	je     4023b0 <__do_global_dtors+0x30>
  402393:	ff d0                	callq  *%rax
  402395:	48 8b 05 a4 1c 00 00 	mov    0x1ca4(%rip),%rax        # 404040 <p.62361>
  40239c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4023a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4023a4:	48 89 15 95 1c 00 00 	mov    %rdx,0x1c95(%rip)        # 404040 <p.62361>
  4023ab:	48 85 c0             	test   %rax,%rax
  4023ae:	75 e3                	jne    402393 <__do_global_dtors+0x13>
  4023b0:	48 83 c4 28          	add    $0x28,%rsp
  4023b4:	c3                   	retq   
  4023b5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4023bc:	00 00 00 00 

00000000004023c0 <__do_global_ctors>:
  4023c0:	56                   	push   %rsi
  4023c1:	53                   	push   %rbx
  4023c2:	48 83 ec 28          	sub    $0x28,%rsp
  4023c6:	48 8b 05 03 0d 00 00 	mov    0xd03(%rip),%rax        # 4030d0 <__CTOR_LIST__>
  4023cd:	83 f8 ff             	cmp    $0xffffffff,%eax
  4023d0:	89 c3                	mov    %eax,%ebx
  4023d2:	74 2c                	je     402400 <__do_global_ctors+0x40>
  4023d4:	48 8d 35 f5 0c 00 00 	lea    0xcf5(%rip),%rsi        # 4030d0 <__CTOR_LIST__>
  4023db:	85 db                	test   %ebx,%ebx
  4023dd:	74 0b                	je     4023ea <__do_global_ctors+0x2a>
  4023df:	90                   	nop
  4023e0:	89 d8                	mov    %ebx,%eax
  4023e2:	ff 14 c6             	callq  *(%rsi,%rax,8)
  4023e5:	83 eb 01             	sub    $0x1,%ebx
  4023e8:	75 f6                	jne    4023e0 <__do_global_ctors+0x20>
  4023ea:	48 8d 0d 8f ff ff ff 	lea    -0x71(%rip),%rcx        # 402380 <__do_global_dtors>
  4023f1:	48 83 c4 28          	add    $0x28,%rsp
  4023f5:	5b                   	pop    %rbx
  4023f6:	5e                   	pop    %rsi
  4023f7:	e9 c4 f3 ff ff       	jmpq   4017c0 <atexit>
  4023fc:	0f 1f 40 00          	nopl   0x0(%rax)
  402400:	48 8d 35 c9 0c 00 00 	lea    0xcc9(%rip),%rsi        # 4030d0 <__CTOR_LIST__>
  402407:	31 db                	xor    %ebx,%ebx
  402409:	eb 07                	jmp    402412 <__do_global_ctors+0x52>
  40240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402410:	89 c3                	mov    %eax,%ebx
  402412:	8d 43 01             	lea    0x1(%rbx),%eax
  402415:	89 c2                	mov    %eax,%edx
  402417:	48 83 3c d6 00       	cmpq   $0x0,(%rsi,%rdx,8)
  40241c:	75 f2                	jne    402410 <__do_global_ctors+0x50>
  40241e:	eb b4                	jmp    4023d4 <__do_global_ctors+0x14>

0000000000402420 <__main>:
  402420:	8b 05 3a 5f 00 00    	mov    0x5f3a(%rip),%eax        # 408360 <initialized>
  402426:	85 c0                	test   %eax,%eax
  402428:	74 06                	je     402430 <__main+0x10>
  40242a:	f3 c3                	repz retq 
  40242c:	0f 1f 40 00          	nopl   0x0(%rax)
  402430:	c7 05 26 5f 00 00 01 	movl   $0x1,0x5f26(%rip)        # 408360 <initialized>
  402437:	00 00 00 
  40243a:	eb 84                	jmp    4023c0 <__do_global_ctors>
  40243c:	90                   	nop
  40243d:	90                   	nop
  40243e:	90                   	nop
  40243f:	90                   	nop

0000000000402440 <__security_init_cookie>:
  402440:	41 54                	push   %r12
  402442:	55                   	push   %rbp
  402443:	57                   	push   %rdi
  402444:	56                   	push   %rsi
  402445:	53                   	push   %rbx
  402446:	48 83 ec 40          	sub    $0x40,%rsp
  40244a:	48 8b 1d 2f 1c 00 00 	mov    0x1c2f(%rip),%rbx        # 404080 <__security_cookie>
  402451:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  402458:	2b 00 00 
  40245b:	48 39 c3             	cmp    %rax,%rbx
  40245e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402465:	00 00 
  402467:	74 17                	je     402480 <__security_init_cookie+0x40>
  402469:	48 f7 d3             	not    %rbx
  40246c:	48 89 1d 1d 1c 00 00 	mov    %rbx,0x1c1d(%rip)        # 404090 <__security_cookie_complement>
  402473:	48 83 c4 40          	add    $0x40,%rsp
  402477:	5b                   	pop    %rbx
  402478:	5e                   	pop    %rsi
  402479:	5f                   	pop    %rdi
  40247a:	5d                   	pop    %rbp
  40247b:	41 5c                	pop    %r12
  40247d:	c3                   	retq   
  40247e:	66 90                	xchg   %ax,%ax
  402480:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402485:	ff 15 fd 6d 00 00    	callq  *0x6dfd(%rip)        # 409288 <__imp_GetSystemTimeAsFileTime>
  40248b:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  402490:	ff 15 d2 6d 00 00    	callq  *0x6dd2(%rip)        # 409268 <__imp_GetCurrentProcessId>
  402496:	89 c5                	mov    %eax,%ebp
  402498:	ff 15 d2 6d 00 00    	callq  *0x6dd2(%rip)        # 409270 <__imp_GetCurrentThreadId>
  40249e:	89 c7                	mov    %eax,%edi
  4024a0:	ff 15 ea 6d 00 00    	callq  *0x6dea(%rip)        # 409290 <__imp_GetTickCount>
  4024a6:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  4024ab:	89 c6                	mov    %eax,%esi
  4024ad:	ff 15 f5 6d 00 00    	callq  *0x6df5(%rip)        # 4092a8 <__imp_QueryPerformanceCounter>
  4024b3:	4c 89 e2             	mov    %r12,%rdx
  4024b6:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
  4024bd:	ff 00 00 
  4024c0:	48 33 54 24 30       	xor    0x30(%rsp),%rdx
  4024c5:	48 31 ea             	xor    %rbp,%rdx
  4024c8:	48 31 fa             	xor    %rdi,%rdx
  4024cb:	48 31 f2             	xor    %rsi,%rdx
  4024ce:	48 21 c2             	and    %rax,%rdx
  4024d1:	48 39 da             	cmp    %rbx,%rdx
  4024d4:	74 1f                	je     4024f5 <__security_init_cookie+0xb5>
  4024d6:	48 89 d0             	mov    %rdx,%rax
  4024d9:	48 f7 d0             	not    %rax
  4024dc:	48 89 15 9d 1b 00 00 	mov    %rdx,0x1b9d(%rip)        # 404080 <__security_cookie>
  4024e3:	48 89 05 a6 1b 00 00 	mov    %rax,0x1ba6(%rip)        # 404090 <__security_cookie_complement>
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
  402509:	eb d1                	jmp    4024dc <__security_init_cookie+0x9c>
  40250b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402510 <__report_gsfailure>:
  402510:	55                   	push   %rbp
  402511:	56                   	push   %rsi
  402512:	53                   	push   %rbx
  402513:	48 89 e5             	mov    %rsp,%rbp
  402516:	48 83 ec 70          	sub    $0x70,%rsp
  40251a:	48 89 ce             	mov    %rcx,%rsi
  40251d:	48 8d 0d 5c 5e 00 00 	lea    0x5e5c(%rip),%rcx        # 408380 <GS_ContextRecord>
  402524:	ff 15 8e 6d 00 00    	callq  *0x6d8e(%rip)        # 4092b8 <__imp_RtlCaptureContext>
  40252a:	48 8b 1d 47 5f 00 00 	mov    0x5f47(%rip),%rbx        # 408478 <GS_ContextRecord+0xf8>
  402531:	45 31 c0             	xor    %r8d,%r8d
  402534:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  402538:	48 89 d9             	mov    %rbx,%rcx
  40253b:	ff 15 7f 6d 00 00    	callq  *0x6d7f(%rip)        # 4092c0 <__imp_RtlLookupFunctionEntry>
  402541:	48 85 c0             	test   %rax,%rax
  402544:	49 89 c1             	mov    %rax,%r9
  402547:	0f 84 a3 00 00 00    	je     4025f0 <__report_gsfailure+0xe0>
  40254d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402551:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402555:	49 89 d8             	mov    %rbx,%r8
  402558:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40255d:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402561:	31 c9                	xor    %ecx,%ecx
  402563:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402568:	48 8d 05 11 5e 00 00 	lea    0x5e11(%rip),%rax        # 408380 <GS_ContextRecord>
  40256f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402576:	00 00 
  402578:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40257d:	ff 15 45 6d 00 00    	callq  *0x6d45(%rip)        # 4092c8 <__imp_RtlVirtualUnwind>
  402583:	48 8b 05 ee 5e 00 00 	mov    0x5eee(%rip),%rax        # 408478 <GS_ContextRecord+0xf8>
  40258a:	31 c9                	xor    %ecx,%ecx
  40258c:	48 89 35 6d 5e 00 00 	mov    %rsi,0x5e6d(%rip)        # 408400 <GS_ContextRecord+0x80>
  402593:	c7 05 c3 62 00 00 09 	movl   $0xc0000409,0x62c3(%rip)        # 408860 <GS_ExceptionRecord>
  40259a:	04 00 c0 
  40259d:	c7 05 bd 62 00 00 01 	movl   $0x1,0x62bd(%rip)        # 408864 <GS_ExceptionRecord+0x4>
  4025a4:	00 00 00 
  4025a7:	48 89 05 c2 62 00 00 	mov    %rax,0x62c2(%rip)        # 408870 <GS_ExceptionRecord+0x10>
  4025ae:	48 8b 05 cb 1a 00 00 	mov    0x1acb(%rip),%rax        # 404080 <__security_cookie>
  4025b5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4025b9:	48 8b 05 d0 1a 00 00 	mov    0x1ad0(%rip),%rax        # 404090 <__security_cookie_complement>
  4025c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4025c4:	ff 15 06 6d 00 00    	callq  *0x6d06(%rip)        # 4092d0 <__imp_SetUnhandledExceptionFilter>
  4025ca:	48 8d 0d bf 2c 00 00 	lea    0x2cbf(%rip),%rcx        # 405290 <GS_ExceptionPointers>
  4025d1:	ff 15 19 6d 00 00    	callq  *0x6d19(%rip)        # 4092f0 <__imp_UnhandledExceptionFilter>
  4025d7:	ff 15 83 6c 00 00    	callq  *0x6c83(%rip)        # 409260 <__imp_GetCurrentProcess>
  4025dd:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  4025e2:	48 89 c1             	mov    %rax,%rcx
  4025e5:	ff 15 f5 6c 00 00    	callq  *0x6cf5(%rip)        # 4092e0 <__imp_TerminateProcess>
  4025eb:	e8 70 08 00 00       	callq  402e60 <abort>
  4025f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4025f4:	48 89 05 7d 5e 00 00 	mov    %rax,0x5e7d(%rip)        # 408478 <GS_ContextRecord+0xf8>
  4025fb:	48 8d 45 08          	lea    0x8(%rbp),%rax
  4025ff:	48 89 05 12 5e 00 00 	mov    %rax,0x5e12(%rip)        # 408418 <GS_ContextRecord+0x98>
  402606:	e9 78 ff ff ff       	jmpq   402583 <__report_gsfailure+0x73>
  40260b:	90                   	nop
  40260c:	90                   	nop
  40260d:	90                   	nop
  40260e:	90                   	nop
  40260f:	90                   	nop

0000000000402610 <__mingwthr_run_key_dtors.part.0>:
  402610:	55                   	push   %rbp
  402611:	57                   	push   %rdi
  402612:	56                   	push   %rsi
  402613:	53                   	push   %rbx
  402614:	48 83 ec 28          	sub    $0x28,%rsp
  402618:	48 8d 0d 01 63 00 00 	lea    0x6301(%rip),%rcx        # 408920 <__mingwthr_cs>
  40261f:	ff 15 33 6c 00 00    	callq  *0x6c33(%rip)        # 409258 <__imp_EnterCriticalSection>
  402625:	48 8b 1d d4 62 00 00 	mov    0x62d4(%rip),%rbx        # 408900 <key_dtor_list>
  40262c:	48 85 db             	test   %rbx,%rbx
  40262f:	74 33                	je     402664 <__mingwthr_run_key_dtors.part.0+0x54>
  402631:	48 8b 2d b0 6c 00 00 	mov    0x6cb0(%rip),%rbp        # 4092e8 <__imp_TlsGetValue>
  402638:	48 8b 3d 39 6c 00 00 	mov    0x6c39(%rip),%rdi        # 409278 <__imp_GetLastError>
  40263f:	90                   	nop
  402640:	8b 0b                	mov    (%rbx),%ecx
  402642:	ff d5                	callq  *%rbp
  402644:	48 89 c6             	mov    %rax,%rsi
  402647:	ff d7                	callq  *%rdi
  402649:	85 c0                	test   %eax,%eax
  40264b:	75 0e                	jne    40265b <__mingwthr_run_key_dtors.part.0+0x4b>
  40264d:	48 85 f6             	test   %rsi,%rsi
  402650:	74 09                	je     40265b <__mingwthr_run_key_dtors.part.0+0x4b>
  402652:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402656:	48 89 f1             	mov    %rsi,%rcx
  402659:	ff d0                	callq  *%rax
  40265b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40265f:	48 85 db             	test   %rbx,%rbx
  402662:	75 dc                	jne    402640 <__mingwthr_run_key_dtors.part.0+0x30>
  402664:	48 8b 05 35 6c 00 00 	mov    0x6c35(%rip),%rax        # 4092a0 <__imp_LeaveCriticalSection>
  40266b:	48 8d 0d ae 62 00 00 	lea    0x62ae(%rip),%rcx        # 408920 <__mingwthr_cs>
  402672:	48 83 c4 28          	add    $0x28,%rsp
  402676:	5b                   	pop    %rbx
  402677:	5e                   	pop    %rsi
  402678:	5f                   	pop    %rdi
  402679:	5d                   	pop    %rbp
  40267a:	48 ff e0             	rex.W jmpq *%rax
  40267d:	0f 1f 00             	nopl   (%rax)

0000000000402680 <___w64_mingwthr_add_key_dtor>:
  402680:	55                   	push   %rbp
  402681:	57                   	push   %rdi
  402682:	56                   	push   %rsi
  402683:	53                   	push   %rbx
  402684:	48 83 ec 28          	sub    $0x28,%rsp
  402688:	8b 05 7a 62 00 00    	mov    0x627a(%rip),%eax        # 408908 <__mingwthr_cs_init>
  40268e:	31 f6                	xor    %esi,%esi
  402690:	85 c0                	test   %eax,%eax
  402692:	89 cd                	mov    %ecx,%ebp
  402694:	48 89 d7             	mov    %rdx,%rdi
  402697:	75 0b                	jne    4026a4 <___w64_mingwthr_add_key_dtor+0x24>
  402699:	89 f0                	mov    %esi,%eax
  40269b:	48 83 c4 28          	add    $0x28,%rsp
  40269f:	5b                   	pop    %rbx
  4026a0:	5e                   	pop    %rsi
  4026a1:	5f                   	pop    %rdi
  4026a2:	5d                   	pop    %rbp
  4026a3:	c3                   	retq   
  4026a4:	ba 18 00 00 00       	mov    $0x18,%edx
  4026a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4026ae:	e8 b5 07 00 00       	callq  402e68 <calloc>
  4026b3:	48 85 c0             	test   %rax,%rax
  4026b6:	48 89 c3             	mov    %rax,%rbx
  4026b9:	74 3d                	je     4026f8 <___w64_mingwthr_add_key_dtor+0x78>
  4026bb:	89 28                	mov    %ebp,(%rax)
  4026bd:	48 8d 0d 5c 62 00 00 	lea    0x625c(%rip),%rcx        # 408920 <__mingwthr_cs>
  4026c4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4026c8:	ff 15 8a 6b 00 00    	callq  *0x6b8a(%rip)        # 409258 <__imp_EnterCriticalSection>
  4026ce:	48 8b 05 2b 62 00 00 	mov    0x622b(%rip),%rax        # 408900 <key_dtor_list>
  4026d5:	48 8d 0d 44 62 00 00 	lea    0x6244(%rip),%rcx        # 408920 <__mingwthr_cs>
  4026dc:	48 89 1d 1d 62 00 00 	mov    %rbx,0x621d(%rip)        # 408900 <key_dtor_list>
  4026e3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026e7:	ff 15 b3 6b 00 00    	callq  *0x6bb3(%rip)        # 4092a0 <__imp_LeaveCriticalSection>
  4026ed:	89 f0                	mov    %esi,%eax
  4026ef:	48 83 c4 28          	add    $0x28,%rsp
  4026f3:	5b                   	pop    %rbx
  4026f4:	5e                   	pop    %rsi
  4026f5:	5f                   	pop    %rdi
  4026f6:	5d                   	pop    %rbp
  4026f7:	c3                   	retq   
  4026f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4026fd:	eb 9a                	jmp    402699 <___w64_mingwthr_add_key_dtor+0x19>
  4026ff:	90                   	nop

0000000000402700 <___w64_mingwthr_remove_key_dtor>:
  402700:	53                   	push   %rbx
  402701:	48 83 ec 20          	sub    $0x20,%rsp
  402705:	8b 05 fd 61 00 00    	mov    0x61fd(%rip),%eax        # 408908 <__mingwthr_cs_init>
  40270b:	85 c0                	test   %eax,%eax
  40270d:	89 cb                	mov    %ecx,%ebx
  40270f:	75 0f                	jne    402720 <___w64_mingwthr_remove_key_dtor+0x20>
  402711:	31 c0                	xor    %eax,%eax
  402713:	48 83 c4 20          	add    $0x20,%rsp
  402717:	5b                   	pop    %rbx
  402718:	c3                   	retq   
  402719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402720:	48 8d 0d f9 61 00 00 	lea    0x61f9(%rip),%rcx        # 408920 <__mingwthr_cs>
  402727:	ff 15 2b 6b 00 00    	callq  *0x6b2b(%rip)        # 409258 <__imp_EnterCriticalSection>
  40272d:	48 8b 15 cc 61 00 00 	mov    0x61cc(%rip),%rdx        # 408900 <key_dtor_list>
  402734:	48 85 d2             	test   %rdx,%rdx
  402737:	74 1c                	je     402755 <___w64_mingwthr_remove_key_dtor+0x55>
  402739:	8b 02                	mov    (%rdx),%eax
  40273b:	39 d8                	cmp    %ebx,%eax
  40273d:	75 0d                	jne    40274c <___w64_mingwthr_remove_key_dtor+0x4c>
  40273f:	eb 4e                	jmp    40278f <___w64_mingwthr_remove_key_dtor+0x8f>
  402741:	44 8b 00             	mov    (%rax),%r8d
  402744:	41 39 d8             	cmp    %ebx,%r8d
  402747:	74 27                	je     402770 <___w64_mingwthr_remove_key_dtor+0x70>
  402749:	48 89 c2             	mov    %rax,%rdx
  40274c:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402750:	48 85 c0             	test   %rax,%rax
  402753:	75 ec                	jne    402741 <___w64_mingwthr_remove_key_dtor+0x41>
  402755:	48 8d 0d c4 61 00 00 	lea    0x61c4(%rip),%rcx        # 408920 <__mingwthr_cs>
  40275c:	ff 15 3e 6b 00 00    	callq  *0x6b3e(%rip)        # 4092a0 <__imp_LeaveCriticalSection>
  402762:	31 c0                	xor    %eax,%eax
  402764:	48 83 c4 20          	add    $0x20,%rsp
  402768:	5b                   	pop    %rbx
  402769:	c3                   	retq   
  40276a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402770:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402774:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
  402778:	48 89 c1             	mov    %rax,%rcx
  40277b:	e8 f0 06 00 00       	callq  402e70 <free>
  402780:	48 8d 0d 99 61 00 00 	lea    0x6199(%rip),%rcx        # 408920 <__mingwthr_cs>
  402787:	ff 15 13 6b 00 00    	callq  *0x6b13(%rip)        # 4092a0 <__imp_LeaveCriticalSection>
  40278d:	eb d3                	jmp    402762 <___w64_mingwthr_remove_key_dtor+0x62>
  40278f:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402793:	48 89 05 66 61 00 00 	mov    %rax,0x6166(%rip)        # 408900 <key_dtor_list>
  40279a:	48 89 d0             	mov    %rdx,%rax
  40279d:	eb d9                	jmp    402778 <___w64_mingwthr_remove_key_dtor+0x78>
  40279f:	90                   	nop

00000000004027a0 <__mingw_TLScallback>:
  4027a0:	48 83 ec 28          	sub    $0x28,%rsp
  4027a4:	83 fa 01             	cmp    $0x1,%edx
  4027a7:	74 49                	je     4027f2 <__mingw_TLScallback+0x52>
  4027a9:	72 19                	jb     4027c4 <__mingw_TLScallback+0x24>
  4027ab:	83 fa 03             	cmp    $0x3,%edx
  4027ae:	75 0a                	jne    4027ba <__mingw_TLScallback+0x1a>
  4027b0:	8b 05 52 61 00 00    	mov    0x6152(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4027b6:	85 c0                	test   %eax,%eax
  4027b8:	75 66                	jne    402820 <__mingw_TLScallback+0x80>
  4027ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4027bf:	48 83 c4 28          	add    $0x28,%rsp
  4027c3:	c3                   	retq   
  4027c4:	8b 05 3e 61 00 00    	mov    0x613e(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4027ca:	85 c0                	test   %eax,%eax
  4027cc:	75 62                	jne    402830 <__mingw_TLScallback+0x90>
  4027ce:	8b 05 34 61 00 00    	mov    0x6134(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4027d4:	83 f8 01             	cmp    $0x1,%eax
  4027d7:	75 e1                	jne    4027ba <__mingw_TLScallback+0x1a>
  4027d9:	48 8d 0d 40 61 00 00 	lea    0x6140(%rip),%rcx        # 408920 <__mingwthr_cs>
  4027e0:	c7 05 1e 61 00 00 00 	movl   $0x0,0x611e(%rip)        # 408908 <__mingwthr_cs_init>
  4027e7:	00 00 00 
  4027ea:	ff 15 60 6a 00 00    	callq  *0x6a60(%rip)        # 409250 <__IAT_start__>
  4027f0:	eb c8                	jmp    4027ba <__mingw_TLScallback+0x1a>
  4027f2:	8b 05 10 61 00 00    	mov    0x6110(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4027f8:	85 c0                	test   %eax,%eax
  4027fa:	74 14                	je     402810 <__mingw_TLScallback+0x70>
  4027fc:	c7 05 02 61 00 00 01 	movl   $0x1,0x6102(%rip)        # 408908 <__mingwthr_cs_init>
  402803:	00 00 00 
  402806:	b8 01 00 00 00       	mov    $0x1,%eax
  40280b:	48 83 c4 28          	add    $0x28,%rsp
  40280f:	c3                   	retq   
  402810:	48 8d 0d 09 61 00 00 	lea    0x6109(%rip),%rcx        # 408920 <__mingwthr_cs>
  402817:	ff 15 7b 6a 00 00    	callq  *0x6a7b(%rip)        # 409298 <__imp_InitializeCriticalSection>
  40281d:	eb dd                	jmp    4027fc <__mingw_TLScallback+0x5c>
  40281f:	90                   	nop
  402820:	e8 eb fd ff ff       	callq  402610 <__mingwthr_run_key_dtors.part.0>
  402825:	eb 93                	jmp    4027ba <__mingw_TLScallback+0x1a>
  402827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40282e:	00 00 
  402830:	e8 db fd ff ff       	callq  402610 <__mingwthr_run_key_dtors.part.0>
  402835:	eb 97                	jmp    4027ce <__mingw_TLScallback+0x2e>
  402837:	90                   	nop
  402838:	90                   	nop
  402839:	90                   	nop
  40283a:	90                   	nop
  40283b:	90                   	nop
  40283c:	90                   	nop
  40283d:	90                   	nop
  40283e:	90                   	nop
  40283f:	90                   	nop

0000000000402840 <_ValidateImageBase.part.0>:
  402840:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402844:	48 01 c1             	add    %rax,%rcx
  402847:	31 c0                	xor    %eax,%eax
  402849:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40284f:	74 02                	je     402853 <_ValidateImageBase.part.0+0x13>
  402851:	f3 c3                	repz retq 
  402853:	31 c0                	xor    %eax,%eax
  402855:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40285b:	0f 94 c0             	sete   %al
  40285e:	c3                   	retq   
  40285f:	90                   	nop

0000000000402860 <_ValidateImageBase>:
  402860:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402865:	74 09                	je     402870 <_ValidateImageBase+0x10>
  402867:	31 c0                	xor    %eax,%eax
  402869:	c3                   	retq   
  40286a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402870:	eb ce                	jmp    402840 <_ValidateImageBase.part.0>
  402872:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402879:	1f 84 00 00 00 00 00 

0000000000402880 <_FindPESection>:
  402880:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402884:	48 01 c1             	add    %rax,%rcx
  402887:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40288b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402890:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402894:	85 c9                	test   %ecx,%ecx
  402896:	74 28                	je     4028c0 <_FindPESection+0x40>
  402898:	83 e9 01             	sub    $0x1,%ecx
  40289b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40289f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4028a4:	8b 48 0c             	mov    0xc(%rax),%ecx
  4028a7:	41 89 c8             	mov    %ecx,%r8d
  4028aa:	49 39 d0             	cmp    %rdx,%r8
  4028ad:	77 08                	ja     4028b7 <_FindPESection+0x37>
  4028af:	03 48 08             	add    0x8(%rax),%ecx
  4028b2:	48 39 ca             	cmp    %rcx,%rdx
  4028b5:	72 0b                	jb     4028c2 <_FindPESection+0x42>
  4028b7:	48 83 c0 28          	add    $0x28,%rax
  4028bb:	4c 39 c8             	cmp    %r9,%rax
  4028be:	75 e4                	jne    4028a4 <_FindPESection+0x24>
  4028c0:	31 c0                	xor    %eax,%eax
  4028c2:	f3 c3                	repz retq 
  4028c4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4028cb:	00 00 00 00 00 

00000000004028d0 <_FindPESectionByName>:
  4028d0:	57                   	push   %rdi
  4028d1:	56                   	push   %rsi
  4028d2:	53                   	push   %rbx
  4028d3:	48 83 ec 20          	sub    $0x20,%rsp
  4028d7:	48 89 ce             	mov    %rcx,%rsi
  4028da:	e8 f9 04 00 00       	callq  402dd8 <strlen>
  4028df:	48 83 f8 08          	cmp    $0x8,%rax
  4028e3:	77 1f                	ja     402904 <_FindPESectionByName+0x34>
  4028e5:	48 8d 1d 14 d7 ff ff 	lea    -0x28ec(%rip),%rbx        # 400000 <__ImageBase>
  4028ec:	31 ff                	xor    %edi,%edi
  4028ee:	66 81 3d 09 d7 ff ff 	cmpw   $0x5a4d,-0x28f7(%rip)        # 400000 <__ImageBase>
  4028f5:	4d 5a 
  4028f7:	74 18                	je     402911 <_FindPESectionByName+0x41>
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
  402914:	e8 27 ff ff ff       	callq  402840 <_ValidateImageBase.part.0>
  402919:	85 c0                	test   %eax,%eax
  40291b:	74 dc                	je     4028f9 <_FindPESectionByName+0x29>
  40291d:	48 63 15 18 d7 ff ff 	movslq -0x28e8(%rip),%rdx        # 40003c <__ImageBase+0x3c>
  402924:	48 01 da             	add    %rbx,%rdx
  402927:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  40292b:	48 8d 5c 02 18       	lea    0x18(%rdx,%rax,1),%rbx
  402930:	0f b7 42 06          	movzwl 0x6(%rdx),%eax
  402934:	85 c0                	test   %eax,%eax
  402936:	74 c1                	je     4028f9 <_FindPESectionByName+0x29>
  402938:	83 e8 01             	sub    $0x1,%eax
  40293b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40293f:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402944:	eb 13                	jmp    402959 <_FindPESectionByName+0x89>
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 
  402950:	48 83 c3 28          	add    $0x28,%rbx
  402954:	48 39 fb             	cmp    %rdi,%rbx
  402957:	74 ab                	je     402904 <_FindPESectionByName+0x34>
  402959:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  40295f:	48 89 f2             	mov    %rsi,%rdx
  402962:	48 89 d9             	mov    %rbx,%rcx
  402965:	e8 0e 05 00 00       	callq  402e78 <strncmp>
  40296a:	85 c0                	test   %eax,%eax
  40296c:	75 e2                	jne    402950 <_FindPESectionByName+0x80>
  40296e:	48 89 df             	mov    %rbx,%rdi
  402971:	48 89 f8             	mov    %rdi,%rax
  402974:	48 83 c4 20          	add    $0x20,%rsp
  402978:	5b                   	pop    %rbx
  402979:	5e                   	pop    %rsi
  40297a:	5f                   	pop    %rdi
  40297b:	c3                   	retq   
  40297c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402980 <__mingw_GetSectionForAddress>:
  402980:	56                   	push   %rsi
  402981:	53                   	push   %rbx
  402982:	48 83 ec 28          	sub    $0x28,%rsp
  402986:	48 8d 1d 73 d6 ff ff 	lea    -0x298d(%rip),%rbx        # 400000 <__ImageBase>
  40298d:	66 81 3d 6a d6 ff ff 	cmpw   $0x5a4d,-0x2996(%rip)        # 400000 <__ImageBase>
  402994:	4d 5a 
  402996:	48 89 ce             	mov    %rcx,%rsi
  402999:	74 09                	je     4029a4 <__mingw_GetSectionForAddress+0x24>
  40299b:	31 c0                	xor    %eax,%eax
  40299d:	48 83 c4 28          	add    $0x28,%rsp
  4029a1:	5b                   	pop    %rbx
  4029a2:	5e                   	pop    %rsi
  4029a3:	c3                   	retq   
  4029a4:	48 89 d9             	mov    %rbx,%rcx
  4029a7:	e8 94 fe ff ff       	callq  402840 <_ValidateImageBase.part.0>
  4029ac:	85 c0                	test   %eax,%eax
  4029ae:	74 eb                	je     40299b <__mingw_GetSectionForAddress+0x1b>
  4029b0:	48 29 de             	sub    %rbx,%rsi
  4029b3:	48 89 d9             	mov    %rbx,%rcx
  4029b6:	48 89 f2             	mov    %rsi,%rdx
  4029b9:	48 83 c4 28          	add    $0x28,%rsp
  4029bd:	5b                   	pop    %rbx
  4029be:	5e                   	pop    %rsi
  4029bf:	e9 bc fe ff ff       	jmpq   402880 <_FindPESection>
  4029c4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4029cb:	00 00 00 00 00 

00000000004029d0 <__mingw_GetSectionCount>:
  4029d0:	56                   	push   %rsi
  4029d1:	53                   	push   %rbx
  4029d2:	48 83 ec 28          	sub    $0x28,%rsp
  4029d6:	48 8d 35 23 d6 ff ff 	lea    -0x29dd(%rip),%rsi        # 400000 <__ImageBase>
  4029dd:	31 db                	xor    %ebx,%ebx
  4029df:	66 81 3d 18 d6 ff ff 	cmpw   $0x5a4d,-0x29e8(%rip)        # 400000 <__ImageBase>
  4029e6:	4d 5a 
  4029e8:	74 09                	je     4029f3 <__mingw_GetSectionCount+0x23>
  4029ea:	89 d8                	mov    %ebx,%eax
  4029ec:	48 83 c4 28          	add    $0x28,%rsp
  4029f0:	5b                   	pop    %rbx
  4029f1:	5e                   	pop    %rsi
  4029f2:	c3                   	retq   
  4029f3:	48 89 f1             	mov    %rsi,%rcx
  4029f6:	e8 45 fe ff ff       	callq  402840 <_ValidateImageBase.part.0>
  4029fb:	85 c0                	test   %eax,%eax
  4029fd:	74 eb                	je     4029ea <__mingw_GetSectionCount+0x1a>
  4029ff:	48 63 05 36 d6 ff ff 	movslq -0x29ca(%rip),%rax        # 40003c <__ImageBase+0x3c>
  402a06:	0f b7 5c 06 06       	movzwl 0x6(%rsi,%rax,1),%ebx
  402a0b:	89 d8                	mov    %ebx,%eax
  402a0d:	48 83 c4 28          	add    $0x28,%rsp
  402a11:	5b                   	pop    %rbx
  402a12:	5e                   	pop    %rsi
  402a13:	c3                   	retq   
  402a14:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402a1b:	00 00 00 00 00 

0000000000402a20 <_FindPESectionExec>:
  402a20:	57                   	push   %rdi
  402a21:	56                   	push   %rsi
  402a22:	53                   	push   %rbx
  402a23:	48 83 ec 20          	sub    $0x20,%rsp
  402a27:	48 8d 3d d2 d5 ff ff 	lea    -0x2a2e(%rip),%rdi        # 400000 <__ImageBase>
  402a2e:	31 f6                	xor    %esi,%esi
  402a30:	66 81 3d c7 d5 ff ff 	cmpw   $0x5a4d,-0x2a39(%rip)        # 400000 <__ImageBase>
  402a37:	4d 5a 
  402a39:	48 89 cb             	mov    %rcx,%rbx
  402a3c:	74 12                	je     402a50 <_FindPESectionExec+0x30>
  402a3e:	48 89 f0             	mov    %rsi,%rax
  402a41:	48 83 c4 20          	add    $0x20,%rsp
  402a45:	5b                   	pop    %rbx
  402a46:	5e                   	pop    %rsi
  402a47:	5f                   	pop    %rdi
  402a48:	c3                   	retq   
  402a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a50:	48 89 f9             	mov    %rdi,%rcx
  402a53:	e8 e8 fd ff ff       	callq  402840 <_ValidateImageBase.part.0>
  402a58:	85 c0                	test   %eax,%eax
  402a5a:	74 e2                	je     402a3e <_FindPESectionExec+0x1e>
  402a5c:	48 63 0d d9 d5 ff ff 	movslq -0x2a27(%rip),%rcx        # 40003c <__ImageBase+0x3c>
  402a63:	48 01 f9             	add    %rdi,%rcx
  402a66:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402a6a:	48 8d 54 01 18       	lea    0x18(%rcx,%rax,1),%rdx
  402a6f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402a73:	85 c0                	test   %eax,%eax
  402a75:	74 c7                	je     402a3e <_FindPESectionExec+0x1e>
  402a77:	83 e8 01             	sub    $0x1,%eax
  402a7a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402a7e:	48 8d 44 c2 28       	lea    0x28(%rdx,%rax,8),%rax
  402a83:	f6 42 27 20          	testb  $0x20,0x27(%rdx)
  402a87:	74 09                	je     402a92 <_FindPESectionExec+0x72>
  402a89:	48 85 db             	test   %rbx,%rbx
  402a8c:	74 22                	je     402ab0 <_FindPESectionExec+0x90>
  402a8e:	48 83 eb 01          	sub    $0x1,%rbx
  402a92:	48 83 c2 28          	add    $0x28,%rdx
  402a96:	48 39 c2             	cmp    %rax,%rdx
  402a99:	75 e8                	jne    402a83 <_FindPESectionExec+0x63>
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

0000000000402ac0 <_GetPEImageBase>:
  402ac0:	53                   	push   %rbx
  402ac1:	48 83 ec 20          	sub    $0x20,%rsp
  402ac5:	31 db                	xor    %ebx,%ebx
  402ac7:	66 81 3d 30 d5 ff ff 	cmpw   $0x5a4d,-0x2ad0(%rip)        # 400000 <__ImageBase>
  402ace:	4d 5a 
  402ad0:	74 0e                	je     402ae0 <_GetPEImageBase+0x20>
  402ad2:	48 89 d8             	mov    %rbx,%rax
  402ad5:	48 83 c4 20          	add    $0x20,%rsp
  402ad9:	5b                   	pop    %rbx
  402ada:	c3                   	retq   
  402adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ae0:	48 8d 0d 19 d5 ff ff 	lea    -0x2ae7(%rip),%rcx        # 400000 <__ImageBase>
  402ae7:	e8 54 fd ff ff       	callq  402840 <_ValidateImageBase.part.0>
  402aec:	85 c0                	test   %eax,%eax
  402aee:	48 8d 05 0b d5 ff ff 	lea    -0x2af5(%rip),%rax        # 400000 <__ImageBase>
  402af5:	48 0f 45 d8          	cmovne %rax,%rbx
  402af9:	48 89 d8             	mov    %rbx,%rax
  402afc:	48 83 c4 20          	add    $0x20,%rsp
  402b00:	5b                   	pop    %rbx
  402b01:	c3                   	retq   
  402b02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402b09:	1f 84 00 00 00 00 00 

0000000000402b10 <_IsNonwritableInCurrentImage>:
  402b10:	56                   	push   %rsi
  402b11:	53                   	push   %rbx
  402b12:	48 83 ec 28          	sub    $0x28,%rsp
  402b16:	48 8d 1d e3 d4 ff ff 	lea    -0x2b1d(%rip),%rbx        # 400000 <__ImageBase>
  402b1d:	31 c0                	xor    %eax,%eax
  402b1f:	66 81 3d d8 d4 ff ff 	cmpw   $0x5a4d,-0x2b28(%rip)        # 400000 <__ImageBase>
  402b26:	4d 5a 
  402b28:	48 89 ce             	mov    %rcx,%rsi
  402b2b:	74 07                	je     402b34 <_IsNonwritableInCurrentImage+0x24>
  402b2d:	48 83 c4 28          	add    $0x28,%rsp
  402b31:	5b                   	pop    %rbx
  402b32:	5e                   	pop    %rsi
  402b33:	c3                   	retq   
  402b34:	48 89 d9             	mov    %rbx,%rcx
  402b37:	e8 04 fd ff ff       	callq  402840 <_ValidateImageBase.part.0>
  402b3c:	85 c0                	test   %eax,%eax
  402b3e:	74 ed                	je     402b2d <_IsNonwritableInCurrentImage+0x1d>
  402b40:	48 89 f2             	mov    %rsi,%rdx
  402b43:	48 89 d9             	mov    %rbx,%rcx
  402b46:	48 29 da             	sub    %rbx,%rdx
  402b49:	e8 32 fd ff ff       	callq  402880 <_FindPESection>
  402b4e:	48 85 c0             	test   %rax,%rax
  402b51:	74 0f                	je     402b62 <_IsNonwritableInCurrentImage+0x52>
  402b53:	8b 40 24             	mov    0x24(%rax),%eax
  402b56:	f7 d0                	not    %eax
  402b58:	c1 e8 1f             	shr    $0x1f,%eax
  402b5b:	48 83 c4 28          	add    $0x28,%rsp
  402b5f:	5b                   	pop    %rbx
  402b60:	5e                   	pop    %rsi
  402b61:	c3                   	retq   
  402b62:	31 c0                	xor    %eax,%eax
  402b64:	eb c7                	jmp    402b2d <_IsNonwritableInCurrentImage+0x1d>
  402b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b6d:	00 00 00 

0000000000402b70 <__mingw_enum_import_library_names>:
  402b70:	55                   	push   %rbp
  402b71:	57                   	push   %rdi
  402b72:	56                   	push   %rsi
  402b73:	53                   	push   %rbx
  402b74:	48 83 ec 28          	sub    $0x28,%rsp
  402b78:	48 8d 35 81 d4 ff ff 	lea    -0x2b7f(%rip),%rsi        # 400000 <__ImageBase>
  402b7f:	31 ed                	xor    %ebp,%ebp
  402b81:	66 81 3d 76 d4 ff ff 	cmpw   $0x5a4d,-0x2b8a(%rip)        # 400000 <__ImageBase>
  402b88:	4d 5a 
  402b8a:	89 cb                	mov    %ecx,%ebx
  402b8c:	74 12                	je     402ba0 <__mingw_enum_import_library_names+0x30>
  402b8e:	48 89 e8             	mov    %rbp,%rax
  402b91:	48 83 c4 28          	add    $0x28,%rsp
  402b95:	5b                   	pop    %rbx
  402b96:	5e                   	pop    %rsi
  402b97:	5f                   	pop    %rdi
  402b98:	5d                   	pop    %rbp
  402b99:	c3                   	retq   
  402b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402ba0:	48 89 f1             	mov    %rsi,%rcx
  402ba3:	e8 98 fc ff ff       	callq  402840 <_ValidateImageBase.part.0>
  402ba8:	85 c0                	test   %eax,%eax
  402baa:	74 e2                	je     402b8e <__mingw_enum_import_library_names+0x1e>
  402bac:	48 63 05 89 d4 ff ff 	movslq -0x2b77(%rip),%rax        # 40003c <__ImageBase+0x3c>
  402bb3:	8b bc 06 90 00 00 00 	mov    0x90(%rsi,%rax,1),%edi
  402bba:	85 ff                	test   %edi,%edi
  402bbc:	74 d0                	je     402b8e <__mingw_enum_import_library_names+0x1e>
  402bbe:	48 89 fa             	mov    %rdi,%rdx
  402bc1:	48 89 f1             	mov    %rsi,%rcx
  402bc4:	e8 b7 fc ff ff       	callq  402880 <_FindPESection>
  402bc9:	48 85 c0             	test   %rax,%rax
  402bcc:	74 c0                	je     402b8e <__mingw_enum_import_library_names+0x1e>
  402bce:	48 01 f7             	add    %rsi,%rdi
  402bd1:	48 89 fa             	mov    %rdi,%rdx
  402bd4:	75 11                	jne    402be7 <__mingw_enum_import_library_names+0x77>
  402bd6:	eb b6                	jmp    402b8e <__mingw_enum_import_library_names+0x1e>
  402bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bdf:	00 
  402be0:	83 eb 01             	sub    $0x1,%ebx
  402be3:	48 83 c2 14          	add    $0x14,%rdx
  402be7:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402bea:	85 c9                	test   %ecx,%ecx
  402bec:	75 07                	jne    402bf5 <__mingw_enum_import_library_names+0x85>
  402bee:	8b 42 0c             	mov    0xc(%rdx),%eax
  402bf1:	85 c0                	test   %eax,%eax
  402bf3:	74 1b                	je     402c10 <__mingw_enum_import_library_names+0xa0>
  402bf5:	85 db                	test   %ebx,%ebx
  402bf7:	7f e7                	jg     402be0 <__mingw_enum_import_library_names+0x70>
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

0000000000402c20 <___chkstk_ms>:
  402c20:	51                   	push   %rcx
  402c21:	50                   	push   %rax
  402c22:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402c28:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402c2d:	72 19                	jb     402c48 <___chkstk_ms+0x28>
  402c2f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402c36:	48 83 09 00          	orq    $0x0,(%rcx)
  402c3a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402c40:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402c46:	77 e7                	ja     402c2f <___chkstk_ms+0xf>
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

0000000000402c60 <sqrt>:
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
  402c8e:	75 20                	jne    402cb0 <sqrt+0x50>
  402c90:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402c95:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  402c99:	48 c1 e8 20          	shr    $0x20,%rax
  402c9d:	85 c0                	test   %eax,%eax
  402c9f:	78 63                	js     402d04 <sqrt+0xa4>
  402ca1:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402ca6:	48 83 c4 58          	add    $0x58,%rsp
  402caa:	c3                   	retq   
  402cab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402cb0:	81 fa 00 00 f0 7f    	cmp    $0x7ff00000,%edx
  402cb6:	74 48                	je     402d00 <sqrt+0xa0>
  402cb8:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402cbd:	48 c1 e8 20          	shr    $0x20,%rax
  402cc1:	85 c0                	test   %eax,%eax
  402cc3:	78 3f                	js     402d04 <sqrt+0xa4>
  402cc5:	f2 0f 10 05 f3 25 00 	movsd  0x25f3(%rip),%xmm0        # 4052c0 <.rdata+0x20>
  402ccc:	00 
  402ccd:	66 0f 2e d0          	ucomisd %xmm0,%xmm2
  402cd1:	0f 8b ad 00 00 00    	jnp    402d84 <sqrt+0x124>
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
  402d02:	74 66                	je     402d6a <sqrt+0x10a>
  402d04:	66 48 0f 7e d0       	movq   %xmm2,%rax
  402d09:	f2 0f 10 35 9f 25 00 	movsd  0x259f(%rip),%xmm6        # 4052b0 <.rdata+0x10>
  402d10:	00 
  402d11:	48 c1 e8 20          	shr    $0x20,%rax
  402d15:	85 c0                	test   %eax,%eax
  402d17:	78 47                	js     402d60 <sqrt+0x100>
  402d19:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
  402d1f:	e8 5c 01 00 00       	callq  402e80 <_errno>
  402d24:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
  402d2a:	b9 01 00 00 00       	mov    $0x1,%ecx
  402d2f:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
  402d35:	48 8d 15 64 25 00 00 	lea    0x2564(%rip),%rdx        # 4052a0 <.rdata>
  402d3c:	66 0f 57 db          	xorpd  %xmm3,%xmm3
  402d40:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  402d46:	e8 05 ef ff ff       	callq  401c50 <__mingw_raise_matherr>
  402d4b:	66 0f 28 c6          	movapd %xmm6,%xmm0
  402d4f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402d54:	48 83 c4 58          	add    $0x58,%rsp
  402d58:	c3                   	retq   
  402d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d60:	f2 0f 10 35 40 25 00 	movsd  0x2540(%rip),%xmm6        # 4052a8 <.rdata+0x8>
  402d67:	00 
  402d68:	eb af                	jmp    402d19 <sqrt+0xb9>
  402d6a:	66 48 0f 7e c0       	movq   %xmm0,%rax
  402d6f:	48 c1 e8 20          	shr    $0x20,%rax
  402d73:	85 c0                	test   %eax,%eax
  402d75:	78 8d                	js     402d04 <sqrt+0xa4>
  402d77:	f2 0f 10 05 39 25 00 	movsd  0x2539(%rip),%xmm0        # 4052b8 <.rdata+0x18>
  402d7e:	00 
  402d7f:	e9 1d ff ff ff       	jmpq   402ca1 <sqrt+0x41>
  402d84:	0f 85 4d ff ff ff    	jne    402cd7 <sqrt+0x77>
  402d8a:	e9 12 ff ff ff       	jmpq   402ca1 <sqrt+0x41>
  402d8f:	90                   	nop

0000000000402d90 <__C_specific_handler>:
  402d90:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 409310 <__imp___C_specific_handler>
  402d96:	90                   	nop
  402d97:	90                   	nop

0000000000402d98 <__set_app_type>:
  402d98:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 409340 <__imp___set_app_type>
  402d9e:	90                   	nop
  402d9f:	90                   	nop

0000000000402da0 <__getmainargs>:
  402da0:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 409320 <__imp___getmainargs>
  402da6:	90                   	nop
  402da7:	90                   	nop
  402da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402daf:	00 

0000000000402db0 <_get_invalid_parameter_handler>:
  402db0:	48 8b 05 b9 5b 00 00 	mov    0x5bb9(%rip),%rax        # 408970 <handler>
  402db7:	c3                   	retq   
  402db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402dbf:	00 

0000000000402dc0 <_set_invalid_parameter_handler>:
  402dc0:	48 89 c8             	mov    %rcx,%rax
  402dc3:	48 87 05 a6 5b 00 00 	xchg   %rax,0x5ba6(%rip)        # 408970 <handler>
  402dca:	c3                   	retq   
  402dcb:	90                   	nop
  402dcc:	90                   	nop
  402dcd:	90                   	nop
  402dce:	90                   	nop
  402dcf:	90                   	nop

0000000000402dd0 <malloc>:
  402dd0:	ff 25 f2 65 00 00    	jmpq   *0x65f2(%rip)        # 4093c8 <__imp_malloc>
  402dd6:	90                   	nop
  402dd7:	90                   	nop

0000000000402dd8 <strlen>:
  402dd8:	ff 25 02 66 00 00    	jmpq   *0x6602(%rip)        # 4093e0 <__imp_strlen>
  402dde:	90                   	nop
  402ddf:	90                   	nop

0000000000402de0 <memcpy>:
  402de0:	ff 25 ea 65 00 00    	jmpq   *0x65ea(%rip)        # 4093d0 <__imp_memcpy>
  402de6:	90                   	nop
  402de7:	90                   	nop

0000000000402de8 <_cexit>:
  402de8:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 409360 <__imp__cexit>
  402dee:	90                   	nop
  402def:	90                   	nop

0000000000402df0 <_amsg_exit>:
  402df0:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 409358 <__imp__amsg_exit>
  402df6:	90                   	nop
  402df7:	90                   	nop

0000000000402df8 <_initterm>:
  402df8:	ff 25 7a 65 00 00    	jmpq   *0x657a(%rip)        # 409378 <__imp__initterm>
  402dfe:	90                   	nop
  402dff:	90                   	nop

0000000000402e00 <exit>:
  402e00:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 4093a8 <__imp_exit>
  402e06:	90                   	nop
  402e07:	90                   	nop

0000000000402e08 <__lconv_init>:
  402e08:	ff 25 2a 65 00 00    	jmpq   *0x652a(%rip)        # 409338 <__imp___lconv_init>
  402e0e:	90                   	nop
  402e0f:	90                   	nop

0000000000402e10 <_onexit>:
  402e10:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 409388 <__imp__onexit>
  402e16:	90                   	nop
  402e17:	90                   	nop

0000000000402e18 <_lock>:
  402e18:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 409380 <__imp__lock>
  402e1e:	90                   	nop
  402e1f:	90                   	nop

0000000000402e20 <__dllonexit>:
  402e20:	ff 25 f2 64 00 00    	jmpq   *0x64f2(%rip)        # 409318 <__imp___dllonexit>
  402e26:	90                   	nop
  402e27:	90                   	nop

0000000000402e28 <_unlock>:
  402e28:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 409390 <__imp__unlock>
  402e2e:	90                   	nop
  402e2f:	90                   	nop

0000000000402e30 <signal>:
  402e30:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 4093d8 <__imp_signal>
  402e36:	90                   	nop
  402e37:	90                   	nop

0000000000402e38 <__setusermatherr>:
  402e38:	ff 25 0a 65 00 00    	jmpq   *0x650a(%rip)        # 409348 <__imp___setusermatherr>
  402e3e:	90                   	nop
  402e3f:	90                   	nop

0000000000402e40 <__iob_func>:
  402e40:	ff 25 ea 64 00 00    	jmpq   *0x64ea(%rip)        # 409330 <__imp___iob_func>
  402e46:	90                   	nop
  402e47:	90                   	nop

0000000000402e48 <fprintf>:
  402e48:	ff 25 62 65 00 00    	jmpq   *0x6562(%rip)        # 4093b0 <__imp_fprintf>
  402e4e:	90                   	nop
  402e4f:	90                   	nop

0000000000402e50 <fwrite>:
  402e50:	ff 25 6a 65 00 00    	jmpq   *0x656a(%rip)        # 4093c0 <__imp_fwrite>
  402e56:	90                   	nop
  402e57:	90                   	nop

0000000000402e58 <vfprintf>:
  402e58:	ff 25 92 65 00 00    	jmpq   *0x6592(%rip)        # 4093f0 <__imp_vfprintf>
  402e5e:	90                   	nop
  402e5f:	90                   	nop

0000000000402e60 <abort>:
  402e60:	ff 25 32 65 00 00    	jmpq   *0x6532(%rip)        # 409398 <__imp_abort>
  402e66:	90                   	nop
  402e67:	90                   	nop

0000000000402e68 <calloc>:
  402e68:	ff 25 32 65 00 00    	jmpq   *0x6532(%rip)        # 4093a0 <__imp_calloc>
  402e6e:	90                   	nop
  402e6f:	90                   	nop

0000000000402e70 <free>:
  402e70:	ff 25 42 65 00 00    	jmpq   *0x6542(%rip)        # 4093b8 <__imp_free>
  402e76:	90                   	nop
  402e77:	90                   	nop

0000000000402e78 <strncmp>:
  402e78:	ff 25 6a 65 00 00    	jmpq   *0x656a(%rip)        # 4093e8 <__imp_strncmp>
  402e7e:	90                   	nop
  402e7f:	90                   	nop

0000000000402e80 <_errno>:
  402e80:	ff 25 e2 64 00 00    	jmpq   *0x64e2(%rip)        # 409368 <__imp__errno>
  402e86:	90                   	nop
  402e87:	90                   	nop
  402e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e8f:	00 

0000000000402e90 <Sleep>:
  402e90:	ff 25 42 64 00 00    	jmpq   *0x6442(%rip)        # 4092d8 <__imp_Sleep>
  402e96:	90                   	nop
  402e97:	90                   	nop

0000000000402e98 <SetUnhandledExceptionFilter>:
  402e98:	ff 25 32 64 00 00    	jmpq   *0x6432(%rip)        # 4092d0 <__imp_SetUnhandledExceptionFilter>
  402e9e:	90                   	nop
  402e9f:	90                   	nop

0000000000402ea0 <GetStartupInfoA>:
  402ea0:	ff 25 da 63 00 00    	jmpq   *0x63da(%rip)        # 409280 <__imp_GetStartupInfoA>
  402ea6:	90                   	nop
  402ea7:	90                   	nop

0000000000402ea8 <RtlAddFunctionTable>:
  402ea8:	ff 25 02 64 00 00    	jmpq   *0x6402(%rip)        # 4092b0 <__imp_RtlAddFunctionTable>
  402eae:	90                   	nop
  402eaf:	90                   	nop

0000000000402eb0 <VirtualQuery>:
  402eb0:	ff 25 4a 64 00 00    	jmpq   *0x644a(%rip)        # 409300 <__imp_VirtualQuery>
  402eb6:	90                   	nop
  402eb7:	90                   	nop

0000000000402eb8 <VirtualProtect>:
  402eb8:	ff 25 3a 64 00 00    	jmpq   *0x643a(%rip)        # 4092f8 <__imp_VirtualProtect>
  402ebe:	90                   	nop
  402ebf:	90                   	nop

0000000000402ec0 <GetLastError>:
  402ec0:	ff 25 b2 63 00 00    	jmpq   *0x63b2(%rip)        # 409278 <__imp_GetLastError>
  402ec6:	90                   	nop
  402ec7:	90                   	nop

0000000000402ec8 <GetSystemTimeAsFileTime>:
  402ec8:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 409288 <__imp_GetSystemTimeAsFileTime>
  402ece:	90                   	nop
  402ecf:	90                   	nop

0000000000402ed0 <GetCurrentProcessId>:
  402ed0:	ff 25 92 63 00 00    	jmpq   *0x6392(%rip)        # 409268 <__imp_GetCurrentProcessId>
  402ed6:	90                   	nop
  402ed7:	90                   	nop

0000000000402ed8 <GetCurrentThreadId>:
  402ed8:	ff 25 92 63 00 00    	jmpq   *0x6392(%rip)        # 409270 <__imp_GetCurrentThreadId>
  402ede:	90                   	nop
  402edf:	90                   	nop

0000000000402ee0 <GetTickCount>:
  402ee0:	ff 25 aa 63 00 00    	jmpq   *0x63aa(%rip)        # 409290 <__imp_GetTickCount>
  402ee6:	90                   	nop
  402ee7:	90                   	nop

0000000000402ee8 <QueryPerformanceCounter>:
  402ee8:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 4092a8 <__imp_QueryPerformanceCounter>
  402eee:	90                   	nop
  402eef:	90                   	nop

0000000000402ef0 <RtlCaptureContext>:
  402ef0:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 4092b8 <__imp_RtlCaptureContext>
  402ef6:	90                   	nop
  402ef7:	90                   	nop

0000000000402ef8 <RtlLookupFunctionEntry>:
  402ef8:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 4092c0 <__imp_RtlLookupFunctionEntry>
  402efe:	90                   	nop
  402eff:	90                   	nop

0000000000402f00 <RtlVirtualUnwind>:
  402f00:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 4092c8 <__imp_RtlVirtualUnwind>
  402f06:	90                   	nop
  402f07:	90                   	nop

0000000000402f08 <UnhandledExceptionFilter>:
  402f08:	ff 25 e2 63 00 00    	jmpq   *0x63e2(%rip)        # 4092f0 <__imp_UnhandledExceptionFilter>
  402f0e:	90                   	nop
  402f0f:	90                   	nop

0000000000402f10 <GetCurrentProcess>:
  402f10:	ff 25 4a 63 00 00    	jmpq   *0x634a(%rip)        # 409260 <__imp_GetCurrentProcess>
  402f16:	90                   	nop
  402f17:	90                   	nop

0000000000402f18 <TerminateProcess>:
  402f18:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 4092e0 <__imp_TerminateProcess>
  402f1e:	90                   	nop
  402f1f:	90                   	nop

0000000000402f20 <EnterCriticalSection>:
  402f20:	ff 25 32 63 00 00    	jmpq   *0x6332(%rip)        # 409258 <__imp_EnterCriticalSection>
  402f26:	90                   	nop
  402f27:	90                   	nop

0000000000402f28 <TlsGetValue>:
  402f28:	ff 25 ba 63 00 00    	jmpq   *0x63ba(%rip)        # 4092e8 <__imp_TlsGetValue>
  402f2e:	90                   	nop
  402f2f:	90                   	nop

0000000000402f30 <LeaveCriticalSection>:
  402f30:	ff 25 6a 63 00 00    	jmpq   *0x636a(%rip)        # 4092a0 <__imp_LeaveCriticalSection>
  402f36:	90                   	nop
  402f37:	90                   	nop

0000000000402f38 <DeleteCriticalSection>:
  402f38:	ff 25 12 63 00 00    	jmpq   *0x6312(%rip)        # 409250 <__IAT_start__>
  402f3e:	90                   	nop
  402f3f:	90                   	nop

0000000000402f40 <InitializeCriticalSection>:
  402f40:	ff 25 52 63 00 00    	jmpq   *0x6352(%rip)        # 409298 <__imp_InitializeCriticalSection>
  402f46:	90                   	nop
  402f47:	90                   	nop
  402f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f4f:	00 

0000000000402f50 <main>:
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
  402f71:	e8 aa f4 ff ff       	callq  402420 <__main>
  402f76:	f2 0f 10 3d 9a 20 00 	movsd  0x209a(%rip),%xmm7        # 405018 <.rdata+0x18>
  402f7d:	00 
  402f7e:	f2 0f 10 35 8a 20 00 	movsd  0x208a(%rip),%xmm6        # 405010 <.rdata+0x10>
  402f85:	00 
  402f86:	e8 6d e6 ff ff       	callq  4015f8 <_ZNSt6chrono3_V212steady_clock3nowEv>
  402f8b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f90:	48 89 c7             	mov    %rax,%rdi
  402f93:	eb 43                	jmp    402fd8 <main+0x88>
  402f95:	90                   	nop
  402f96:	90                   	nop
  402f97:	90                   	nop
  402f98:	90                   	nop
  402f99:	90                   	nop
  402f9a:	90                   	nop
  402f9b:	90                   	nop
  402f9c:	90                   	nop
  402f9d:	90                   	nop
  402f9e:	90                   	nop
  402f9f:	90                   	nop
  402fa0:	90                   	nop
  402fa1:	90                   	nop
  402fa2:	90                   	nop
  402fa3:	90                   	nop
  402fa4:	90                   	nop
  402fa5:	90                   	nop
  402fa6:	90                   	nop
  402fa7:	90                   	nop
  402fa8:	90                   	nop
  402fa9:	90                   	nop
  402faa:	90                   	nop
  402fab:	90                   	nop
  402fac:	90                   	nop
  402fad:	90                   	nop
  402fae:	90                   	nop
  402faf:	90                   	nop
  402fb0:	90                   	nop
  402fb1:	90                   	nop
  402fb2:	90                   	nop
  402fb3:	90                   	nop
  402fb4:	90                   	nop
  402fb5:	90                   	nop
  402fb6:	90                   	nop
  402fb7:	90                   	nop
  402fb8:	90                   	nop
  402fb9:	90                   	nop
  402fba:	90                   	nop
  402fbb:	90                   	nop
  402fbc:	90                   	nop
  402fbd:	90                   	nop
  402fbe:	90                   	nop
  402fbf:	90                   	nop
  402fc0:	90                   	nop
  402fc1:	90                   	nop
  402fc2:	90                   	nop
  402fc3:	90                   	nop
  402fc4:	90                   	nop
  402fc5:	90                   	nop
  402fc6:	90                   	nop
  402fc7:	90                   	nop
  402fc8:	90                   	nop
  402fc9:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402fcd:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
  402fd2:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
  402fd6:	72 39                	jb     403011 <main+0xc1>
  402fd8:	31 d2                	xor    %edx,%edx
  402fda:	48 89 d8             	mov    %rbx,%rax
  402fdd:	48 f7 f1             	div    %rcx
  402fe0:	48 85 d2             	test   %rdx,%rdx
  402fe3:	0f 84 87 00 00 00    	je     403070 <main+0x120>
  402fe9:	48 83 c1 01          	add    $0x1,%rcx
  402fed:	79 da                	jns    402fc9 <main+0x79>
  402fef:	48 89 ca             	mov    %rcx,%rdx
  402ff2:	48 89 c8             	mov    %rcx,%rax
  402ff5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402ff9:	48 d1 ea             	shr    %rdx
  402ffc:	83 e0 01             	and    $0x1,%eax
  402fff:	48 09 c2             	or     %rax,%rdx
  403002:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  403007:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  40300b:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
  40300f:	73 c7                	jae    402fd8 <main+0x88>
  403011:	bd 01 00 00 00       	mov    $0x1,%ebp
  403016:	e8 dd e5 ff ff       	callq  4015f8 <_ZNSt6chrono3_V212steady_clock3nowEv>
  40301b:	66 0f ef c9          	pxor   %xmm1,%xmm1
  40301f:	48 8b 0d ba 22 00 00 	mov    0x22ba(%rip),%rcx        # 4052e0 <__fu0__ZSt4cout>
  403026:	48 29 f8             	sub    %rdi,%rax
  403029:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  40302e:	f2 0f 5e cf          	divsd  %xmm7,%xmm1
  403032:	e8 c9 e5 ff ff       	callq  401600 <_ZNSo9_M_insertIdEERSoT_>
  403037:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40303d:	48 8d 15 bc 1f 00 00 	lea    0x1fbc(%rip),%rdx        # 405000 <.rdata>
  403044:	48 89 c1             	mov    %rax,%rcx
  403047:	e8 bc e5 ff ff       	callq  401608 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
  40304c:	40 84 ed             	test   %bpl,%bpl
  40304f:	75 23                	jne    403074 <main+0x124>
  403051:	83 ee 01             	sub    $0x1,%esi
  403054:	0f 85 2c ff ff ff    	jne    402f86 <main+0x36>
  40305a:	0f 28 74 24 20       	movaps 0x20(%rsp),%xmm6
  40305f:	31 c0                	xor    %eax,%eax
  403061:	0f 28 7c 24 30       	movaps 0x30(%rsp),%xmm7
  403066:	48 83 c4 48          	add    $0x48,%rsp
  40306a:	5b                   	pop    %rbx
  40306b:	5e                   	pop    %rsi
  40306c:	5f                   	pop    %rdi
  40306d:	5d                   	pop    %rbp
  40306e:	c3                   	retq   
  40306f:	90                   	nop
  403070:	31 ed                	xor    %ebp,%ebp
  403072:	eb a2                	jmp    403016 <main+0xc6>
  403074:	48 8b 0d 65 22 00 00 	mov    0x2265(%rip),%rcx        # 4052e0 <__fu0__ZSt4cout>
  40307b:	48 ba e9 fe ff ff ff 	movabs $0xffffffffffffee9,%rdx
  403082:	ff ff 0f 
  403085:	e8 86 e5 ff ff       	callq  401610 <_ZNSo9_M_insertIyEERSoT_>
  40308a:	48 8d 15 73 1f 00 00 	lea    0x1f73(%rip),%rdx        # 405004 <.rdata+0x4>
  403091:	48 89 c1             	mov    %rax,%rcx
  403094:	e8 7f e5 ff ff       	callq  401618 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  403099:	48 89 c1             	mov    %rax,%rcx
  40309c:	e8 7f e5 ff ff       	callq  401620 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4030a1:	eb ae                	jmp    403051 <main+0x101>
  4030a3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4030aa:	84 00 00 00 00 00 

00000000004030b0 <_GLOBAL__sub_I__Z14is_prime_floaty>:
  4030b0:	48 83 ec 28          	sub    $0x28,%rsp
  4030b4:	48 8d 0d 75 4f 00 00 	lea    0x4f75(%rip),%rcx        # 408030 <_ZStL8__ioinit>
  4030bb:	e8 68 e5 ff ff       	callq  401628 <_ZNSt8ios_base4InitC1Ev>
  4030c0:	48 8d 0d 29 e4 ff ff 	lea    -0x1bd7(%rip),%rcx        # 4014f0 <__tcf_0>
  4030c7:	48 83 c4 28          	add    $0x28,%rsp
  4030cb:	e9 f0 e6 ff ff       	jmpq   4017c0 <atexit>

00000000004030d0 <__CTOR_LIST__>:
  4030d0:	ff                   	(bad)  
  4030d1:	ff                   	(bad)  
  4030d2:	ff                   	(bad)  
  4030d3:	ff                   	(bad)  
  4030d4:	ff                   	(bad)  
  4030d5:	ff                   	(bad)  
  4030d6:	ff                   	(bad)  
  4030d7:	ff b0 30 40 00 00    	pushq  0x4030(%rax)

00000000004030d8 <.ctors>:
  4030d8:	b0 30                	mov    $0x30,%al
  4030da:	40 00 00             	add    %al,(%rax)
	...

00000000004030e8 <__DTOR_LIST__>:
  4030e8:	ff                   	(bad)  
  4030e9:	ff                   	(bad)  
  4030ea:	ff                   	(bad)  
  4030eb:	ff                   	(bad)  
  4030ec:	ff                   	(bad)  
  4030ed:	ff                   	(bad)  
  4030ee:	ff                   	(bad)  
  4030ef:	ff 00                	incl   (%rax)
  4030f1:	00 00                	add    %al,(%rax)
  4030f3:	00 00                	add    %al,(%rax)
  4030f5:	00 00                	add    %al,(%rax)
	...
