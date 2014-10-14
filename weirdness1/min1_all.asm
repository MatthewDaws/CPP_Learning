
min1.exe:     file format pei-x86-64


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
  40105e:	e8 e5 1c 00 00       	callq  402d48 <__set_app_type>
  401063:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40106a:	e8 71 07 00 00       	callq  4017e0 <_encode_pointer>
  40106f:	8b 15 fb 6f 00 00    	mov    0x6ffb(%rip),%edx        # 408070 <_fmode>
  401075:	48 89 05 1c 79 00 00 	mov    %rax,0x791c(%rip)        # 408998 <__onexitend>
  40107c:	48 89 05 0d 79 00 00 	mov    %rax,0x790d(%rip)        # 408990 <__onexitbegin>
  401083:	48 8b 05 d6 82 00 00 	mov    0x82d6(%rip),%rax        # 409360 <__imp__fmode>
  40108a:	89 10                	mov    %edx,(%rax)
  40108c:	e8 8f 0c 00 00       	callq  401d20 <_setargv>
  401091:	83 3d c8 2f 00 00 01 	cmpl   $0x1,0x2fc8(%rip)        # 404060 <_MINGW_INSTALL_DEBUG_MATHERR>
  401098:	74 66                	je     401100 <pre_c_init+0xf0>
  40109a:	31 c0                	xor    %eax,%eax
  40109c:	48 83 c4 28          	add    $0x28,%rsp
  4010a0:	c3                   	retq   
  4010a1:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a6:	e8 9d 1c 00 00       	callq  402d48 <__set_app_type>
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
  401100:	48 8d 0d 89 0c 00 00 	lea    0xc89(%rip),%rcx        # 401d90 <_matherr>
  401107:	e8 74 0c 00 00       	callq  401d80 <__mingw_setusermatherr>
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
  401168:	e8 e3 1b 00 00       	callq  402d50 <__getmainargs>
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
  4011c0:	48 8b 3d 09 81 00 00 	mov    0x8109(%rip),%rdi        # 4092d0 <__imp_Sleep>
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
  401249:	e8 e2 0e 00 00       	callq  402130 <_pei386_runtime_relocator>
  40124e:	48 8d 0d 1b 09 00 00 	lea    0x91b(%rip),%rcx        # 401b70 <_gnu_exception_handler>
  401255:	ff 15 6d 80 00 00    	callq  *0x806d(%rip)        # 4092c8 <__imp_SetUnhandledExceptionFilter>
  40125b:	48 89 05 3e 6e 00 00 	mov    %rax,0x6e3e(%rip)        # 4080a0 <__mingw_oldexcpt_handler>
  401262:	e8 19 08 00 00       	callq  401a80 <__mingw_init_ehandler>
  401267:	48 8d 0d 92 fd ff ff 	lea    -0x26e(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126e:	e8 fd 1a 00 00       	callq  402d70 <_set_invalid_parameter_handler>
  401273:	e8 d8 11 00 00       	callq  402450 <_fpreset>
  401278:	48 8d 05 81 ed ff ff 	lea    -0x127f(%rip),%rax        # 400000 <__ImageBase>
  40127f:	48 89 05 02 77 00 00 	mov    %rax,0x7702(%rip)        # 408988 <__mingw_winmain_hInstance>
  401286:	48 8b 05 bb 80 00 00 	mov    0x80bb(%rip),%rax        # 409348 <__imp__acmdln>
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
  40131f:	e8 5c 1a 00 00       	callq  402d80 <malloc>
  401324:	45 85 e4             	test   %r12d,%r12d
  401327:	48 8b 3d f2 6c 00 00 	mov    0x6cf2(%rip),%rdi        # 408020 <argv>
  40132e:	48 89 c5             	mov    %rax,%rbp
  401331:	0f 8e 5b 01 00 00    	jle    401492 <__tmainCRTStartup+0x312>
  401337:	31 db                	xor    %ebx,%ebx
  401339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401340:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401344:	e8 3f 1a 00 00       	callq  402d88 <strlen>
  401349:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134d:	48 89 f1             	mov    %rsi,%rcx
  401350:	e8 2b 1a 00 00       	callq  402d80 <malloc>
  401355:	49 89 f0             	mov    %rsi,%r8
  401358:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40135d:	48 89 c1             	mov    %rax,%rcx
  401360:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  401364:	48 83 c3 01          	add    $0x1,%rbx
  401368:	e8 23 1a 00 00       	callq  402d90 <memcpy>
  40136d:	41 39 dc             	cmp    %ebx,%r12d
  401370:	7f ce                	jg     401340 <__tmainCRTStartup+0x1c0>
  401372:	49 83 ed 08          	sub    $0x8,%r13
  401376:	4a c7 44 2d 00 00 00 	movq   $0x0,0x0(%rbp,%r13,1)
  40137d:	00 00 
  40137f:	48 89 2d 9a 6c 00 00 	mov    %rbp,0x6c9a(%rip)        # 408020 <argv>
  401386:	e8 75 11 00 00       	callq  402500 <__main>
  40138b:	48 8b 15 86 6c 00 00 	mov    0x6c86(%rip),%rdx        # 408018 <envp>
  401392:	48 8b 05 87 7f 00 00 	mov    0x7f87(%rip),%rax        # 409320 <__imp___initenv>
  401399:	8b 0d 89 6c 00 00    	mov    0x6c89(%rip),%ecx        # 408028 <argc>
  40139f:	48 89 10             	mov    %rdx,(%rax)
  4013a2:	4c 8b 05 6f 6c 00 00 	mov    0x6c6f(%rip),%r8        # 408018 <envp>
  4013a9:	48 8b 15 70 6c 00 00 	mov    0x6c70(%rip),%rdx        # 408020 <argv>
  4013b0:	e8 3b 1b 00 00       	callq  402ef0 <main>
  4013b5:	8b 0d 4d 6c 00 00    	mov    0x6c4d(%rip),%ecx        # 408008 <managedapp>
  4013bb:	89 05 4b 6c 00 00    	mov    %eax,0x6c4b(%rip)        # 40800c <mainret>
  4013c1:	85 c9                	test   %ecx,%ecx
  4013c3:	0f 84 d1 00 00 00    	je     40149a <__tmainCRTStartup+0x31a>
  4013c9:	8b 15 35 6c 00 00    	mov    0x6c35(%rip),%edx        # 408004 <has_cctor>
  4013cf:	85 d2                	test   %edx,%edx
  4013d1:	75 0b                	jne    4013de <__tmainCRTStartup+0x25e>
  4013d3:	e8 c0 19 00 00       	callq  402d98 <_cexit>
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
  401419:	e8 82 19 00 00       	callq  402da0 <_amsg_exit>
  40141e:	8b 05 7c 75 00 00    	mov    0x757c(%rip),%eax        # 4089a0 <__native_startup_state>
  401424:	83 f8 01             	cmp    $0x1,%eax
  401427:	0f 85 fc fd ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  40142d:	48 8d 15 dc 8b 00 00 	lea    0x8bdc(%rip),%rdx        # 40a010 <__xc_z>
  401434:	48 8d 0d c5 8b 00 00 	lea    0x8bc5(%rip),%rcx        # 40a000 <___crt_xc_start__>
  40143b:	e8 68 19 00 00       	callq  402da8 <_initterm>
  401440:	85 db                	test   %ebx,%ebx
  401442:	c7 05 54 75 00 00 02 	movl   $0x2,0x7554(%rip)        # 4089a0 <__native_startup_state>
  401449:	00 00 00 
  40144c:	0f 85 df fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  401452:	31 c0                	xor    %eax,%eax
  401454:	48 87 05 4d 75 00 00 	xchg   %rax,0x754d(%rip)        # 4089a8 <__native_startup_lock>
  40145b:	e9 d1 fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  401460:	48 89 d1             	mov    %rdx,%rcx
  401463:	ff 15 0f 7e 00 00    	callq  *0x7e0f(%rip)        # 409278 <__imp_GetStartupInfoA>
  401469:	e9 43 fd ff ff       	jmpq   4011b1 <__tmainCRTStartup+0x31>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	48 8d 15 b9 8b 00 00 	lea    0x8bb9(%rip),%rdx        # 40a030 <__xi_z>
  401477:	c7 05 1f 75 00 00 01 	movl   $0x1,0x751f(%rip)        # 4089a0 <__native_startup_state>
  40147e:	00 00 00 
  401481:	48 8d 0d 90 8b 00 00 	lea    0x8b90(%rip),%rcx        # 40a018 <___crt_xc_end__>
  401488:	e8 1b 19 00 00       	callq  402da8 <_initterm>
  40148d:	e9 88 fd ff ff       	jmpq   40121a <__tmainCRTStartup+0x9a>
  401492:	45 31 ed             	xor    %r13d,%r13d
  401495:	e9 dc fe ff ff       	jmpq   401376 <__tmainCRTStartup+0x1f6>
  40149a:	89 c1                	mov    %eax,%ecx
  40149c:	0f 1f 40 00          	nopl   0x0(%rax)
  4014a0:	e8 0b 19 00 00       	callq  402db0 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	c7 05 a2 6b 00 00 01 	movl   $0x1,0x6ba2(%rip)        # 408060 <mingw_app_type>
  4014bb:	00 00 00 
  4014be:	e8 5d 10 00 00       	callq  402520 <__security_init_cookie>
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
  4014de:	e8 3d 10 00 00       	callq  402520 <__security_init_cookie>
  4014e3:	e8 98 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014e8:	90                   	nop

00000000004014e9 <.l_end>:
  4014e9:	90                   	nop
  4014ea:	48 83 c4 28          	add    $0x28,%rsp
  4014ee:	c3                   	retq   
  4014ef:	90                   	nop

00000000004014f0 <__tcf_0>:
  4014f0:	48 8d 0d 39 6b 00 00 	lea    0x6b39(%rip),%rcx        # 408030 <_ZStL8__ioinit>
  4014f7:	e9 d4 01 00 00       	jmpq   4016d0 <_ZNSt8ios_base4InitD1Ev>
  4014fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401500 <_Z14is_prime_floaty>:
  401500:	48 85 c9             	test   %rcx,%rcx
  401503:	78 6e                	js     401573 <_Z14is_prime_floaty+0x73>
  401505:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401509:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
  40150e:	f2 0f 51 c9          	sqrtsd %xmm1,%xmm1
  401512:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401518:	eb 26                	jmp    401540 <_Z14is_prime_floaty+0x40>
  40151a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401520:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401524:	f2 49 0f 2a c0       	cvtsi2sd %r8,%xmm0
  401529:	66 0f 2f c8          	comisd %xmm0,%xmm1
  40152d:	72 38                	jb     401567 <_Z14is_prime_floaty+0x67>
  40152f:	31 d2                	xor    %edx,%edx
  401531:	48 89 c8             	mov    %rcx,%rax
  401534:	49 f7 f0             	div    %r8
  401537:	48 85 d2             	test   %rdx,%rdx
  40153a:	74 34                	je     401570 <_Z14is_prime_floaty+0x70>
  40153c:	49 83 c0 01          	add    $0x1,%r8
  401540:	4d 85 c0             	test   %r8,%r8
  401543:	79 db                	jns    401520 <_Z14is_prime_floaty+0x20>
  401545:	4c 89 c2             	mov    %r8,%rdx
  401548:	4c 89 c0             	mov    %r8,%rax
  40154b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40154f:	48 d1 ea             	shr    %rdx
  401552:	83 e0 01             	and    $0x1,%eax
  401555:	48 09 c2             	or     %rax,%rdx
  401558:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  40155d:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  401561:	66 0f 2f c8          	comisd %xmm0,%xmm1
  401565:	73 c8                	jae    40152f <_Z14is_prime_floaty+0x2f>
  401567:	b8 01 00 00 00       	mov    $0x1,%eax
  40156c:	c3                   	retq   
  40156d:	0f 1f 00             	nopl   (%rax)
  401570:	31 c0                	xor    %eax,%eax
  401572:	c3                   	retq   
  401573:	48 89 c8             	mov    %rcx,%rax
  401576:	48 89 ca             	mov    %rcx,%rdx
  401579:	66 0f ef c9          	pxor   %xmm1,%xmm1
  40157d:	48 d1 e8             	shr    %rax
  401580:	83 e2 01             	and    $0x1,%edx
  401583:	48 09 d0             	or     %rdx,%rax
  401586:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  40158b:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  40158f:	e9 7a ff ff ff       	jmpq   40150e <_Z14is_prime_floaty+0xe>
  401594:	b8 01 00 00 00       	mov    $0x1,%eax
  401599:	b8 01 00 00 00       	mov    $0x1,%eax
  40159e:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a3:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a8:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ad:	b8 01 00 00 00       	mov    $0x1,%eax
  4015b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4015b7:	b8 01 00 00 00       	mov    $0x1,%eax
  4015bc:	b8 01 00 00 00       	mov    $0x1,%eax
  4015c1:	b8 01 00 00 00       	mov    $0x1,%eax
  4015c6:	b8 01 00 00 00       	mov    $0x1,%eax
  4015cb:	b8 01 00 00 00       	mov    $0x1,%eax
  4015d0:	b8 01 00 00 00       	mov    $0x1,%eax
  4015d5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015da:	b8 01 00 00 00       	mov    $0x1,%eax
  4015df:	b8 01 00 00 00       	mov    $0x1,%eax
  4015e4:	b8 01 00 00 00       	mov    $0x1,%eax
  4015e9:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ee:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f3:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f8:	b8 01 00 00 00       	mov    $0x1,%eax
  4015fd:	b8 01 00 00 00       	mov    $0x1,%eax
  401602:	b8 01 00 00 00       	mov    $0x1,%eax
  401607:	b8 01 00 00 00       	mov    $0x1,%eax
  40160c:	b8 01 00 00 00       	mov    $0x1,%eax
  401611:	b8 01 00 00 00       	mov    $0x1,%eax
  401616:	b8 01 00 00 00       	mov    $0x1,%eax
  40161b:	b8 01 00 00 00       	mov    $0x1,%eax
  401620:	b8 01 00 00 00       	mov    $0x1,%eax
  401625:	b8 01 00 00 00       	mov    $0x1,%eax
  40162a:	b8 01 00 00 00       	mov    $0x1,%eax
  40162f:	b8 01 00 00 00       	mov    $0x1,%eax
  401634:	b8 01 00 00 00       	mov    $0x1,%eax
  401639:	b8 01 00 00 00       	mov    $0x1,%eax
  40163e:	b8 01 00 00 00       	mov    $0x1,%eax
  401643:	b8 01 00 00 00       	mov    $0x1,%eax
  401648:	b8 01 00 00 00       	mov    $0x1,%eax
  40164d:	b8 01 00 00 00       	mov    $0x1,%eax
  401652:	b8 01 00 00 00       	mov    $0x1,%eax
  401657:	b8 01 00 00 00       	mov    $0x1,%eax
  40165c:	b8 01 00 00 00       	mov    $0x1,%eax
  401661:	b8 01 00 00 00       	mov    $0x1,%eax
  401666:	b8 01 00 00 00       	mov    $0x1,%eax
  40166b:	b8 01 00 00 00       	mov    $0x1,%eax
  401670:	b8 01 00 00 00       	mov    $0x1,%eax
  401675:	b8 01 00 00 00       	mov    $0x1,%eax
  40167a:	b8 01 00 00 00       	mov    $0x1,%eax
  40167f:	b8 01 00 00 00       	mov    $0x1,%eax
  401684:	b8 01 00 00 00       	mov    $0x1,%eax
  401689:	b8 01 00 00 00       	mov    $0x1,%eax
  40168e:	b8 01 00 00 00       	mov    $0x1,%eax
  401693:	b8 01 00 00 00       	mov    $0x1,%eax
  401698:	b8 01 00 00 00       	mov    $0x1,%eax
  40169d:	b8 01 00 00 00       	mov    $0x1,%eax
  4016a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4016a7:	b8 01 00 00 00       	mov    $0x1,%eax
  4016ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4016b1:	b8 01 00 00 00       	mov    $0x1,%eax
  4016b6:	b8 01 00 00 00       	mov    $0x1,%eax
  4016bb:	b8 01 00 00 00       	mov    $0x1,%eax
  4016c0:	b8 01 00 00 00       	mov    $0x1,%eax
  4016c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4016ca:	b8 01 00 00 00       	mov    $0x1,%eax
  4016cf:	90                   	nop

00000000004016d0 <_ZNSt8ios_base4InitD1Ev>:
  4016d0:	ff 25 3a 7d 00 00    	jmpq   *0x7d3a(%rip)        # 409410 <__imp__ZNSt8ios_base4InitD1Ev>
  4016d6:	90                   	nop
  4016d7:	90                   	nop

00000000004016d8 <_ZNSt6chrono3_V212steady_clock3nowEv>:
  4016d8:	ff 25 22 7d 00 00    	jmpq   *0x7d22(%rip)        # 409400 <__imp__ZNSt6chrono3_V212steady_clock3nowEv>
  4016de:	90                   	nop
  4016df:	90                   	nop

00000000004016e0 <_ZNSo9_M_insertIdEERSoT_>:
  4016e0:	ff 25 0a 7d 00 00    	jmpq   *0x7d0a(%rip)        # 4093f0 <__imp__ZNSo9_M_insertIdEERSoT_>
  4016e6:	90                   	nop
  4016e7:	90                   	nop

00000000004016e8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
  4016e8:	ff 25 2a 7d 00 00    	jmpq   *0x7d2a(%rip)        # 409418 <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
  4016ee:	90                   	nop
  4016ef:	90                   	nop

00000000004016f0 <_ZNSo9_M_insertIyEERSoT_>:
  4016f0:	ff 25 02 7d 00 00    	jmpq   *0x7d02(%rip)        # 4093f8 <__imp__ZNSo9_M_insertIyEERSoT_>
  4016f6:	90                   	nop
  4016f7:	90                   	nop

00000000004016f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  4016f8:	ff 25 32 7d 00 00    	jmpq   *0x7d32(%rip)        # 409430 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4016fe:	90                   	nop
  4016ff:	90                   	nop

0000000000401700 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401700:	ff 25 22 7d 00 00    	jmpq   *0x7d22(%rip)        # 409428 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401706:	90                   	nop
  401707:	90                   	nop

0000000000401708 <_ZNSt8ios_base4InitC1Ev>:
  401708:	ff 25 fa 7c 00 00    	jmpq   *0x7cfa(%rip)        # 409408 <__imp__ZNSt8ios_base4InitC1Ev>
  40170e:	90                   	nop
  40170f:	90                   	nop

0000000000401710 <__dyn_tls_dtor>:
  401710:	48 83 ec 28          	sub    $0x28,%rsp
  401714:	85 d2                	test   %edx,%edx
  401716:	74 18                	je     401730 <__dyn_tls_dtor+0x20>
  401718:	83 fa 03             	cmp    $0x3,%edx
  40171b:	74 13                	je     401730 <__dyn_tls_dtor+0x20>
  40171d:	b8 01 00 00 00       	mov    $0x1,%eax
  401722:	48 83 c4 28          	add    $0x28,%rsp
  401726:	c3                   	retq   
  401727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40172e:	00 00 
  401730:	e8 4b 11 00 00       	callq  402880 <__mingw_TLScallback>
  401735:	b8 01 00 00 00       	mov    $0x1,%eax
  40173a:	48 83 c4 28          	add    $0x28,%rsp
  40173e:	c3                   	retq   
  40173f:	90                   	nop

0000000000401740 <__dyn_tls_init>:
  401740:	56                   	push   %rsi
  401741:	53                   	push   %rbx
  401742:	48 83 ec 28          	sub    $0x28,%rsp
  401746:	83 3d 03 29 00 00 02 	cmpl   $0x2,0x2903(%rip)        # 404050 <_CRT_MT>
  40174d:	74 0a                	je     401759 <__dyn_tls_init+0x19>
  40174f:	c7 05 f7 28 00 00 02 	movl   $0x2,0x28f7(%rip)        # 404050 <_CRT_MT>
  401756:	00 00 00 
  401759:	83 fa 02             	cmp    $0x2,%edx
  40175c:	74 12                	je     401770 <__dyn_tls_init+0x30>
  40175e:	83 fa 01             	cmp    $0x1,%edx
  401761:	74 3f                	je     4017a2 <__dyn_tls_init+0x62>
  401763:	b8 01 00 00 00       	mov    $0x1,%eax
  401768:	48 83 c4 28          	add    $0x28,%rsp
  40176c:	5b                   	pop    %rbx
  40176d:	5e                   	pop    %rsi
  40176e:	c3                   	retq   
  40176f:	90                   	nop
  401770:	48 8d 1d e9 88 00 00 	lea    0x88e9(%rip),%rbx        # 40a060 <__xd_z>
  401777:	48 8d 35 e2 88 00 00 	lea    0x88e2(%rip),%rsi        # 40a060 <__xd_z>
  40177e:	48 39 f3             	cmp    %rsi,%rbx
  401781:	74 e0                	je     401763 <__dyn_tls_init+0x23>
  401783:	48 8b 03             	mov    (%rbx),%rax
  401786:	48 85 c0             	test   %rax,%rax
  401789:	74 02                	je     40178d <__dyn_tls_init+0x4d>
  40178b:	ff d0                	callq  *%rax
  40178d:	48 83 c3 08          	add    $0x8,%rbx
  401791:	48 39 f3             	cmp    %rsi,%rbx
  401794:	75 ed                	jne    401783 <__dyn_tls_init+0x43>
  401796:	b8 01 00 00 00       	mov    $0x1,%eax
  40179b:	48 83 c4 28          	add    $0x28,%rsp
  40179f:	5b                   	pop    %rbx
  4017a0:	5e                   	pop    %rsi
  4017a1:	c3                   	retq   
  4017a2:	e8 d9 10 00 00       	callq  402880 <__mingw_TLScallback>
  4017a7:	eb ba                	jmp    401763 <__dyn_tls_init+0x23>
  4017a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004017b0 <__tlregdtor>:
  4017b0:	31 c0                	xor    %eax,%eax
  4017b2:	c3                   	retq   
  4017b3:	90                   	nop
  4017b4:	90                   	nop
  4017b5:	90                   	nop
  4017b6:	90                   	nop
  4017b7:	90                   	nop
  4017b8:	90                   	nop
  4017b9:	90                   	nop
  4017ba:	90                   	nop
  4017bb:	90                   	nop
  4017bc:	90                   	nop
  4017bd:	90                   	nop
  4017be:	90                   	nop
  4017bf:	90                   	nop

00000000004017c0 <my_lconv_init>:
  4017c0:	48 8b 05 69 7b 00 00 	mov    0x7b69(%rip),%rax        # 409330 <__imp___lconv_init>
  4017c7:	48 ff e0             	rex.W jmpq *%rax
  4017ca:	90                   	nop
  4017cb:	90                   	nop
  4017cc:	90                   	nop
  4017cd:	90                   	nop
  4017ce:	90                   	nop
  4017cf:	90                   	nop

00000000004017d0 <_decode_pointer>:
  4017d0:	48 89 c8             	mov    %rcx,%rax
  4017d3:	c3                   	retq   
  4017d4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4017db:	00 00 00 00 00 

00000000004017e0 <_encode_pointer>:
  4017e0:	48 89 c8             	mov    %rcx,%rax
  4017e3:	c3                   	retq   
  4017e4:	90                   	nop
  4017e5:	90                   	nop
  4017e6:	90                   	nop
  4017e7:	90                   	nop
  4017e8:	90                   	nop
  4017e9:	90                   	nop
  4017ea:	90                   	nop
  4017eb:	90                   	nop
  4017ec:	90                   	nop
  4017ed:	90                   	nop
  4017ee:	90                   	nop
  4017ef:	90                   	nop

00000000004017f0 <mingw_onexit>:
  4017f0:	53                   	push   %rbx
  4017f1:	48 83 ec 30          	sub    $0x30,%rsp
  4017f5:	48 89 cb             	mov    %rcx,%rbx
  4017f8:	48 8b 0d 91 71 00 00 	mov    0x7191(%rip),%rcx        # 408990 <__onexitbegin>
  4017ff:	e8 cc ff ff ff       	callq  4017d0 <_decode_pointer>
  401804:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401808:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40180d:	74 76                	je     401885 <mingw_onexit+0x95>
  40180f:	b9 08 00 00 00       	mov    $0x8,%ecx
  401814:	e8 af 15 00 00       	callq  402dc8 <_lock>
  401819:	48 8b 0d 70 71 00 00 	mov    0x7170(%rip),%rcx        # 408990 <__onexitbegin>
  401820:	e8 ab ff ff ff       	callq  4017d0 <_decode_pointer>
  401825:	48 8b 0d 6c 71 00 00 	mov    0x716c(%rip),%rcx        # 408998 <__onexitend>
  40182c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401831:	e8 9a ff ff ff       	callq  4017d0 <_decode_pointer>
  401836:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40183b:	48 89 d9             	mov    %rbx,%rcx
  40183e:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
  401843:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401848:	e8 83 15 00 00       	callq  402dd0 <__dllonexit>
  40184d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401852:	48 89 c3             	mov    %rax,%rbx
  401855:	e8 86 ff ff ff       	callq  4017e0 <_encode_pointer>
  40185a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40185f:	48 89 05 2a 71 00 00 	mov    %rax,0x712a(%rip)        # 408990 <__onexitbegin>
  401866:	e8 75 ff ff ff       	callq  4017e0 <_encode_pointer>
  40186b:	b9 08 00 00 00       	mov    $0x8,%ecx
  401870:	48 89 05 21 71 00 00 	mov    %rax,0x7121(%rip)        # 408998 <__onexitend>
  401877:	e8 5c 15 00 00       	callq  402dd8 <_unlock>
  40187c:	48 89 d8             	mov    %rbx,%rax
  40187f:	48 83 c4 30          	add    $0x30,%rsp
  401883:	5b                   	pop    %rbx
  401884:	c3                   	retq   
  401885:	48 89 d9             	mov    %rbx,%rcx
  401888:	ff 15 ea 7a 00 00    	callq  *0x7aea(%rip)        # 409378 <__imp__onexit>
  40188e:	48 83 c4 30          	add    $0x30,%rsp
  401892:	5b                   	pop    %rbx
  401893:	c3                   	retq   
  401894:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40189b:	00 00 00 00 00 

00000000004018a0 <atexit>:
  4018a0:	48 83 ec 28          	sub    $0x28,%rsp
  4018a4:	e8 47 ff ff ff       	callq  4017f0 <mingw_onexit>
  4018a9:	48 85 c0             	test   %rax,%rax
  4018ac:	0f 94 c0             	sete   %al
  4018af:	0f b6 c0             	movzbl %al,%eax
  4018b2:	f7 d8                	neg    %eax
  4018b4:	48 83 c4 28          	add    $0x28,%rsp
  4018b8:	c3                   	retq   
  4018b9:	90                   	nop
  4018ba:	90                   	nop
  4018bb:	90                   	nop
  4018bc:	90                   	nop
  4018bd:	90                   	nop
  4018be:	90                   	nop
  4018bf:	90                   	nop

00000000004018c0 <__mingw_SEH_error_handler>:
  4018c0:	53                   	push   %rbx
  4018c1:	48 83 ec 30          	sub    $0x30,%rsp
  4018c5:	8b 01                	mov    (%rcx),%eax
  4018c7:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4018cc:	77 62                	ja     401930 <__mingw_SEH_error_handler+0x70>
  4018ce:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4018d3:	73 7e                	jae    401953 <__mingw_SEH_error_handler+0x93>
  4018d5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4018da:	0f 84 10 01 00 00    	je     4019f0 <__mingw_SEH_error_handler+0x130>
  4018e0:	0f 87 ea 00 00 00    	ja     4019d0 <__mingw_SEH_error_handler+0x110>
  4018e6:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4018eb:	0f 84 ff 00 00 00    	je     4019f0 <__mingw_SEH_error_handler+0x130>
  4018f1:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4018f6:	0f 85 e2 00 00 00    	jne    4019de <__mingw_SEH_error_handler+0x11e>
  4018fc:	31 d2                	xor    %edx,%edx
  4018fe:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401903:	e8 d8 14 00 00       	callq  402de0 <signal>
  401908:	48 83 f8 01          	cmp    $0x1,%rax
  40190c:	0f 84 34 01 00 00    	je     401a46 <__mingw_SEH_error_handler+0x186>
  401912:	48 85 c0             	test   %rax,%rax
  401915:	0f 84 f5 00 00 00    	je     401a10 <__mingw_SEH_error_handler+0x150>
  40191b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401920:	ff d0                	callq  *%rax
  401922:	31 c0                	xor    %eax,%eax
  401924:	48 83 c4 30          	add    $0x30,%rsp
  401928:	5b                   	pop    %rbx
  401929:	c3                   	retq   
  40192a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401930:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401935:	0f 84 c5 00 00 00    	je     401a00 <__mingw_SEH_error_handler+0x140>
  40193b:	77 53                	ja     401990 <__mingw_SEH_error_handler+0xd0>
  40193d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401942:	0f 84 a8 00 00 00    	je     4019f0 <__mingw_SEH_error_handler+0x130>
  401948:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  40194d:	0f 85 8b 00 00 00    	jne    4019de <__mingw_SEH_error_handler+0x11e>
  401953:	bb 01 00 00 00       	mov    $0x1,%ebx
  401958:	31 d2                	xor    %edx,%edx
  40195a:	b9 08 00 00 00       	mov    $0x8,%ecx
  40195f:	e8 7c 14 00 00       	callq  402de0 <signal>
  401964:	48 83 f8 01          	cmp    $0x1,%rax
  401968:	48 89 c2             	mov    %rax,%rdx
  40196b:	0f 84 af 00 00 00    	je     401a20 <__mingw_SEH_error_handler+0x160>
  401971:	48 85 d2             	test   %rdx,%rdx
  401974:	b8 01 00 00 00       	mov    $0x1,%eax
  401979:	74 a9                	je     401924 <__mingw_SEH_error_handler+0x64>
  40197b:	b9 08 00 00 00       	mov    $0x8,%ecx
  401980:	ff d2                	callq  *%rdx
  401982:	31 c0                	xor    %eax,%eax
  401984:	48 83 c4 30          	add    $0x30,%rsp
  401988:	5b                   	pop    %rbx
  401989:	c3                   	retq   
  40198a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401990:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401995:	74 59                	je     4019f0 <__mingw_SEH_error_handler+0x130>
  401997:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40199c:	75 40                	jne    4019de <__mingw_SEH_error_handler+0x11e>
  40199e:	31 d2                	xor    %edx,%edx
  4019a0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4019a5:	e8 36 14 00 00       	callq  402de0 <signal>
  4019aa:	48 83 f8 01          	cmp    $0x1,%rax
  4019ae:	0f 84 a8 00 00 00    	je     401a5c <__mingw_SEH_error_handler+0x19c>
  4019b4:	48 85 c0             	test   %rax,%rax
  4019b7:	74 57                	je     401a10 <__mingw_SEH_error_handler+0x150>
  4019b9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4019be:	ff d0                	callq  *%rax
  4019c0:	31 c0                	xor    %eax,%eax
  4019c2:	e9 5d ff ff ff       	jmpq   401924 <__mingw_SEH_error_handler+0x64>
  4019c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4019ce:	00 00 
  4019d0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4019d5:	74 c7                	je     40199e <__mingw_SEH_error_handler+0xde>
  4019d7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4019dc:	74 12                	je     4019f0 <__mingw_SEH_error_handler+0x130>
  4019de:	b8 01 00 00 00       	mov    $0x1,%eax
  4019e3:	48 83 c4 30          	add    $0x30,%rsp
  4019e7:	5b                   	pop    %rbx
  4019e8:	c3                   	retq   
  4019e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019f0:	31 c0                	xor    %eax,%eax
  4019f2:	48 83 c4 30          	add    $0x30,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	c3                   	retq   
  4019f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019ff:	00 
  401a00:	31 db                	xor    %ebx,%ebx
  401a02:	e9 51 ff ff ff       	jmpq   401958 <__mingw_SEH_error_handler+0x98>
  401a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a0e:	00 00 
  401a10:	b8 04 00 00 00       	mov    $0x4,%eax
  401a15:	48 83 c4 30          	add    $0x30,%rsp
  401a19:	5b                   	pop    %rbx
  401a1a:	c3                   	retq   
  401a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a20:	b9 08 00 00 00       	mov    $0x8,%ecx
  401a25:	e8 b6 13 00 00       	callq  402de0 <signal>
  401a2a:	31 c0                	xor    %eax,%eax
  401a2c:	85 db                	test   %ebx,%ebx
  401a2e:	0f 84 f0 fe ff ff    	je     401924 <__mingw_SEH_error_handler+0x64>
  401a34:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  401a38:	e8 13 0a 00 00       	callq  402450 <_fpreset>
  401a3d:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  401a41:	e9 de fe ff ff       	jmpq   401924 <__mingw_SEH_error_handler+0x64>
  401a46:	ba 01 00 00 00       	mov    $0x1,%edx
  401a4b:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401a50:	e8 8b 13 00 00       	callq  402de0 <signal>
  401a55:	31 c0                	xor    %eax,%eax
  401a57:	e9 c8 fe ff ff       	jmpq   401924 <__mingw_SEH_error_handler+0x64>
  401a5c:	ba 01 00 00 00       	mov    $0x1,%edx
  401a61:	b9 04 00 00 00       	mov    $0x4,%ecx
  401a66:	e8 75 13 00 00       	callq  402de0 <signal>
  401a6b:	31 c0                	xor    %eax,%eax
  401a6d:	e9 b2 fe ff ff       	jmpq   401924 <__mingw_SEH_error_handler+0x64>
  401a72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401a79:	1f 84 00 00 00 00 00 

0000000000401a80 <__mingw_init_ehandler>:
  401a80:	41 54                	push   %r12
  401a82:	55                   	push   %rbp
  401a83:	57                   	push   %rdi
  401a84:	56                   	push   %rsi
  401a85:	53                   	push   %rbx
  401a86:	48 83 ec 20          	sub    $0x20,%rsp
  401a8a:	e8 11 11 00 00       	callq  402ba0 <_GetPEImageBase>
  401a8f:	8b 15 13 66 00 00    	mov    0x6613(%rip),%edx        # 4080a8 <was_here.63467>
  401a95:	48 89 c5             	mov    %rax,%rbp
  401a98:	85 d2                	test   %edx,%edx
  401a9a:	89 d0                	mov    %edx,%eax
  401a9c:	75 25                	jne    401ac3 <__mingw_init_ehandler+0x43>
  401a9e:	48 85 ed             	test   %rbp,%rbp
  401aa1:	74 20                	je     401ac3 <__mingw_init_ehandler+0x43>
  401aa3:	48 8d 0d 86 35 00 00 	lea    0x3586(%rip),%rcx        # 405030 <.rdata>
  401aaa:	c7 05 f4 65 00 00 01 	movl   $0x1,0x65f4(%rip)        # 4080a8 <was_here.63467>
  401ab1:	00 00 00 
  401ab4:	e8 f7 0e 00 00       	callq  4029b0 <_FindPESectionByName>
  401ab9:	48 85 c0             	test   %rax,%rax
  401abc:	74 12                	je     401ad0 <__mingw_init_ehandler+0x50>
  401abe:	b8 01 00 00 00       	mov    $0x1,%eax
  401ac3:	48 83 c4 20          	add    $0x20,%rsp
  401ac7:	5b                   	pop    %rbx
  401ac8:	5e                   	pop    %rsi
  401ac9:	5f                   	pop    %rdi
  401aca:	5d                   	pop    %rbp
  401acb:	41 5c                	pop    %r12
  401acd:	c3                   	retq   
  401ace:	66 90                	xchg   %ax,%ax
  401ad0:	48 8d 1d e9 66 00 00 	lea    0x66e9(%rip),%rbx        # 4081c0 <emu_pdata>
  401ad7:	b9 30 00 00 00       	mov    $0x30,%ecx
  401adc:	48 8d 35 dd 65 00 00 	lea    0x65dd(%rip),%rsi        # 4080c0 <emu_xdata>
  401ae3:	48 89 df             	mov    %rbx,%rdi
  401ae6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401ae9:	4c 8d 25 d0 fd ff ff 	lea    -0x230(%rip),%r12        # 4018c0 <__mingw_SEH_error_handler>
  401af0:	48 89 f7             	mov    %rsi,%rdi
  401af3:	49 29 ec             	sub    %rbp,%r12
  401af6:	b1 20                	mov    $0x20,%cl
  401af8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401afb:	31 ff                	xor    %edi,%edi
  401afd:	eb 2f                	jmp    401b2e <__mingw_init_ehandler+0xae>
  401aff:	90                   	nop
  401b00:	c6 06 09             	movb   $0x9,(%rsi)
  401b03:	48 83 c7 01          	add    $0x1,%rdi
  401b07:	48 83 c3 0c          	add    $0xc,%rbx
  401b0b:	44 89 66 04          	mov    %r12d,0x4(%rsi)
  401b0f:	8b 42 0c             	mov    0xc(%rdx),%eax
  401b12:	89 43 f4             	mov    %eax,-0xc(%rbx)
  401b15:	03 42 08             	add    0x8(%rdx),%eax
  401b18:	89 43 f8             	mov    %eax,-0x8(%rbx)
  401b1b:	48 89 f0             	mov    %rsi,%rax
  401b1e:	48 83 c6 08          	add    $0x8,%rsi
  401b22:	48 29 e8             	sub    %rbp,%rax
  401b25:	89 43 fc             	mov    %eax,-0x4(%rbx)
  401b28:	48 83 ff 20          	cmp    $0x20,%rdi
  401b2c:	74 37                	je     401b65 <__mingw_init_ehandler+0xe5>
  401b2e:	48 89 f9             	mov    %rdi,%rcx
  401b31:	e8 ca 0f 00 00       	callq  402b00 <_FindPESectionExec>
  401b36:	48 85 c0             	test   %rax,%rax
  401b39:	48 89 c2             	mov    %rax,%rdx
  401b3c:	75 c2                	jne    401b00 <__mingw_init_ehandler+0x80>
  401b3e:	48 85 ff             	test   %rdi,%rdi
  401b41:	0f 84 77 ff ff ff    	je     401abe <__mingw_init_ehandler+0x3e>
  401b47:	89 fa                	mov    %edi,%edx
  401b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b50:	48 8d 0d 69 66 00 00 	lea    0x6669(%rip),%rcx        # 4081c0 <emu_pdata>
  401b57:	49 89 e8             	mov    %rbp,%r8
  401b5a:	ff 15 48 77 00 00    	callq  *0x7748(%rip)        # 4092a8 <__imp_RtlAddFunctionTable>
  401b60:	e9 59 ff ff ff       	jmpq   401abe <__mingw_init_ehandler+0x3e>
  401b65:	ba 20 00 00 00       	mov    $0x20,%edx
  401b6a:	eb e4                	jmp    401b50 <__mingw_init_ehandler+0xd0>
  401b6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b70 <_gnu_exception_handler>:
  401b70:	56                   	push   %rsi
  401b71:	53                   	push   %rbx
  401b72:	48 83 ec 28          	sub    $0x28,%rsp
  401b76:	48 8b 11             	mov    (%rcx),%rdx
  401b79:	48 89 cb             	mov    %rcx,%rbx
  401b7c:	8b 02                	mov    (%rdx),%eax
  401b7e:	89 c1                	mov    %eax,%ecx
  401b80:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  401b86:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  401b8c:	0f 84 d3 00 00 00    	je     401c65 <_gnu_exception_handler+0xf5>
  401b92:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401b97:	0f 87 83 00 00 00    	ja     401c20 <_gnu_exception_handler+0xb0>
  401b9d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401ba2:	0f 83 93 00 00 00    	jae    401c3b <_gnu_exception_handler+0xcb>
  401ba8:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401bad:	74 32                	je     401be1 <_gnu_exception_handler+0x71>
  401baf:	77 3f                	ja     401bf0 <_gnu_exception_handler+0x80>
  401bb1:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401bb6:	74 29                	je     401be1 <_gnu_exception_handler+0x71>
  401bb8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401bbd:	75 43                	jne    401c02 <_gnu_exception_handler+0x92>
  401bbf:	31 d2                	xor    %edx,%edx
  401bc1:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401bc6:	e8 15 12 00 00       	callq  402de0 <signal>
  401bcb:	48 83 f8 01          	cmp    $0x1,%rax
  401bcf:	0f 84 20 01 00 00    	je     401cf5 <_gnu_exception_handler+0x185>
  401bd5:	48 85 c0             	test   %rax,%rax
  401bd8:	74 28                	je     401c02 <_gnu_exception_handler+0x92>
  401bda:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401bdf:	ff d0                	callq  *%rax
  401be1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401be6:	48 83 c4 28          	add    $0x28,%rsp
  401bea:	5b                   	pop    %rbx
  401beb:	5e                   	pop    %rsi
  401bec:	c3                   	retq   
  401bed:	0f 1f 00             	nopl   (%rax)
  401bf0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  401bf5:	0f 84 8f 00 00 00    	je     401c8a <_gnu_exception_handler+0x11a>
  401bfb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  401c00:	74 df                	je     401be1 <_gnu_exception_handler+0x71>
  401c02:	48 8b 05 97 64 00 00 	mov    0x6497(%rip),%rax        # 4080a0 <__mingw_oldexcpt_handler>
  401c09:	48 85 c0             	test   %rax,%rax
  401c0c:	74 d8                	je     401be6 <_gnu_exception_handler+0x76>
  401c0e:	48 89 d9             	mov    %rbx,%rcx
  401c11:	48 83 c4 28          	add    $0x28,%rsp
  401c15:	5b                   	pop    %rbx
  401c16:	5e                   	pop    %rsi
  401c17:	48 ff e0             	rex.W jmpq *%rax
  401c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401c20:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401c25:	0f 84 95 00 00 00    	je     401cc0 <_gnu_exception_handler+0x150>
  401c2b:	77 47                	ja     401c74 <_gnu_exception_handler+0x104>
  401c2d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401c32:	74 ad                	je     401be1 <_gnu_exception_handler+0x71>
  401c34:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401c39:	75 c7                	jne    401c02 <_gnu_exception_handler+0x92>
  401c3b:	be 01 00 00 00       	mov    $0x1,%esi
  401c40:	31 d2                	xor    %edx,%edx
  401c42:	b9 08 00 00 00       	mov    $0x8,%ecx
  401c47:	e8 94 11 00 00       	callq  402de0 <signal>
  401c4c:	48 83 f8 01          	cmp    $0x1,%rax
  401c50:	74 7e                	je     401cd0 <_gnu_exception_handler+0x160>
  401c52:	48 85 c0             	test   %rax,%rax
  401c55:	74 ab                	je     401c02 <_gnu_exception_handler+0x92>
  401c57:	b9 08 00 00 00       	mov    $0x8,%ecx
  401c5c:	ff d0                	callq  *%rax
  401c5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c63:	eb 81                	jmp    401be6 <_gnu_exception_handler+0x76>
  401c65:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  401c69:	0f 85 23 ff ff ff    	jne    401b92 <_gnu_exception_handler+0x22>
  401c6f:	e9 6d ff ff ff       	jmpq   401be1 <_gnu_exception_handler+0x71>
  401c74:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401c79:	0f 84 62 ff ff ff    	je     401be1 <_gnu_exception_handler+0x71>
  401c7f:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401c84:	0f 85 78 ff ff ff    	jne    401c02 <_gnu_exception_handler+0x92>
  401c8a:	31 d2                	xor    %edx,%edx
  401c8c:	b9 04 00 00 00       	mov    $0x4,%ecx
  401c91:	e8 4a 11 00 00       	callq  402de0 <signal>
  401c96:	48 83 f8 01          	cmp    $0x1,%rax
  401c9a:	74 6d                	je     401d09 <_gnu_exception_handler+0x199>
  401c9c:	48 85 c0             	test   %rax,%rax
  401c9f:	0f 84 5d ff ff ff    	je     401c02 <_gnu_exception_handler+0x92>
  401ca5:	b9 04 00 00 00       	mov    $0x4,%ecx
  401caa:	ff d0                	callq  *%rax
  401cac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401cb1:	e9 30 ff ff ff       	jmpq   401be6 <_gnu_exception_handler+0x76>
  401cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401cbd:	00 00 00 
  401cc0:	31 f6                	xor    %esi,%esi
  401cc2:	e9 79 ff ff ff       	jmpq   401c40 <_gnu_exception_handler+0xd0>
  401cc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401cce:	00 00 
  401cd0:	ba 01 00 00 00       	mov    $0x1,%edx
  401cd5:	b9 08 00 00 00       	mov    $0x8,%ecx
  401cda:	e8 01 11 00 00       	callq  402de0 <signal>
  401cdf:	85 f6                	test   %esi,%esi
  401ce1:	0f 84 fa fe ff ff    	je     401be1 <_gnu_exception_handler+0x71>
  401ce7:	e8 64 07 00 00       	callq  402450 <_fpreset>
  401cec:	0f 1f 40 00          	nopl   0x0(%rax)
  401cf0:	e9 ec fe ff ff       	jmpq   401be1 <_gnu_exception_handler+0x71>
  401cf5:	ba 01 00 00 00       	mov    $0x1,%edx
  401cfa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401cff:	e8 dc 10 00 00       	callq  402de0 <signal>
  401d04:	e9 d8 fe ff ff       	jmpq   401be1 <_gnu_exception_handler+0x71>
  401d09:	ba 01 00 00 00       	mov    $0x1,%edx
  401d0e:	b9 04 00 00 00       	mov    $0x4,%ecx
  401d13:	e8 c8 10 00 00       	callq  402de0 <signal>
  401d18:	e9 c4 fe ff ff       	jmpq   401be1 <_gnu_exception_handler+0x71>
  401d1d:	90                   	nop
  401d1e:	90                   	nop
  401d1f:	90                   	nop

0000000000401d20 <_setargv>:
  401d20:	31 c0                	xor    %eax,%eax
  401d22:	c3                   	retq   
  401d23:	90                   	nop
  401d24:	90                   	nop
  401d25:	90                   	nop
  401d26:	90                   	nop
  401d27:	90                   	nop
  401d28:	90                   	nop
  401d29:	90                   	nop
  401d2a:	90                   	nop
  401d2b:	90                   	nop
  401d2c:	90                   	nop
  401d2d:	90                   	nop
  401d2e:	90                   	nop
  401d2f:	90                   	nop

0000000000401d30 <__mingw_raise_matherr>:
  401d30:	48 83 ec 58          	sub    $0x58,%rsp
  401d34:	48 8b 05 05 66 00 00 	mov    0x6605(%rip),%rax        # 408340 <stUserMathErr>
  401d3b:	48 85 c0             	test   %rax,%rax
  401d3e:	74 2c                	je     401d6c <__mingw_raise_matherr+0x3c>
  401d40:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401d47:	00 00 
  401d49:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401d4d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401d52:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401d57:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401d5d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401d63:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401d69:	ff d0                	callq  *%rax
  401d6b:	90                   	nop
  401d6c:	48 83 c4 58          	add    $0x58,%rsp
  401d70:	c3                   	retq   
  401d71:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401d78:	0f 1f 84 00 00 00 00 
  401d7f:	00 

0000000000401d80 <__mingw_setusermatherr>:
  401d80:	48 89 0d b9 65 00 00 	mov    %rcx,0x65b9(%rip)        # 408340 <stUserMathErr>
  401d87:	e9 5c 10 00 00       	jmpq   402de8 <__setusermatherr>
  401d8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401d90 <_matherr>:
  401d90:	56                   	push   %rsi
  401d91:	53                   	push   %rbx
  401d92:	48 83 ec 78          	sub    $0x78,%rsp
  401d96:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401d9b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401da0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401da6:	83 39 06             	cmpl   $0x6,(%rcx)
  401da9:	0f 87 d1 00 00 00    	ja     401e80 <_matherr+0xf0>
  401daf:	8b 11                	mov    (%rcx),%edx
  401db1:	48 8d 05 ac 33 00 00 	lea    0x33ac(%rip),%rax        # 405164 <.rdata+0x124>
  401db8:	48 63 14 90          	movslq (%rax,%rdx,4),%rdx
  401dbc:	48 01 d0             	add    %rdx,%rax
  401dbf:	ff e0                	jmpq   *%rax
  401dc1:	48 8d 1d 97 32 00 00 	lea    0x3297(%rip),%rbx        # 40505f <.rdata+0x1f>
  401dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401dcf:	00 
  401dd0:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401dd4:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401dda:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401ddf:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401de4:	e8 07 10 00 00       	callq  402df0 <__iob_func>
  401de9:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401df0:	49 89 f1             	mov    %rsi,%r9
  401df3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401df9:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401dfd:	49 89 d8             	mov    %rbx,%r8
  401e00:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401e06:	48 8d 15 2b 33 00 00 	lea    0x332b(%rip),%rdx        # 405138 <.rdata+0xf8>
  401e0d:	e8 e6 0f 00 00       	callq  402df8 <fprintf>
  401e12:	90                   	nop
  401e13:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401e18:	31 c0                	xor    %eax,%eax
  401e1a:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401e1f:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401e25:	48 83 c4 78          	add    $0x78,%rsp
  401e29:	5b                   	pop    %rbx
  401e2a:	5e                   	pop    %rsi
  401e2b:	c3                   	retq   
  401e2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e30:	48 8d 1d 49 32 00 00 	lea    0x3249(%rip),%rbx        # 405080 <.rdata+0x40>
  401e37:	eb 97                	jmp    401dd0 <_matherr+0x40>
  401e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401e40:	48 8d 1d a9 32 00 00 	lea    0x32a9(%rip),%rbx        # 4050f0 <.rdata+0xb0>
  401e47:	eb 87                	jmp    401dd0 <_matherr+0x40>
  401e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401e50:	48 8d 1d 71 32 00 00 	lea    0x3271(%rip),%rbx        # 4050c8 <.rdata+0x88>
  401e57:	e9 74 ff ff ff       	jmpq   401dd0 <_matherr+0x40>
  401e5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e60:	48 8d 1d 39 32 00 00 	lea    0x3239(%rip),%rbx        # 4050a0 <.rdata+0x60>
  401e67:	e9 64 ff ff ff       	jmpq   401dd0 <_matherr+0x40>
  401e6c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e70:	48 8d 1d c9 31 00 00 	lea    0x31c9(%rip),%rbx        # 405040 <.rdata>
  401e77:	e9 54 ff ff ff       	jmpq   401dd0 <_matherr+0x40>
  401e7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e80:	48 8d 1d 9f 32 00 00 	lea    0x329f(%rip),%rbx        # 405126 <.rdata+0xe6>
  401e87:	e9 44 ff ff ff       	jmpq   401dd0 <_matherr+0x40>
  401e8c:	90                   	nop
  401e8d:	90                   	nop
  401e8e:	90                   	nop
  401e8f:	90                   	nop

0000000000401e90 <__report_error>:
  401e90:	56                   	push   %rsi
  401e91:	53                   	push   %rbx
  401e92:	48 83 ec 38          	sub    $0x38,%rsp
  401e96:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401e9b:	48 89 cb             	mov    %rcx,%rbx
  401e9e:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401ea3:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401ea8:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401ead:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401eb2:	e8 39 0f 00 00       	callq  402df0 <__iob_func>
  401eb7:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401ebd:	ba 01 00 00 00       	mov    $0x1,%edx
  401ec2:	4c 8d 48 60          	lea    0x60(%rax),%r9
  401ec6:	48 8d 0d b3 32 00 00 	lea    0x32b3(%rip),%rcx        # 405180 <.rdata>
  401ecd:	e8 2e 0f 00 00       	callq  402e00 <fwrite>
  401ed2:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401ed7:	e8 14 0f 00 00       	callq  402df0 <__iob_func>
  401edc:	48 89 da             	mov    %rbx,%rdx
  401edf:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401ee3:	49 89 f0             	mov    %rsi,%r8
  401ee6:	e8 1d 0f 00 00       	callq  402e08 <vfprintf>
  401eeb:	e8 20 0f 00 00       	callq  402e10 <abort>
  401ef0:	90                   	nop
  401ef1:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401ef8:	0f 1f 84 00 00 00 00 
  401eff:	00 

0000000000401f00 <__write_memory.part.0>:
  401f00:	41 56                	push   %r14
  401f02:	41 55                	push   %r13
  401f04:	41 54                	push   %r12
  401f06:	55                   	push   %rbp
  401f07:	57                   	push   %rdi
  401f08:	56                   	push   %rsi
  401f09:	53                   	push   %rbx
  401f0a:	48 83 ec 60          	sub    $0x60,%rsp
  401f0e:	48 89 ce             	mov    %rcx,%rsi
  401f11:	8b 0d 3d 64 00 00    	mov    0x643d(%rip),%ecx        # 408354 <maxSections>
  401f17:	48 89 d7             	mov    %rdx,%rdi
  401f1a:	4c 89 c5             	mov    %r8,%rbp
  401f1d:	85 c9                	test   %ecx,%ecx
  401f1f:	0f 8e c0 01 00 00    	jle    4020e5 <__write_memory.part.0+0x1e5>
  401f25:	48 8b 05 2c 64 00 00 	mov    0x642c(%rip),%rax        # 408358 <the_secs>
  401f2c:	31 db                	xor    %ebx,%ebx
  401f2e:	66 90                	xchg   %ax,%ax
  401f30:	4c 8b 48 08          	mov    0x8(%rax),%r9
  401f34:	4c 39 ce             	cmp    %r9,%rsi
  401f37:	72 13                	jb     401f4c <__write_memory.part.0+0x4c>
  401f39:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401f3d:	8b 52 08             	mov    0x8(%rdx),%edx
  401f40:	49 01 d1             	add    %rdx,%r9
  401f43:	4c 39 ce             	cmp    %r9,%rsi
  401f46:	0f 82 d4 00 00 00    	jb     402020 <__write_memory.part.0+0x120>
  401f4c:	83 c3 01             	add    $0x1,%ebx
  401f4f:	48 83 c0 18          	add    $0x18,%rax
  401f53:	39 cb                	cmp    %ecx,%ebx
  401f55:	75 d9                	jne    401f30 <__write_memory.part.0+0x30>
  401f57:	48 89 f1             	mov    %rsi,%rcx
  401f5a:	e8 01 0b 00 00       	callq  402a60 <__mingw_GetSectionForAddress>
  401f5f:	48 85 c0             	test   %rax,%rax
  401f62:	49 89 c4             	mov    %rax,%r12
  401f65:	0f 84 9e 01 00 00    	je     402109 <__write_memory.part.0+0x209>
  401f6b:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  401f70:	48 63 db             	movslq %ebx,%rbx
  401f73:	4c 8d 34 5b          	lea    (%rbx,%rbx,2),%r14
  401f77:	49 c1 e6 03          	shl    $0x3,%r14
  401f7b:	4c 89 f3             	mov    %r14,%rbx
  401f7e:	48 03 1d d3 63 00 00 	add    0x63d3(%rip),%rbx        # 408358 <the_secs>
  401f85:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401f89:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
  401f8f:	e8 0c 0c 00 00       	callq  402ba0 <_GetPEImageBase>
  401f94:	41 8b 54 24 0c       	mov    0xc(%r12),%edx
  401f99:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401f9f:	48 01 d0             	add    %rdx,%rax
  401fa2:	4c 89 ea             	mov    %r13,%rdx
  401fa5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401fa9:	48 8b 05 a8 63 00 00 	mov    0x63a8(%rip),%rax        # 408358 <the_secs>
  401fb0:	48 8b 1d 41 73 00 00 	mov    0x7341(%rip),%rbx        # 4092f8 <__imp_VirtualQuery>
  401fb7:	4a 8b 4c 30 08       	mov    0x8(%rax,%r14,1),%rcx
  401fbc:	ff d3                	callq  *%rbx
  401fbe:	48 85 c0             	test   %rax,%rax
  401fc1:	0f 84 25 01 00 00    	je     4020ec <__write_memory.part.0+0x1ec>
  401fc7:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401fcb:	83 f8 04             	cmp    $0x4,%eax
  401fce:	0f 85 cc 00 00 00    	jne    4020a0 <__write_memory.part.0+0x1a0>
  401fd4:	83 05 79 63 00 00 01 	addl   $0x1,0x6379(%rip)        # 408354 <maxSections>
  401fdb:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401fe1:	4c 89 ea             	mov    %r13,%rdx
  401fe4:	48 89 f1             	mov    %rsi,%rcx
  401fe7:	ff d3                	callq  *%rbx
  401fe9:	48 85 c0             	test   %rax,%rax
  401fec:	0f 84 26 01 00 00    	je     402118 <__write_memory.part.0+0x218>
  401ff2:	8b 44 24 54          	mov    0x54(%rsp),%eax
  401ff6:	83 f8 04             	cmp    $0x4,%eax
  401ff9:	75 35                	jne    402030 <__write_memory.part.0+0x130>
  401ffb:	49 89 e8             	mov    %rbp,%r8
  401ffe:	48 89 fa             	mov    %rdi,%rdx
  402001:	48 89 f1             	mov    %rsi,%rcx
  402004:	48 83 c4 60          	add    $0x60,%rsp
  402008:	5b                   	pop    %rbx
  402009:	5e                   	pop    %rsi
  40200a:	5f                   	pop    %rdi
  40200b:	5d                   	pop    %rbp
  40200c:	41 5c                	pop    %r12
  40200e:	41 5d                	pop    %r13
  402010:	41 5e                	pop    %r14
  402012:	e9 79 0d 00 00       	jmpq   402d90 <memcpy>
  402017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40201e:	00 00 
  402020:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  402025:	48 8b 1d cc 72 00 00 	mov    0x72cc(%rip),%rbx        # 4092f8 <__imp_VirtualQuery>
  40202c:	eb ad                	jmp    401fdb <__write_memory.part.0+0xdb>
  40202e:	66 90                	xchg   %ax,%ax
  402030:	83 f8 40             	cmp    $0x40,%eax
  402033:	74 c6                	je     401ffb <__write_memory.part.0+0xfb>
  402035:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  40203a:	4c 8d 64 24 2c       	lea    0x2c(%rsp),%r12
  40203f:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  402045:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40204a:	4d 89 e1             	mov    %r12,%r9
  40204d:	48 8b 1d 9c 72 00 00 	mov    0x729c(%rip),%rbx        # 4092f0 <__imp_VirtualProtect>
  402054:	ff d3                	callq  *%rbx
  402056:	49 89 e8             	mov    %rbp,%r8
  402059:	48 89 fa             	mov    %rdi,%rdx
  40205c:	48 89 f1             	mov    %rsi,%rcx
  40205f:	e8 2c 0d 00 00       	callq  402d90 <memcpy>
  402064:	8b 44 24 54          	mov    0x54(%rsp),%eax
  402068:	83 f8 40             	cmp    $0x40,%eax
  40206b:	74 1a                	je     402087 <__write_memory.part.0+0x187>
  40206d:	83 f8 04             	cmp    $0x4,%eax
  402070:	74 15                	je     402087 <__write_memory.part.0+0x187>
  402072:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402077:	4d 89 e1             	mov    %r12,%r9
  40207a:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  40207f:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  402084:	ff d3                	callq  *%rbx
  402086:	90                   	nop
  402087:	48 83 c4 60          	add    $0x60,%rsp
  40208b:	5b                   	pop    %rbx
  40208c:	5e                   	pop    %rsi
  40208d:	5f                   	pop    %rdi
  40208e:	5d                   	pop    %rbp
  40208f:	41 5c                	pop    %r12
  402091:	41 5d                	pop    %r13
  402093:	41 5e                	pop    %r14
  402095:	c3                   	retq   
  402096:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40209d:	00 00 00 
  4020a0:	83 f8 40             	cmp    $0x40,%eax
  4020a3:	0f 84 2b ff ff ff    	je     401fd4 <__write_memory.part.0+0xd4>
  4020a9:	4c 03 35 a8 62 00 00 	add    0x62a8(%rip),%r14        # 408358 <the_secs>
  4020b0:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  4020b6:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  4020bb:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  4020c0:	4d 89 f1             	mov    %r14,%r9
  4020c3:	ff 15 27 72 00 00    	callq  *0x7227(%rip)        # 4092f0 <__imp_VirtualProtect>
  4020c9:	85 c0                	test   %eax,%eax
  4020cb:	0f 85 03 ff ff ff    	jne    401fd4 <__write_memory.part.0+0xd4>
  4020d1:	ff 15 99 71 00 00    	callq  *0x7199(%rip)        # 409270 <__imp_GetLastError>
  4020d7:	48 8d 0d 1a 31 00 00 	lea    0x311a(%rip),%rcx        # 4051f8 <.rdata+0x78>
  4020de:	89 c2                	mov    %eax,%edx
  4020e0:	e8 ab fd ff ff       	callq  401e90 <__report_error>
  4020e5:	31 db                	xor    %ebx,%ebx
  4020e7:	e9 6b fe ff ff       	jmpq   401f57 <__write_memory.part.0+0x57>
  4020ec:	48 8b 05 65 62 00 00 	mov    0x6265(%rip),%rax        # 408358 <the_secs>
  4020f3:	48 8d 0d c6 30 00 00 	lea    0x30c6(%rip),%rcx        # 4051c0 <.rdata+0x40>
  4020fa:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  4020ff:	4e 8b 44 30 08       	mov    0x8(%rax,%r14,1),%r8
  402104:	e8 87 fd ff ff       	callq  401e90 <__report_error>
  402109:	48 8d 0d 90 30 00 00 	lea    0x3090(%rip),%rcx        # 4051a0 <.rdata+0x20>
  402110:	48 89 f2             	mov    %rsi,%rdx
  402113:	e8 78 fd ff ff       	callq  401e90 <__report_error>
  402118:	48 8d 0d a1 30 00 00 	lea    0x30a1(%rip),%rcx        # 4051c0 <.rdata+0x40>
  40211f:	49 89 f0             	mov    %rsi,%r8
  402122:	ba 30 00 00 00       	mov    $0x30,%edx
  402127:	e8 64 fd ff ff       	callq  401e90 <__report_error>
  40212c:	90                   	nop
  40212d:	0f 1f 00             	nopl   (%rax)

0000000000402130 <_pei386_runtime_relocator>:
  402130:	55                   	push   %rbp
  402131:	41 56                	push   %r14
  402133:	41 55                	push   %r13
  402135:	41 54                	push   %r12
  402137:	57                   	push   %rdi
  402138:	56                   	push   %rsi
  402139:	53                   	push   %rbx
  40213a:	48 89 e5             	mov    %rsp,%rbp
  40213d:	48 83 ec 60          	sub    $0x60,%rsp
  402141:	8b 1d 09 62 00 00    	mov    0x6209(%rip),%ebx        # 408350 <was_init.63638>
  402147:	85 db                	test   %ebx,%ebx
  402149:	74 15                	je     402160 <_pei386_runtime_relocator+0x30>
  40214b:	48 89 ec             	mov    %rbp,%rsp
  40214e:	5b                   	pop    %rbx
  40214f:	5e                   	pop    %rsi
  402150:	5f                   	pop    %rdi
  402151:	41 5c                	pop    %r12
  402153:	41 5d                	pop    %r13
  402155:	41 5e                	pop    %r14
  402157:	5d                   	pop    %rbp
  402158:	c3                   	retq   
  402159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402160:	c7 05 e6 61 00 00 01 	movl   $0x1,0x61e6(%rip)        # 408350 <was_init.63638>
  402167:	00 00 00 
  40216a:	e8 41 09 00 00       	callq  402ab0 <__mingw_GetSectionCount>
  40216f:	48 98                	cltq   
  402171:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  402175:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40217c:	00 
  40217d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402181:	e8 7a 0b 00 00       	callq  402d00 <___chkstk_ms>
  402186:	48 8d 35 0b 38 00 00 	lea    0x380b(%rip),%rsi        # 405998 <__RUNTIME_PSEUDO_RELOC_LIST_END__>
  40218d:	c7 05 bd 61 00 00 00 	movl   $0x0,0x61bd(%rip)        # 408354 <maxSections>
  402194:	00 00 00 
  402197:	48 8d 1d e2 37 00 00 	lea    0x37e2(%rip),%rbx        # 405980 <__RUNTIME_PSEUDO_RELOC_LIST__>
  40219e:	48 29 c4             	sub    %rax,%rsp
  4021a1:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4021a6:	48 89 05 ab 61 00 00 	mov    %rax,0x61ab(%rip)        # 408358 <the_secs>
  4021ad:	48 89 f0             	mov    %rsi,%rax
  4021b0:	48 29 d8             	sub    %rbx,%rax
  4021b3:	48 83 f8 07          	cmp    $0x7,%rax
  4021b7:	7e 92                	jle    40214b <_pei386_runtime_relocator+0x1b>
  4021b9:	48 83 f8 0b          	cmp    $0xb,%rax
  4021bd:	7e 33                	jle    4021f2 <_pei386_runtime_relocator+0xc2>
  4021bf:	44 8b 1d ba 37 00 00 	mov    0x37ba(%rip),%r11d        # 405980 <__RUNTIME_PSEUDO_RELOC_LIST__>
  4021c6:	45 85 db             	test   %r11d,%r11d
  4021c9:	0f 85 51 01 00 00    	jne    402320 <_pei386_runtime_relocator+0x1f0>
  4021cf:	44 8b 15 ae 37 00 00 	mov    0x37ae(%rip),%r10d        # 405984 <__RUNTIME_PSEUDO_RELOC_LIST__+0x4>
  4021d6:	45 85 d2             	test   %r10d,%r10d
  4021d9:	0f 85 41 01 00 00    	jne    402320 <_pei386_runtime_relocator+0x1f0>
  4021df:	44 8b 0d a2 37 00 00 	mov    0x37a2(%rip),%r9d        # 405988 <__RUNTIME_PSEUDO_RELOC_LIST__+0x8>
  4021e6:	45 85 c9             	test   %r9d,%r9d
  4021e9:	75 1e                	jne    402209 <_pei386_runtime_relocator+0xd9>
  4021eb:	48 8d 1d 9a 37 00 00 	lea    0x379a(%rip),%rbx        # 40598c <__RUNTIME_PSEUDO_RELOC_LIST__+0xc>
  4021f2:	44 8b 03             	mov    (%rbx),%r8d
  4021f5:	45 85 c0             	test   %r8d,%r8d
  4021f8:	0f 85 22 01 00 00    	jne    402320 <_pei386_runtime_relocator+0x1f0>
  4021fe:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402201:	85 c9                	test   %ecx,%ecx
  402203:	0f 85 17 01 00 00    	jne    402320 <_pei386_runtime_relocator+0x1f0>
  402209:	8b 53 08             	mov    0x8(%rbx),%edx
  40220c:	83 fa 01             	cmp    $0x1,%edx
  40220f:	0f 85 28 02 00 00    	jne    40243d <_pei386_runtime_relocator+0x30d>
  402215:	48 83 c3 0c          	add    $0xc,%rbx
  402219:	48 39 f3             	cmp    %rsi,%rbx
  40221c:	0f 83 29 ff ff ff    	jae    40214b <_pei386_runtime_relocator+0x1b>
  402222:	4c 8d 35 d7 dd ff ff 	lea    -0x2229(%rip),%r14        # 400000 <__ImageBase>
  402229:	49 bd 00 00 00 00 ff 	movabs $0xffffffff00000000,%r13
  402230:	ff ff ff 
  402233:	4c 8d 65 d0          	lea    -0x30(%rbp),%r12
  402237:	8b 4b 04             	mov    0x4(%rbx),%ecx
  40223a:	44 8b 03             	mov    (%rbx),%r8d
  40223d:	0f b6 43 08          	movzbl 0x8(%rbx),%eax
  402241:	4c 01 f1             	add    %r14,%rcx
  402244:	4d 01 f0             	add    %r14,%r8
  402247:	83 f8 10             	cmp    $0x10,%eax
  40224a:	49 8b 10             	mov    (%r8),%rdx
  40224d:	0f 84 49 01 00 00    	je     40239c <_pei386_runtime_relocator+0x26c>
  402253:	0f 86 05 01 00 00    	jbe    40235e <_pei386_runtime_relocator+0x22e>
  402259:	83 f8 20             	cmp    $0x20,%eax
  40225c:	0f 84 8a 01 00 00    	je     4023ec <_pei386_runtime_relocator+0x2bc>
  402262:	83 f8 40             	cmp    $0x40,%eax
  402265:	0f 85 6b 01 00 00    	jne    4023d6 <_pei386_runtime_relocator+0x2a6>
  40226b:	4c 29 c2             	sub    %r8,%rdx
  40226e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402274:	4c 89 e7             	mov    %r12,%rdi
  402277:	48 03 11             	add    (%rcx),%rdx
  40227a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40227e:	4c 89 e2             	mov    %r12,%rdx
  402281:	e8 7a fc ff ff       	callq  401f00 <__write_memory.part.0>
  402286:	48 83 c3 0c          	add    $0xc,%rbx
  40228a:	48 39 f3             	cmp    %rsi,%rbx
  40228d:	72 a8                	jb     402237 <_pei386_runtime_relocator+0x107>
  40228f:	90                   	nop
  402290:	8b 05 be 60 00 00    	mov    0x60be(%rip),%eax        # 408354 <maxSections>
  402296:	31 db                	xor    %ebx,%ebx
  402298:	31 f6                	xor    %esi,%esi
  40229a:	85 c0                	test   %eax,%eax
  40229c:	0f 8e a9 fe ff ff    	jle    40214b <_pei386_runtime_relocator+0x1b>
  4022a2:	4c 8b 35 4f 70 00 00 	mov    0x704f(%rip),%r14        # 4092f8 <__imp_VirtualQuery>
  4022a9:	4c 8d 6d cc          	lea    -0x34(%rbp),%r13
  4022ad:	4c 8b 25 3c 70 00 00 	mov    0x703c(%rip),%r12        # 4092f0 <__imp_VirtualProtect>
  4022b4:	eb 1d                	jmp    4022d3 <_pei386_runtime_relocator+0x1a3>
  4022b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4022bd:	00 00 00 
  4022c0:	83 c6 01             	add    $0x1,%esi
  4022c3:	48 83 c3 18          	add    $0x18,%rbx
  4022c7:	3b 35 87 60 00 00    	cmp    0x6087(%rip),%esi        # 408354 <maxSections>
  4022cd:	0f 8d 78 fe ff ff    	jge    40214b <_pei386_runtime_relocator+0x1b>
  4022d3:	48 89 d8             	mov    %rbx,%rax
  4022d6:	48 03 05 7b 60 00 00 	add    0x607b(%rip),%rax        # 408358 <the_secs>
  4022dd:	8b 10                	mov    (%rax),%edx
  4022df:	85 d2                	test   %edx,%edx
  4022e1:	74 dd                	je     4022c0 <_pei386_runtime_relocator+0x190>
  4022e3:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4022e7:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  4022ed:	48 89 fa             	mov    %rdi,%rdx
  4022f0:	41 ff d6             	callq  *%r14
  4022f3:	48 85 c0             	test   %rax,%rax
  4022f6:	0f 84 23 01 00 00    	je     40241f <_pei386_runtime_relocator+0x2ef>
  4022fc:	48 8b 05 55 60 00 00 	mov    0x6055(%rip),%rax        # 408358 <the_secs>
  402303:	4d 89 e9             	mov    %r13,%r9
  402306:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40230a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40230e:	44 8b 04 18          	mov    (%rax,%rbx,1),%r8d
  402312:	41 ff d4             	callq  *%r12
  402315:	eb a9                	jmp    4022c0 <_pei386_runtime_relocator+0x190>
  402317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40231e:	00 00 
  402320:	48 39 f3             	cmp    %rsi,%rbx
  402323:	0f 83 22 fe ff ff    	jae    40214b <_pei386_runtime_relocator+0x1b>
  402329:	4c 8d 25 d0 dc ff ff 	lea    -0x2330(%rip),%r12        # 400000 <__ImageBase>
  402330:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  402334:	8b 4b 04             	mov    0x4(%rbx),%ecx
  402337:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40233d:	48 89 fa             	mov    %rdi,%rdx
  402340:	48 83 c3 08          	add    $0x8,%rbx
  402344:	4c 01 e1             	add    %r12,%rcx
  402347:	8b 01                	mov    (%rcx),%eax
  402349:	03 43 f8             	add    -0x8(%rbx),%eax
  40234c:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40234f:	e8 ac fb ff ff       	callq  401f00 <__write_memory.part.0>
  402354:	48 39 f3             	cmp    %rsi,%rbx
  402357:	72 db                	jb     402334 <_pei386_runtime_relocator+0x204>
  402359:	e9 32 ff ff ff       	jmpq   402290 <_pei386_runtime_relocator+0x160>
  40235e:	83 f8 08             	cmp    $0x8,%eax
  402361:	75 73                	jne    4023d6 <_pei386_runtime_relocator+0x2a6>
  402363:	44 0f b6 09          	movzbl (%rcx),%r9d
  402367:	4c 89 e7             	mov    %r12,%rdi
  40236a:	41 0f b6 c1          	movzbl %r9b,%eax
  40236e:	49 89 c2             	mov    %rax,%r10
  402371:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  402378:	45 84 c9             	test   %r9b,%r9b
  40237b:	49 0f 48 c2          	cmovs  %r10,%rax
  40237f:	4c 29 c0             	sub    %r8,%rax
  402382:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402388:	48 01 d0             	add    %rdx,%rax
  40238b:	4c 89 e2             	mov    %r12,%rdx
  40238e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  402392:	e8 69 fb ff ff       	callq  401f00 <__write_memory.part.0>
  402397:	e9 ea fe ff ff       	jmpq   402286 <_pei386_runtime_relocator+0x156>
  40239c:	44 0f b7 09          	movzwl (%rcx),%r9d
  4023a0:	4c 89 e7             	mov    %r12,%rdi
  4023a3:	41 0f b7 c1          	movzwl %r9w,%eax
  4023a7:	49 89 c2             	mov    %rax,%r10
  4023aa:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  4023b1:	66 45 85 c9          	test   %r9w,%r9w
  4023b5:	49 0f 48 c2          	cmovs  %r10,%rax
  4023b9:	4c 29 c0             	sub    %r8,%rax
  4023bc:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  4023c2:	48 01 d0             	add    %rdx,%rax
  4023c5:	4c 89 e2             	mov    %r12,%rdx
  4023c8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4023cc:	e8 2f fb ff ff       	callq  401f00 <__write_memory.part.0>
  4023d1:	e9 b0 fe ff ff       	jmpq   402286 <_pei386_runtime_relocator+0x156>
  4023d6:	89 c2                	mov    %eax,%edx
  4023d8:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  4023df:	00 
  4023e0:	48 8d 0d 71 2e 00 00 	lea    0x2e71(%rip),%rcx        # 405258 <.rdata+0xd8>
  4023e7:	e8 a4 fa ff ff       	callq  401e90 <__report_error>
  4023ec:	44 8b 09             	mov    (%rcx),%r9d
  4023ef:	4c 89 e7             	mov    %r12,%rdi
  4023f2:	44 89 c8             	mov    %r9d,%eax
  4023f5:	49 89 c2             	mov    %rax,%r10
  4023f8:	4d 09 ea             	or     %r13,%r10
  4023fb:	45 85 c9             	test   %r9d,%r9d
  4023fe:	49 0f 48 c2          	cmovs  %r10,%rax
  402402:	4c 29 c0             	sub    %r8,%rax
  402405:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40240b:	48 01 d0             	add    %rdx,%rax
  40240e:	4c 89 e2             	mov    %r12,%rdx
  402411:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  402415:	e8 e6 fa ff ff       	callq  401f00 <__write_memory.part.0>
  40241a:	e9 67 fe ff ff       	jmpq   402286 <_pei386_runtime_relocator+0x156>
  40241f:	48 03 1d 32 5f 00 00 	add    0x5f32(%rip),%rbx        # 408358 <the_secs>
  402426:	48 8d 0d 93 2d 00 00 	lea    0x2d93(%rip),%rcx        # 4051c0 <.rdata+0x40>
  40242d:	48 8b 43 10          	mov    0x10(%rbx),%rax
  402431:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  402435:	8b 50 08             	mov    0x8(%rax),%edx
  402438:	e8 53 fa ff ff       	callq  401e90 <__report_error>
  40243d:	48 8d 0d dc 2d 00 00 	lea    0x2ddc(%rip),%rcx        # 405220 <.rdata+0xa0>
  402444:	e8 47 fa ff ff       	callq  401e90 <__report_error>
  402449:	90                   	nop
  40244a:	90                   	nop
  40244b:	90                   	nop
  40244c:	90                   	nop
  40244d:	90                   	nop
  40244e:	90                   	nop
  40244f:	90                   	nop

0000000000402450 <_fpreset>:
  402450:	db e3                	fninit 
  402452:	c3                   	retq   
  402453:	90                   	nop
  402454:	90                   	nop
  402455:	90                   	nop
  402456:	90                   	nop
  402457:	90                   	nop
  402458:	90                   	nop
  402459:	90                   	nop
  40245a:	90                   	nop
  40245b:	90                   	nop
  40245c:	90                   	nop
  40245d:	90                   	nop
  40245e:	90                   	nop
  40245f:	90                   	nop

0000000000402460 <__do_global_dtors>:
  402460:	48 83 ec 28          	sub    $0x28,%rsp
  402464:	48 8b 05 d5 1b 00 00 	mov    0x1bd5(%rip),%rax        # 404040 <p.62361>
  40246b:	48 8b 00             	mov    (%rax),%rax
  40246e:	48 85 c0             	test   %rax,%rax
  402471:	74 1d                	je     402490 <__do_global_dtors+0x30>
  402473:	ff d0                	callq  *%rax
  402475:	48 8b 05 c4 1b 00 00 	mov    0x1bc4(%rip),%rax        # 404040 <p.62361>
  40247c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402480:	48 8b 40 08          	mov    0x8(%rax),%rax
  402484:	48 89 15 b5 1b 00 00 	mov    %rdx,0x1bb5(%rip)        # 404040 <p.62361>
  40248b:	48 85 c0             	test   %rax,%rax
  40248e:	75 e3                	jne    402473 <__do_global_dtors+0x13>
  402490:	48 83 c4 28          	add    $0x28,%rsp
  402494:	c3                   	retq   
  402495:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40249c:	00 00 00 00 

00000000004024a0 <__do_global_ctors>:
  4024a0:	56                   	push   %rsi
  4024a1:	53                   	push   %rbx
  4024a2:	48 83 ec 28          	sub    $0x28,%rsp
  4024a6:	48 8b 05 a3 0b 00 00 	mov    0xba3(%rip),%rax        # 403050 <__CTOR_LIST__>
  4024ad:	83 f8 ff             	cmp    $0xffffffff,%eax
  4024b0:	89 c3                	mov    %eax,%ebx
  4024b2:	74 2c                	je     4024e0 <__do_global_ctors+0x40>
  4024b4:	48 8d 35 95 0b 00 00 	lea    0xb95(%rip),%rsi        # 403050 <__CTOR_LIST__>
  4024bb:	85 db                	test   %ebx,%ebx
  4024bd:	74 0b                	je     4024ca <__do_global_ctors+0x2a>
  4024bf:	90                   	nop
  4024c0:	89 d8                	mov    %ebx,%eax
  4024c2:	ff 14 c6             	callq  *(%rsi,%rax,8)
  4024c5:	83 eb 01             	sub    $0x1,%ebx
  4024c8:	75 f6                	jne    4024c0 <__do_global_ctors+0x20>
  4024ca:	48 8d 0d 8f ff ff ff 	lea    -0x71(%rip),%rcx        # 402460 <__do_global_dtors>
  4024d1:	48 83 c4 28          	add    $0x28,%rsp
  4024d5:	5b                   	pop    %rbx
  4024d6:	5e                   	pop    %rsi
  4024d7:	e9 c4 f3 ff ff       	jmpq   4018a0 <atexit>
  4024dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4024e0:	48 8d 35 69 0b 00 00 	lea    0xb69(%rip),%rsi        # 403050 <__CTOR_LIST__>
  4024e7:	31 db                	xor    %ebx,%ebx
  4024e9:	eb 07                	jmp    4024f2 <__do_global_ctors+0x52>
  4024eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024f0:	89 c3                	mov    %eax,%ebx
  4024f2:	8d 43 01             	lea    0x1(%rbx),%eax
  4024f5:	89 c2                	mov    %eax,%edx
  4024f7:	48 83 3c d6 00       	cmpq   $0x0,(%rsi,%rdx,8)
  4024fc:	75 f2                	jne    4024f0 <__do_global_ctors+0x50>
  4024fe:	eb b4                	jmp    4024b4 <__do_global_ctors+0x14>

0000000000402500 <__main>:
  402500:	8b 05 5a 5e 00 00    	mov    0x5e5a(%rip),%eax        # 408360 <initialized>
  402506:	85 c0                	test   %eax,%eax
  402508:	74 06                	je     402510 <__main+0x10>
  40250a:	f3 c3                	repz retq 
  40250c:	0f 1f 40 00          	nopl   0x0(%rax)
  402510:	c7 05 46 5e 00 00 01 	movl   $0x1,0x5e46(%rip)        # 408360 <initialized>
  402517:	00 00 00 
  40251a:	eb 84                	jmp    4024a0 <__do_global_ctors>
  40251c:	90                   	nop
  40251d:	90                   	nop
  40251e:	90                   	nop
  40251f:	90                   	nop

0000000000402520 <__security_init_cookie>:
  402520:	41 54                	push   %r12
  402522:	55                   	push   %rbp
  402523:	57                   	push   %rdi
  402524:	56                   	push   %rsi
  402525:	53                   	push   %rbx
  402526:	48 83 ec 40          	sub    $0x40,%rsp
  40252a:	48 8b 1d 4f 1b 00 00 	mov    0x1b4f(%rip),%rbx        # 404080 <__security_cookie>
  402531:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  402538:	2b 00 00 
  40253b:	48 39 c3             	cmp    %rax,%rbx
  40253e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402545:	00 00 
  402547:	74 17                	je     402560 <__security_init_cookie+0x40>
  402549:	48 f7 d3             	not    %rbx
  40254c:	48 89 1d 3d 1b 00 00 	mov    %rbx,0x1b3d(%rip)        # 404090 <__security_cookie_complement>
  402553:	48 83 c4 40          	add    $0x40,%rsp
  402557:	5b                   	pop    %rbx
  402558:	5e                   	pop    %rsi
  402559:	5f                   	pop    %rdi
  40255a:	5d                   	pop    %rbp
  40255b:	41 5c                	pop    %r12
  40255d:	c3                   	retq   
  40255e:	66 90                	xchg   %ax,%ax
  402560:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402565:	ff 15 15 6d 00 00    	callq  *0x6d15(%rip)        # 409280 <__imp_GetSystemTimeAsFileTime>
  40256b:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  402570:	ff 15 ea 6c 00 00    	callq  *0x6cea(%rip)        # 409260 <__imp_GetCurrentProcessId>
  402576:	89 c5                	mov    %eax,%ebp
  402578:	ff 15 ea 6c 00 00    	callq  *0x6cea(%rip)        # 409268 <__imp_GetCurrentThreadId>
  40257e:	89 c7                	mov    %eax,%edi
  402580:	ff 15 02 6d 00 00    	callq  *0x6d02(%rip)        # 409288 <__imp_GetTickCount>
  402586:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  40258b:	89 c6                	mov    %eax,%esi
  40258d:	ff 15 0d 6d 00 00    	callq  *0x6d0d(%rip)        # 4092a0 <__imp_QueryPerformanceCounter>
  402593:	4c 89 e2             	mov    %r12,%rdx
  402596:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
  40259d:	ff 00 00 
  4025a0:	48 33 54 24 30       	xor    0x30(%rsp),%rdx
  4025a5:	48 31 ea             	xor    %rbp,%rdx
  4025a8:	48 31 fa             	xor    %rdi,%rdx
  4025ab:	48 31 f2             	xor    %rsi,%rdx
  4025ae:	48 21 c2             	and    %rax,%rdx
  4025b1:	48 39 da             	cmp    %rbx,%rdx
  4025b4:	74 1f                	je     4025d5 <__security_init_cookie+0xb5>
  4025b6:	48 89 d0             	mov    %rdx,%rax
  4025b9:	48 f7 d0             	not    %rax
  4025bc:	48 89 15 bd 1a 00 00 	mov    %rdx,0x1abd(%rip)        # 404080 <__security_cookie>
  4025c3:	48 89 05 c6 1a 00 00 	mov    %rax,0x1ac6(%rip)        # 404090 <__security_cookie_complement>
  4025ca:	48 83 c4 40          	add    $0x40,%rsp
  4025ce:	5b                   	pop    %rbx
  4025cf:	5e                   	pop    %rsi
  4025d0:	5f                   	pop    %rdi
  4025d1:	5d                   	pop    %rbp
  4025d2:	41 5c                	pop    %r12
  4025d4:	c3                   	retq   
  4025d5:	48 b8 cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rax
  4025dc:	d4 ff ff 
  4025df:	48 ba 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rdx
  4025e6:	2b 00 00 
  4025e9:	eb d1                	jmp    4025bc <__security_init_cookie+0x9c>
  4025eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025f0 <__report_gsfailure>:
  4025f0:	55                   	push   %rbp
  4025f1:	56                   	push   %rsi
  4025f2:	53                   	push   %rbx
  4025f3:	48 89 e5             	mov    %rsp,%rbp
  4025f6:	48 83 ec 70          	sub    $0x70,%rsp
  4025fa:	48 89 ce             	mov    %rcx,%rsi
  4025fd:	48 8d 0d 7c 5d 00 00 	lea    0x5d7c(%rip),%rcx        # 408380 <GS_ContextRecord>
  402604:	ff 15 a6 6c 00 00    	callq  *0x6ca6(%rip)        # 4092b0 <__imp_RtlCaptureContext>
  40260a:	48 8b 1d 67 5e 00 00 	mov    0x5e67(%rip),%rbx        # 408478 <GS_ContextRecord+0xf8>
  402611:	45 31 c0             	xor    %r8d,%r8d
  402614:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  402618:	48 89 d9             	mov    %rbx,%rcx
  40261b:	ff 15 97 6c 00 00    	callq  *0x6c97(%rip)        # 4092b8 <__imp_RtlLookupFunctionEntry>
  402621:	48 85 c0             	test   %rax,%rax
  402624:	49 89 c1             	mov    %rax,%r9
  402627:	0f 84 a3 00 00 00    	je     4026d0 <__report_gsfailure+0xe0>
  40262d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402631:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402635:	49 89 d8             	mov    %rbx,%r8
  402638:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40263d:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402641:	31 c9                	xor    %ecx,%ecx
  402643:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402648:	48 8d 05 31 5d 00 00 	lea    0x5d31(%rip),%rax        # 408380 <GS_ContextRecord>
  40264f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402656:	00 00 
  402658:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40265d:	ff 15 5d 6c 00 00    	callq  *0x6c5d(%rip)        # 4092c0 <__imp_RtlVirtualUnwind>
  402663:	48 8b 05 0e 5e 00 00 	mov    0x5e0e(%rip),%rax        # 408478 <GS_ContextRecord+0xf8>
  40266a:	31 c9                	xor    %ecx,%ecx
  40266c:	48 89 35 8d 5d 00 00 	mov    %rsi,0x5d8d(%rip)        # 408400 <GS_ContextRecord+0x80>
  402673:	c7 05 e3 61 00 00 09 	movl   $0xc0000409,0x61e3(%rip)        # 408860 <GS_ExceptionRecord>
  40267a:	04 00 c0 
  40267d:	c7 05 dd 61 00 00 01 	movl   $0x1,0x61dd(%rip)        # 408864 <GS_ExceptionRecord+0x4>
  402684:	00 00 00 
  402687:	48 89 05 e2 61 00 00 	mov    %rax,0x61e2(%rip)        # 408870 <GS_ExceptionRecord+0x10>
  40268e:	48 8b 05 eb 19 00 00 	mov    0x19eb(%rip),%rax        # 404080 <__security_cookie>
  402695:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402699:	48 8b 05 f0 19 00 00 	mov    0x19f0(%rip),%rax        # 404090 <__security_cookie_complement>
  4026a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4026a4:	ff 15 1e 6c 00 00    	callq  *0x6c1e(%rip)        # 4092c8 <__imp_SetUnhandledExceptionFilter>
  4026aa:	48 8d 0d df 2b 00 00 	lea    0x2bdf(%rip),%rcx        # 405290 <GS_ExceptionPointers>
  4026b1:	ff 15 31 6c 00 00    	callq  *0x6c31(%rip)        # 4092e8 <__imp_UnhandledExceptionFilter>
  4026b7:	ff 15 9b 6b 00 00    	callq  *0x6b9b(%rip)        # 409258 <__imp_GetCurrentProcess>
  4026bd:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  4026c2:	48 89 c1             	mov    %rax,%rcx
  4026c5:	ff 15 0d 6c 00 00    	callq  *0x6c0d(%rip)        # 4092d8 <__imp_TerminateProcess>
  4026cb:	e8 40 07 00 00       	callq  402e10 <abort>
  4026d0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4026d4:	48 89 05 9d 5d 00 00 	mov    %rax,0x5d9d(%rip)        # 408478 <GS_ContextRecord+0xf8>
  4026db:	48 8d 45 08          	lea    0x8(%rbp),%rax
  4026df:	48 89 05 32 5d 00 00 	mov    %rax,0x5d32(%rip)        # 408418 <GS_ContextRecord+0x98>
  4026e6:	e9 78 ff ff ff       	jmpq   402663 <__report_gsfailure+0x73>
  4026eb:	90                   	nop
  4026ec:	90                   	nop
  4026ed:	90                   	nop
  4026ee:	90                   	nop
  4026ef:	90                   	nop

00000000004026f0 <__mingwthr_run_key_dtors.part.0>:
  4026f0:	55                   	push   %rbp
  4026f1:	57                   	push   %rdi
  4026f2:	56                   	push   %rsi
  4026f3:	53                   	push   %rbx
  4026f4:	48 83 ec 28          	sub    $0x28,%rsp
  4026f8:	48 8d 0d 21 62 00 00 	lea    0x6221(%rip),%rcx        # 408920 <__mingwthr_cs>
  4026ff:	ff 15 4b 6b 00 00    	callq  *0x6b4b(%rip)        # 409250 <__imp_EnterCriticalSection>
  402705:	48 8b 1d f4 61 00 00 	mov    0x61f4(%rip),%rbx        # 408900 <key_dtor_list>
  40270c:	48 85 db             	test   %rbx,%rbx
  40270f:	74 33                	je     402744 <__mingwthr_run_key_dtors.part.0+0x54>
  402711:	48 8b 2d c8 6b 00 00 	mov    0x6bc8(%rip),%rbp        # 4092e0 <__imp_TlsGetValue>
  402718:	48 8b 3d 51 6b 00 00 	mov    0x6b51(%rip),%rdi        # 409270 <__imp_GetLastError>
  40271f:	90                   	nop
  402720:	8b 0b                	mov    (%rbx),%ecx
  402722:	ff d5                	callq  *%rbp
  402724:	48 89 c6             	mov    %rax,%rsi
  402727:	ff d7                	callq  *%rdi
  402729:	85 c0                	test   %eax,%eax
  40272b:	75 0e                	jne    40273b <__mingwthr_run_key_dtors.part.0+0x4b>
  40272d:	48 85 f6             	test   %rsi,%rsi
  402730:	74 09                	je     40273b <__mingwthr_run_key_dtors.part.0+0x4b>
  402732:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402736:	48 89 f1             	mov    %rsi,%rcx
  402739:	ff d0                	callq  *%rax
  40273b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40273f:	48 85 db             	test   %rbx,%rbx
  402742:	75 dc                	jne    402720 <__mingwthr_run_key_dtors.part.0+0x30>
  402744:	48 8b 05 4d 6b 00 00 	mov    0x6b4d(%rip),%rax        # 409298 <__imp_LeaveCriticalSection>
  40274b:	48 8d 0d ce 61 00 00 	lea    0x61ce(%rip),%rcx        # 408920 <__mingwthr_cs>
  402752:	48 83 c4 28          	add    $0x28,%rsp
  402756:	5b                   	pop    %rbx
  402757:	5e                   	pop    %rsi
  402758:	5f                   	pop    %rdi
  402759:	5d                   	pop    %rbp
  40275a:	48 ff e0             	rex.W jmpq *%rax
  40275d:	0f 1f 00             	nopl   (%rax)

0000000000402760 <___w64_mingwthr_add_key_dtor>:
  402760:	55                   	push   %rbp
  402761:	57                   	push   %rdi
  402762:	56                   	push   %rsi
  402763:	53                   	push   %rbx
  402764:	48 83 ec 28          	sub    $0x28,%rsp
  402768:	8b 05 9a 61 00 00    	mov    0x619a(%rip),%eax        # 408908 <__mingwthr_cs_init>
  40276e:	31 f6                	xor    %esi,%esi
  402770:	85 c0                	test   %eax,%eax
  402772:	89 cd                	mov    %ecx,%ebp
  402774:	48 89 d7             	mov    %rdx,%rdi
  402777:	75 0b                	jne    402784 <___w64_mingwthr_add_key_dtor+0x24>
  402779:	89 f0                	mov    %esi,%eax
  40277b:	48 83 c4 28          	add    $0x28,%rsp
  40277f:	5b                   	pop    %rbx
  402780:	5e                   	pop    %rsi
  402781:	5f                   	pop    %rdi
  402782:	5d                   	pop    %rbp
  402783:	c3                   	retq   
  402784:	ba 18 00 00 00       	mov    $0x18,%edx
  402789:	b9 01 00 00 00       	mov    $0x1,%ecx
  40278e:	e8 85 06 00 00       	callq  402e18 <calloc>
  402793:	48 85 c0             	test   %rax,%rax
  402796:	48 89 c3             	mov    %rax,%rbx
  402799:	74 3d                	je     4027d8 <___w64_mingwthr_add_key_dtor+0x78>
  40279b:	89 28                	mov    %ebp,(%rax)
  40279d:	48 8d 0d 7c 61 00 00 	lea    0x617c(%rip),%rcx        # 408920 <__mingwthr_cs>
  4027a4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4027a8:	ff 15 a2 6a 00 00    	callq  *0x6aa2(%rip)        # 409250 <__imp_EnterCriticalSection>
  4027ae:	48 8b 05 4b 61 00 00 	mov    0x614b(%rip),%rax        # 408900 <key_dtor_list>
  4027b5:	48 8d 0d 64 61 00 00 	lea    0x6164(%rip),%rcx        # 408920 <__mingwthr_cs>
  4027bc:	48 89 1d 3d 61 00 00 	mov    %rbx,0x613d(%rip)        # 408900 <key_dtor_list>
  4027c3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027c7:	ff 15 cb 6a 00 00    	callq  *0x6acb(%rip)        # 409298 <__imp_LeaveCriticalSection>
  4027cd:	89 f0                	mov    %esi,%eax
  4027cf:	48 83 c4 28          	add    $0x28,%rsp
  4027d3:	5b                   	pop    %rbx
  4027d4:	5e                   	pop    %rsi
  4027d5:	5f                   	pop    %rdi
  4027d6:	5d                   	pop    %rbp
  4027d7:	c3                   	retq   
  4027d8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4027dd:	eb 9a                	jmp    402779 <___w64_mingwthr_add_key_dtor+0x19>
  4027df:	90                   	nop

00000000004027e0 <___w64_mingwthr_remove_key_dtor>:
  4027e0:	53                   	push   %rbx
  4027e1:	48 83 ec 20          	sub    $0x20,%rsp
  4027e5:	8b 05 1d 61 00 00    	mov    0x611d(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4027eb:	85 c0                	test   %eax,%eax
  4027ed:	89 cb                	mov    %ecx,%ebx
  4027ef:	75 0f                	jne    402800 <___w64_mingwthr_remove_key_dtor+0x20>
  4027f1:	31 c0                	xor    %eax,%eax
  4027f3:	48 83 c4 20          	add    $0x20,%rsp
  4027f7:	5b                   	pop    %rbx
  4027f8:	c3                   	retq   
  4027f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402800:	48 8d 0d 19 61 00 00 	lea    0x6119(%rip),%rcx        # 408920 <__mingwthr_cs>
  402807:	ff 15 43 6a 00 00    	callq  *0x6a43(%rip)        # 409250 <__imp_EnterCriticalSection>
  40280d:	48 8b 15 ec 60 00 00 	mov    0x60ec(%rip),%rdx        # 408900 <key_dtor_list>
  402814:	48 85 d2             	test   %rdx,%rdx
  402817:	74 1c                	je     402835 <___w64_mingwthr_remove_key_dtor+0x55>
  402819:	8b 02                	mov    (%rdx),%eax
  40281b:	39 d8                	cmp    %ebx,%eax
  40281d:	75 0d                	jne    40282c <___w64_mingwthr_remove_key_dtor+0x4c>
  40281f:	eb 4e                	jmp    40286f <___w64_mingwthr_remove_key_dtor+0x8f>
  402821:	44 8b 00             	mov    (%rax),%r8d
  402824:	41 39 d8             	cmp    %ebx,%r8d
  402827:	74 27                	je     402850 <___w64_mingwthr_remove_key_dtor+0x70>
  402829:	48 89 c2             	mov    %rax,%rdx
  40282c:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402830:	48 85 c0             	test   %rax,%rax
  402833:	75 ec                	jne    402821 <___w64_mingwthr_remove_key_dtor+0x41>
  402835:	48 8d 0d e4 60 00 00 	lea    0x60e4(%rip),%rcx        # 408920 <__mingwthr_cs>
  40283c:	ff 15 56 6a 00 00    	callq  *0x6a56(%rip)        # 409298 <__imp_LeaveCriticalSection>
  402842:	31 c0                	xor    %eax,%eax
  402844:	48 83 c4 20          	add    $0x20,%rsp
  402848:	5b                   	pop    %rbx
  402849:	c3                   	retq   
  40284a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402850:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402854:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
  402858:	48 89 c1             	mov    %rax,%rcx
  40285b:	e8 c0 05 00 00       	callq  402e20 <free>
  402860:	48 8d 0d b9 60 00 00 	lea    0x60b9(%rip),%rcx        # 408920 <__mingwthr_cs>
  402867:	ff 15 2b 6a 00 00    	callq  *0x6a2b(%rip)        # 409298 <__imp_LeaveCriticalSection>
  40286d:	eb d3                	jmp    402842 <___w64_mingwthr_remove_key_dtor+0x62>
  40286f:	48 8b 42 10          	mov    0x10(%rdx),%rax
  402873:	48 89 05 86 60 00 00 	mov    %rax,0x6086(%rip)        # 408900 <key_dtor_list>
  40287a:	48 89 d0             	mov    %rdx,%rax
  40287d:	eb d9                	jmp    402858 <___w64_mingwthr_remove_key_dtor+0x78>
  40287f:	90                   	nop

0000000000402880 <__mingw_TLScallback>:
  402880:	48 83 ec 28          	sub    $0x28,%rsp
  402884:	83 fa 01             	cmp    $0x1,%edx
  402887:	74 49                	je     4028d2 <__mingw_TLScallback+0x52>
  402889:	72 19                	jb     4028a4 <__mingw_TLScallback+0x24>
  40288b:	83 fa 03             	cmp    $0x3,%edx
  40288e:	75 0a                	jne    40289a <__mingw_TLScallback+0x1a>
  402890:	8b 05 72 60 00 00    	mov    0x6072(%rip),%eax        # 408908 <__mingwthr_cs_init>
  402896:	85 c0                	test   %eax,%eax
  402898:	75 66                	jne    402900 <__mingw_TLScallback+0x80>
  40289a:	b8 01 00 00 00       	mov    $0x1,%eax
  40289f:	48 83 c4 28          	add    $0x28,%rsp
  4028a3:	c3                   	retq   
  4028a4:	8b 05 5e 60 00 00    	mov    0x605e(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4028aa:	85 c0                	test   %eax,%eax
  4028ac:	75 62                	jne    402910 <__mingw_TLScallback+0x90>
  4028ae:	8b 05 54 60 00 00    	mov    0x6054(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4028b4:	83 f8 01             	cmp    $0x1,%eax
  4028b7:	75 e1                	jne    40289a <__mingw_TLScallback+0x1a>
  4028b9:	48 8d 0d 60 60 00 00 	lea    0x6060(%rip),%rcx        # 408920 <__mingwthr_cs>
  4028c0:	c7 05 3e 60 00 00 00 	movl   $0x0,0x603e(%rip)        # 408908 <__mingwthr_cs_init>
  4028c7:	00 00 00 
  4028ca:	ff 15 78 69 00 00    	callq  *0x6978(%rip)        # 409248 <__IAT_start__>
  4028d0:	eb c8                	jmp    40289a <__mingw_TLScallback+0x1a>
  4028d2:	8b 05 30 60 00 00    	mov    0x6030(%rip),%eax        # 408908 <__mingwthr_cs_init>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	74 14                	je     4028f0 <__mingw_TLScallback+0x70>
  4028dc:	c7 05 22 60 00 00 01 	movl   $0x1,0x6022(%rip)        # 408908 <__mingwthr_cs_init>
  4028e3:	00 00 00 
  4028e6:	b8 01 00 00 00       	mov    $0x1,%eax
  4028eb:	48 83 c4 28          	add    $0x28,%rsp
  4028ef:	c3                   	retq   
  4028f0:	48 8d 0d 29 60 00 00 	lea    0x6029(%rip),%rcx        # 408920 <__mingwthr_cs>
  4028f7:	ff 15 93 69 00 00    	callq  *0x6993(%rip)        # 409290 <__imp_InitializeCriticalSection>
  4028fd:	eb dd                	jmp    4028dc <__mingw_TLScallback+0x5c>
  4028ff:	90                   	nop
  402900:	e8 eb fd ff ff       	callq  4026f0 <__mingwthr_run_key_dtors.part.0>
  402905:	eb 93                	jmp    40289a <__mingw_TLScallback+0x1a>
  402907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40290e:	00 00 
  402910:	e8 db fd ff ff       	callq  4026f0 <__mingwthr_run_key_dtors.part.0>
  402915:	eb 97                	jmp    4028ae <__mingw_TLScallback+0x2e>
  402917:	90                   	nop
  402918:	90                   	nop
  402919:	90                   	nop
  40291a:	90                   	nop
  40291b:	90                   	nop
  40291c:	90                   	nop
  40291d:	90                   	nop
  40291e:	90                   	nop
  40291f:	90                   	nop

0000000000402920 <_ValidateImageBase.part.0>:
  402920:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402924:	48 01 c1             	add    %rax,%rcx
  402927:	31 c0                	xor    %eax,%eax
  402929:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40292f:	74 02                	je     402933 <_ValidateImageBase.part.0+0x13>
  402931:	f3 c3                	repz retq 
  402933:	31 c0                	xor    %eax,%eax
  402935:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40293b:	0f 94 c0             	sete   %al
  40293e:	c3                   	retq   
  40293f:	90                   	nop

0000000000402940 <_ValidateImageBase>:
  402940:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402945:	74 09                	je     402950 <_ValidateImageBase+0x10>
  402947:	31 c0                	xor    %eax,%eax
  402949:	c3                   	retq   
  40294a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402950:	eb ce                	jmp    402920 <_ValidateImageBase.part.0>
  402952:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402959:	1f 84 00 00 00 00 00 

0000000000402960 <_FindPESection>:
  402960:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402964:	48 01 c1             	add    %rax,%rcx
  402967:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40296b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402970:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402974:	85 c9                	test   %ecx,%ecx
  402976:	74 28                	je     4029a0 <_FindPESection+0x40>
  402978:	83 e9 01             	sub    $0x1,%ecx
  40297b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40297f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402984:	8b 48 0c             	mov    0xc(%rax),%ecx
  402987:	41 89 c8             	mov    %ecx,%r8d
  40298a:	49 39 d0             	cmp    %rdx,%r8
  40298d:	77 08                	ja     402997 <_FindPESection+0x37>
  40298f:	03 48 08             	add    0x8(%rax),%ecx
  402992:	48 39 ca             	cmp    %rcx,%rdx
  402995:	72 0b                	jb     4029a2 <_FindPESection+0x42>
  402997:	48 83 c0 28          	add    $0x28,%rax
  40299b:	4c 39 c8             	cmp    %r9,%rax
  40299e:	75 e4                	jne    402984 <_FindPESection+0x24>
  4029a0:	31 c0                	xor    %eax,%eax
  4029a2:	f3 c3                	repz retq 
  4029a4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4029ab:	00 00 00 00 00 

00000000004029b0 <_FindPESectionByName>:
  4029b0:	57                   	push   %rdi
  4029b1:	56                   	push   %rsi
  4029b2:	53                   	push   %rbx
  4029b3:	48 83 ec 20          	sub    $0x20,%rsp
  4029b7:	48 89 ce             	mov    %rcx,%rsi
  4029ba:	e8 c9 03 00 00       	callq  402d88 <strlen>
  4029bf:	48 83 f8 08          	cmp    $0x8,%rax
  4029c3:	77 1f                	ja     4029e4 <_FindPESectionByName+0x34>
  4029c5:	48 8d 1d 34 d6 ff ff 	lea    -0x29cc(%rip),%rbx        # 400000 <__ImageBase>
  4029cc:	31 ff                	xor    %edi,%edi
  4029ce:	66 81 3d 29 d6 ff ff 	cmpw   $0x5a4d,-0x29d7(%rip)        # 400000 <__ImageBase>
  4029d5:	4d 5a 
  4029d7:	74 18                	je     4029f1 <_FindPESectionByName+0x41>
  4029d9:	48 89 f8             	mov    %rdi,%rax
  4029dc:	48 83 c4 20          	add    $0x20,%rsp
  4029e0:	5b                   	pop    %rbx
  4029e1:	5e                   	pop    %rsi
  4029e2:	5f                   	pop    %rdi
  4029e3:	c3                   	retq   
  4029e4:	31 ff                	xor    %edi,%edi
  4029e6:	48 89 f8             	mov    %rdi,%rax
  4029e9:	48 83 c4 20          	add    $0x20,%rsp
  4029ed:	5b                   	pop    %rbx
  4029ee:	5e                   	pop    %rsi
  4029ef:	5f                   	pop    %rdi
  4029f0:	c3                   	retq   
  4029f1:	48 89 d9             	mov    %rbx,%rcx
  4029f4:	e8 27 ff ff ff       	callq  402920 <_ValidateImageBase.part.0>
  4029f9:	85 c0                	test   %eax,%eax
  4029fb:	74 dc                	je     4029d9 <_FindPESectionByName+0x29>
  4029fd:	48 63 15 38 d6 ff ff 	movslq -0x29c8(%rip),%rdx        # 40003c <__ImageBase+0x3c>
  402a04:	48 01 da             	add    %rbx,%rdx
  402a07:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402a0b:	48 8d 5c 02 18       	lea    0x18(%rdx,%rax,1),%rbx
  402a10:	0f b7 42 06          	movzwl 0x6(%rdx),%eax
  402a14:	85 c0                	test   %eax,%eax
  402a16:	74 c1                	je     4029d9 <_FindPESectionByName+0x29>
  402a18:	83 e8 01             	sub    $0x1,%eax
  402a1b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402a1f:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402a24:	eb 13                	jmp    402a39 <_FindPESectionByName+0x89>
  402a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a2d:	00 00 00 
  402a30:	48 83 c3 28          	add    $0x28,%rbx
  402a34:	48 39 fb             	cmp    %rdi,%rbx
  402a37:	74 ab                	je     4029e4 <_FindPESectionByName+0x34>
  402a39:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402a3f:	48 89 f2             	mov    %rsi,%rdx
  402a42:	48 89 d9             	mov    %rbx,%rcx
  402a45:	e8 de 03 00 00       	callq  402e28 <strncmp>
  402a4a:	85 c0                	test   %eax,%eax
  402a4c:	75 e2                	jne    402a30 <_FindPESectionByName+0x80>
  402a4e:	48 89 df             	mov    %rbx,%rdi
  402a51:	48 89 f8             	mov    %rdi,%rax
  402a54:	48 83 c4 20          	add    $0x20,%rsp
  402a58:	5b                   	pop    %rbx
  402a59:	5e                   	pop    %rsi
  402a5a:	5f                   	pop    %rdi
  402a5b:	c3                   	retq   
  402a5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402a60 <__mingw_GetSectionForAddress>:
  402a60:	56                   	push   %rsi
  402a61:	53                   	push   %rbx
  402a62:	48 83 ec 28          	sub    $0x28,%rsp
  402a66:	48 8d 1d 93 d5 ff ff 	lea    -0x2a6d(%rip),%rbx        # 400000 <__ImageBase>
  402a6d:	66 81 3d 8a d5 ff ff 	cmpw   $0x5a4d,-0x2a76(%rip)        # 400000 <__ImageBase>
  402a74:	4d 5a 
  402a76:	48 89 ce             	mov    %rcx,%rsi
  402a79:	74 09                	je     402a84 <__mingw_GetSectionForAddress+0x24>
  402a7b:	31 c0                	xor    %eax,%eax
  402a7d:	48 83 c4 28          	add    $0x28,%rsp
  402a81:	5b                   	pop    %rbx
  402a82:	5e                   	pop    %rsi
  402a83:	c3                   	retq   
  402a84:	48 89 d9             	mov    %rbx,%rcx
  402a87:	e8 94 fe ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402a8c:	85 c0                	test   %eax,%eax
  402a8e:	74 eb                	je     402a7b <__mingw_GetSectionForAddress+0x1b>
  402a90:	48 29 de             	sub    %rbx,%rsi
  402a93:	48 89 d9             	mov    %rbx,%rcx
  402a96:	48 89 f2             	mov    %rsi,%rdx
  402a99:	48 83 c4 28          	add    $0x28,%rsp
  402a9d:	5b                   	pop    %rbx
  402a9e:	5e                   	pop    %rsi
  402a9f:	e9 bc fe ff ff       	jmpq   402960 <_FindPESection>
  402aa4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402aab:	00 00 00 00 00 

0000000000402ab0 <__mingw_GetSectionCount>:
  402ab0:	56                   	push   %rsi
  402ab1:	53                   	push   %rbx
  402ab2:	48 83 ec 28          	sub    $0x28,%rsp
  402ab6:	48 8d 35 43 d5 ff ff 	lea    -0x2abd(%rip),%rsi        # 400000 <__ImageBase>
  402abd:	31 db                	xor    %ebx,%ebx
  402abf:	66 81 3d 38 d5 ff ff 	cmpw   $0x5a4d,-0x2ac8(%rip)        # 400000 <__ImageBase>
  402ac6:	4d 5a 
  402ac8:	74 09                	je     402ad3 <__mingw_GetSectionCount+0x23>
  402aca:	89 d8                	mov    %ebx,%eax
  402acc:	48 83 c4 28          	add    $0x28,%rsp
  402ad0:	5b                   	pop    %rbx
  402ad1:	5e                   	pop    %rsi
  402ad2:	c3                   	retq   
  402ad3:	48 89 f1             	mov    %rsi,%rcx
  402ad6:	e8 45 fe ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402adb:	85 c0                	test   %eax,%eax
  402add:	74 eb                	je     402aca <__mingw_GetSectionCount+0x1a>
  402adf:	48 63 05 56 d5 ff ff 	movslq -0x2aaa(%rip),%rax        # 40003c <__ImageBase+0x3c>
  402ae6:	0f b7 5c 06 06       	movzwl 0x6(%rsi,%rax,1),%ebx
  402aeb:	89 d8                	mov    %ebx,%eax
  402aed:	48 83 c4 28          	add    $0x28,%rsp
  402af1:	5b                   	pop    %rbx
  402af2:	5e                   	pop    %rsi
  402af3:	c3                   	retq   
  402af4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402afb:	00 00 00 00 00 

0000000000402b00 <_FindPESectionExec>:
  402b00:	57                   	push   %rdi
  402b01:	56                   	push   %rsi
  402b02:	53                   	push   %rbx
  402b03:	48 83 ec 20          	sub    $0x20,%rsp
  402b07:	48 8d 3d f2 d4 ff ff 	lea    -0x2b0e(%rip),%rdi        # 400000 <__ImageBase>
  402b0e:	31 f6                	xor    %esi,%esi
  402b10:	66 81 3d e7 d4 ff ff 	cmpw   $0x5a4d,-0x2b19(%rip)        # 400000 <__ImageBase>
  402b17:	4d 5a 
  402b19:	48 89 cb             	mov    %rcx,%rbx
  402b1c:	74 12                	je     402b30 <_FindPESectionExec+0x30>
  402b1e:	48 89 f0             	mov    %rsi,%rax
  402b21:	48 83 c4 20          	add    $0x20,%rsp
  402b25:	5b                   	pop    %rbx
  402b26:	5e                   	pop    %rsi
  402b27:	5f                   	pop    %rdi
  402b28:	c3                   	retq   
  402b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b30:	48 89 f9             	mov    %rdi,%rcx
  402b33:	e8 e8 fd ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402b38:	85 c0                	test   %eax,%eax
  402b3a:	74 e2                	je     402b1e <_FindPESectionExec+0x1e>
  402b3c:	48 63 0d f9 d4 ff ff 	movslq -0x2b07(%rip),%rcx        # 40003c <__ImageBase+0x3c>
  402b43:	48 01 f9             	add    %rdi,%rcx
  402b46:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402b4a:	48 8d 54 01 18       	lea    0x18(%rcx,%rax,1),%rdx
  402b4f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402b53:	85 c0                	test   %eax,%eax
  402b55:	74 c7                	je     402b1e <_FindPESectionExec+0x1e>
  402b57:	83 e8 01             	sub    $0x1,%eax
  402b5a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402b5e:	48 8d 44 c2 28       	lea    0x28(%rdx,%rax,8),%rax
  402b63:	f6 42 27 20          	testb  $0x20,0x27(%rdx)
  402b67:	74 09                	je     402b72 <_FindPESectionExec+0x72>
  402b69:	48 85 db             	test   %rbx,%rbx
  402b6c:	74 22                	je     402b90 <_FindPESectionExec+0x90>
  402b6e:	48 83 eb 01          	sub    $0x1,%rbx
  402b72:	48 83 c2 28          	add    $0x28,%rdx
  402b76:	48 39 c2             	cmp    %rax,%rdx
  402b79:	75 e8                	jne    402b63 <_FindPESectionExec+0x63>
  402b7b:	31 f6                	xor    %esi,%esi
  402b7d:	48 89 f0             	mov    %rsi,%rax
  402b80:	48 83 c4 20          	add    $0x20,%rsp
  402b84:	5b                   	pop    %rbx
  402b85:	5e                   	pop    %rsi
  402b86:	5f                   	pop    %rdi
  402b87:	c3                   	retq   
  402b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b8f:	00 
  402b90:	48 89 d6             	mov    %rdx,%rsi
  402b93:	48 89 f0             	mov    %rsi,%rax
  402b96:	48 83 c4 20          	add    $0x20,%rsp
  402b9a:	5b                   	pop    %rbx
  402b9b:	5e                   	pop    %rsi
  402b9c:	5f                   	pop    %rdi
  402b9d:	c3                   	retq   
  402b9e:	66 90                	xchg   %ax,%ax

0000000000402ba0 <_GetPEImageBase>:
  402ba0:	53                   	push   %rbx
  402ba1:	48 83 ec 20          	sub    $0x20,%rsp
  402ba5:	31 db                	xor    %ebx,%ebx
  402ba7:	66 81 3d 50 d4 ff ff 	cmpw   $0x5a4d,-0x2bb0(%rip)        # 400000 <__ImageBase>
  402bae:	4d 5a 
  402bb0:	74 0e                	je     402bc0 <_GetPEImageBase+0x20>
  402bb2:	48 89 d8             	mov    %rbx,%rax
  402bb5:	48 83 c4 20          	add    $0x20,%rsp
  402bb9:	5b                   	pop    %rbx
  402bba:	c3                   	retq   
  402bbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402bc0:	48 8d 0d 39 d4 ff ff 	lea    -0x2bc7(%rip),%rcx        # 400000 <__ImageBase>
  402bc7:	e8 54 fd ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402bcc:	85 c0                	test   %eax,%eax
  402bce:	48 8d 05 2b d4 ff ff 	lea    -0x2bd5(%rip),%rax        # 400000 <__ImageBase>
  402bd5:	48 0f 45 d8          	cmovne %rax,%rbx
  402bd9:	48 89 d8             	mov    %rbx,%rax
  402bdc:	48 83 c4 20          	add    $0x20,%rsp
  402be0:	5b                   	pop    %rbx
  402be1:	c3                   	retq   
  402be2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402be9:	1f 84 00 00 00 00 00 

0000000000402bf0 <_IsNonwritableInCurrentImage>:
  402bf0:	56                   	push   %rsi
  402bf1:	53                   	push   %rbx
  402bf2:	48 83 ec 28          	sub    $0x28,%rsp
  402bf6:	48 8d 1d 03 d4 ff ff 	lea    -0x2bfd(%rip),%rbx        # 400000 <__ImageBase>
  402bfd:	31 c0                	xor    %eax,%eax
  402bff:	66 81 3d f8 d3 ff ff 	cmpw   $0x5a4d,-0x2c08(%rip)        # 400000 <__ImageBase>
  402c06:	4d 5a 
  402c08:	48 89 ce             	mov    %rcx,%rsi
  402c0b:	74 07                	je     402c14 <_IsNonwritableInCurrentImage+0x24>
  402c0d:	48 83 c4 28          	add    $0x28,%rsp
  402c11:	5b                   	pop    %rbx
  402c12:	5e                   	pop    %rsi
  402c13:	c3                   	retq   
  402c14:	48 89 d9             	mov    %rbx,%rcx
  402c17:	e8 04 fd ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402c1c:	85 c0                	test   %eax,%eax
  402c1e:	74 ed                	je     402c0d <_IsNonwritableInCurrentImage+0x1d>
  402c20:	48 89 f2             	mov    %rsi,%rdx
  402c23:	48 89 d9             	mov    %rbx,%rcx
  402c26:	48 29 da             	sub    %rbx,%rdx
  402c29:	e8 32 fd ff ff       	callq  402960 <_FindPESection>
  402c2e:	48 85 c0             	test   %rax,%rax
  402c31:	74 0f                	je     402c42 <_IsNonwritableInCurrentImage+0x52>
  402c33:	8b 40 24             	mov    0x24(%rax),%eax
  402c36:	f7 d0                	not    %eax
  402c38:	c1 e8 1f             	shr    $0x1f,%eax
  402c3b:	48 83 c4 28          	add    $0x28,%rsp
  402c3f:	5b                   	pop    %rbx
  402c40:	5e                   	pop    %rsi
  402c41:	c3                   	retq   
  402c42:	31 c0                	xor    %eax,%eax
  402c44:	eb c7                	jmp    402c0d <_IsNonwritableInCurrentImage+0x1d>
  402c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c4d:	00 00 00 

0000000000402c50 <__mingw_enum_import_library_names>:
  402c50:	55                   	push   %rbp
  402c51:	57                   	push   %rdi
  402c52:	56                   	push   %rsi
  402c53:	53                   	push   %rbx
  402c54:	48 83 ec 28          	sub    $0x28,%rsp
  402c58:	48 8d 35 a1 d3 ff ff 	lea    -0x2c5f(%rip),%rsi        # 400000 <__ImageBase>
  402c5f:	31 ed                	xor    %ebp,%ebp
  402c61:	66 81 3d 96 d3 ff ff 	cmpw   $0x5a4d,-0x2c6a(%rip)        # 400000 <__ImageBase>
  402c68:	4d 5a 
  402c6a:	89 cb                	mov    %ecx,%ebx
  402c6c:	74 12                	je     402c80 <__mingw_enum_import_library_names+0x30>
  402c6e:	48 89 e8             	mov    %rbp,%rax
  402c71:	48 83 c4 28          	add    $0x28,%rsp
  402c75:	5b                   	pop    %rbx
  402c76:	5e                   	pop    %rsi
  402c77:	5f                   	pop    %rdi
  402c78:	5d                   	pop    %rbp
  402c79:	c3                   	retq   
  402c7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c80:	48 89 f1             	mov    %rsi,%rcx
  402c83:	e8 98 fc ff ff       	callq  402920 <_ValidateImageBase.part.0>
  402c88:	85 c0                	test   %eax,%eax
  402c8a:	74 e2                	je     402c6e <__mingw_enum_import_library_names+0x1e>
  402c8c:	48 63 05 a9 d3 ff ff 	movslq -0x2c57(%rip),%rax        # 40003c <__ImageBase+0x3c>
  402c93:	8b bc 06 90 00 00 00 	mov    0x90(%rsi,%rax,1),%edi
  402c9a:	85 ff                	test   %edi,%edi
  402c9c:	74 d0                	je     402c6e <__mingw_enum_import_library_names+0x1e>
  402c9e:	48 89 fa             	mov    %rdi,%rdx
  402ca1:	48 89 f1             	mov    %rsi,%rcx
  402ca4:	e8 b7 fc ff ff       	callq  402960 <_FindPESection>
  402ca9:	48 85 c0             	test   %rax,%rax
  402cac:	74 c0                	je     402c6e <__mingw_enum_import_library_names+0x1e>
  402cae:	48 01 f7             	add    %rsi,%rdi
  402cb1:	48 89 fa             	mov    %rdi,%rdx
  402cb4:	75 11                	jne    402cc7 <__mingw_enum_import_library_names+0x77>
  402cb6:	eb b6                	jmp    402c6e <__mingw_enum_import_library_names+0x1e>
  402cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cbf:	00 
  402cc0:	83 eb 01             	sub    $0x1,%ebx
  402cc3:	48 83 c2 14          	add    $0x14,%rdx
  402cc7:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402cca:	85 c9                	test   %ecx,%ecx
  402ccc:	75 07                	jne    402cd5 <__mingw_enum_import_library_names+0x85>
  402cce:	8b 42 0c             	mov    0xc(%rdx),%eax
  402cd1:	85 c0                	test   %eax,%eax
  402cd3:	74 1b                	je     402cf0 <__mingw_enum_import_library_names+0xa0>
  402cd5:	85 db                	test   %ebx,%ebx
  402cd7:	7f e7                	jg     402cc0 <__mingw_enum_import_library_names+0x70>
  402cd9:	8b 6a 0c             	mov    0xc(%rdx),%ebp
  402cdc:	48 01 f5             	add    %rsi,%rbp
  402cdf:	48 89 e8             	mov    %rbp,%rax
  402ce2:	48 83 c4 28          	add    $0x28,%rsp
  402ce6:	5b                   	pop    %rbx
  402ce7:	5e                   	pop    %rsi
  402ce8:	5f                   	pop    %rdi
  402ce9:	5d                   	pop    %rbp
  402cea:	c3                   	retq   
  402ceb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402cf0:	31 ed                	xor    %ebp,%ebp
  402cf2:	48 89 e8             	mov    %rbp,%rax
  402cf5:	48 83 c4 28          	add    $0x28,%rsp
  402cf9:	5b                   	pop    %rbx
  402cfa:	5e                   	pop    %rsi
  402cfb:	5f                   	pop    %rdi
  402cfc:	5d                   	pop    %rbp
  402cfd:	c3                   	retq   
  402cfe:	90                   	nop
  402cff:	90                   	nop

0000000000402d00 <___chkstk_ms>:
  402d00:	51                   	push   %rcx
  402d01:	50                   	push   %rax
  402d02:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402d08:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402d0d:	72 19                	jb     402d28 <___chkstk_ms+0x28>
  402d0f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402d16:	48 83 09 00          	orq    $0x0,(%rcx)
  402d1a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402d20:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402d26:	77 e7                	ja     402d0f <___chkstk_ms+0xf>
  402d28:	48 29 c1             	sub    %rax,%rcx
  402d2b:	48 83 09 00          	orq    $0x0,(%rcx)
  402d2f:	58                   	pop    %rax
  402d30:	59                   	pop    %rcx
  402d31:	c3                   	retq   
  402d32:	90                   	nop
  402d33:	90                   	nop
  402d34:	90                   	nop
  402d35:	90                   	nop
  402d36:	90                   	nop
  402d37:	90                   	nop
  402d38:	90                   	nop
  402d39:	90                   	nop
  402d3a:	90                   	nop
  402d3b:	90                   	nop
  402d3c:	90                   	nop
  402d3d:	90                   	nop
  402d3e:	90                   	nop
  402d3f:	90                   	nop

0000000000402d40 <__C_specific_handler>:
  402d40:	ff 25 c2 65 00 00    	jmpq   *0x65c2(%rip)        # 409308 <__imp___C_specific_handler>
  402d46:	90                   	nop
  402d47:	90                   	nop

0000000000402d48 <__set_app_type>:
  402d48:	ff 25 ea 65 00 00    	jmpq   *0x65ea(%rip)        # 409338 <__imp___set_app_type>
  402d4e:	90                   	nop
  402d4f:	90                   	nop

0000000000402d50 <__getmainargs>:
  402d50:	ff 25 c2 65 00 00    	jmpq   *0x65c2(%rip)        # 409318 <__imp___getmainargs>
  402d56:	90                   	nop
  402d57:	90                   	nop
  402d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d5f:	00 

0000000000402d60 <_get_invalid_parameter_handler>:
  402d60:	48 8b 05 09 5c 00 00 	mov    0x5c09(%rip),%rax        # 408970 <handler>
  402d67:	c3                   	retq   
  402d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d6f:	00 

0000000000402d70 <_set_invalid_parameter_handler>:
  402d70:	48 89 c8             	mov    %rcx,%rax
  402d73:	48 87 05 f6 5b 00 00 	xchg   %rax,0x5bf6(%rip)        # 408970 <handler>
  402d7a:	c3                   	retq   
  402d7b:	90                   	nop
  402d7c:	90                   	nop
  402d7d:	90                   	nop
  402d7e:	90                   	nop
  402d7f:	90                   	nop

0000000000402d80 <malloc>:
  402d80:	ff 25 32 66 00 00    	jmpq   *0x6632(%rip)        # 4093b8 <__imp_malloc>
  402d86:	90                   	nop
  402d87:	90                   	nop

0000000000402d88 <strlen>:
  402d88:	ff 25 42 66 00 00    	jmpq   *0x6642(%rip)        # 4093d0 <__imp_strlen>
  402d8e:	90                   	nop
  402d8f:	90                   	nop

0000000000402d90 <memcpy>:
  402d90:	ff 25 2a 66 00 00    	jmpq   *0x662a(%rip)        # 4093c0 <__imp_memcpy>
  402d96:	90                   	nop
  402d97:	90                   	nop

0000000000402d98 <_cexit>:
  402d98:	ff 25 ba 65 00 00    	jmpq   *0x65ba(%rip)        # 409358 <__imp__cexit>
  402d9e:	90                   	nop
  402d9f:	90                   	nop

0000000000402da0 <_amsg_exit>:
  402da0:	ff 25 aa 65 00 00    	jmpq   *0x65aa(%rip)        # 409350 <__imp__amsg_exit>
  402da6:	90                   	nop
  402da7:	90                   	nop

0000000000402da8 <_initterm>:
  402da8:	ff 25 ba 65 00 00    	jmpq   *0x65ba(%rip)        # 409368 <__imp__initterm>
  402dae:	90                   	nop
  402daf:	90                   	nop

0000000000402db0 <exit>:
  402db0:	ff 25 e2 65 00 00    	jmpq   *0x65e2(%rip)        # 409398 <__imp_exit>
  402db6:	90                   	nop
  402db7:	90                   	nop

0000000000402db8 <__lconv_init>:
  402db8:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 409330 <__imp___lconv_init>
  402dbe:	90                   	nop
  402dbf:	90                   	nop

0000000000402dc0 <_onexit>:
  402dc0:	ff 25 b2 65 00 00    	jmpq   *0x65b2(%rip)        # 409378 <__imp__onexit>
  402dc6:	90                   	nop
  402dc7:	90                   	nop

0000000000402dc8 <_lock>:
  402dc8:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 409370 <__imp__lock>
  402dce:	90                   	nop
  402dcf:	90                   	nop

0000000000402dd0 <__dllonexit>:
  402dd0:	ff 25 3a 65 00 00    	jmpq   *0x653a(%rip)        # 409310 <__imp___dllonexit>
  402dd6:	90                   	nop
  402dd7:	90                   	nop

0000000000402dd8 <_unlock>:
  402dd8:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 409380 <__imp__unlock>
  402dde:	90                   	nop
  402ddf:	90                   	nop

0000000000402de0 <signal>:
  402de0:	ff 25 e2 65 00 00    	jmpq   *0x65e2(%rip)        # 4093c8 <__imp_signal>
  402de6:	90                   	nop
  402de7:	90                   	nop

0000000000402de8 <__setusermatherr>:
  402de8:	ff 25 52 65 00 00    	jmpq   *0x6552(%rip)        # 409340 <__imp___setusermatherr>
  402dee:	90                   	nop
  402def:	90                   	nop

0000000000402df0 <__iob_func>:
  402df0:	ff 25 32 65 00 00    	jmpq   *0x6532(%rip)        # 409328 <__imp___iob_func>
  402df6:	90                   	nop
  402df7:	90                   	nop

0000000000402df8 <fprintf>:
  402df8:	ff 25 a2 65 00 00    	jmpq   *0x65a2(%rip)        # 4093a0 <__imp_fprintf>
  402dfe:	90                   	nop
  402dff:	90                   	nop

0000000000402e00 <fwrite>:
  402e00:	ff 25 aa 65 00 00    	jmpq   *0x65aa(%rip)        # 4093b0 <__imp_fwrite>
  402e06:	90                   	nop
  402e07:	90                   	nop

0000000000402e08 <vfprintf>:
  402e08:	ff 25 d2 65 00 00    	jmpq   *0x65d2(%rip)        # 4093e0 <__imp_vfprintf>
  402e0e:	90                   	nop
  402e0f:	90                   	nop

0000000000402e10 <abort>:
  402e10:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 409388 <__imp_abort>
  402e16:	90                   	nop
  402e17:	90                   	nop

0000000000402e18 <calloc>:
  402e18:	ff 25 72 65 00 00    	jmpq   *0x6572(%rip)        # 409390 <__imp_calloc>
  402e1e:	90                   	nop
  402e1f:	90                   	nop

0000000000402e20 <free>:
  402e20:	ff 25 82 65 00 00    	jmpq   *0x6582(%rip)        # 4093a8 <__imp_free>
  402e26:	90                   	nop
  402e27:	90                   	nop

0000000000402e28 <strncmp>:
  402e28:	ff 25 aa 65 00 00    	jmpq   *0x65aa(%rip)        # 4093d8 <__imp_strncmp>
  402e2e:	90                   	nop
  402e2f:	90                   	nop

0000000000402e30 <Sleep>:
  402e30:	ff 25 9a 64 00 00    	jmpq   *0x649a(%rip)        # 4092d0 <__imp_Sleep>
  402e36:	90                   	nop
  402e37:	90                   	nop

0000000000402e38 <SetUnhandledExceptionFilter>:
  402e38:	ff 25 8a 64 00 00    	jmpq   *0x648a(%rip)        # 4092c8 <__imp_SetUnhandledExceptionFilter>
  402e3e:	90                   	nop
  402e3f:	90                   	nop

0000000000402e40 <GetStartupInfoA>:
  402e40:	ff 25 32 64 00 00    	jmpq   *0x6432(%rip)        # 409278 <__imp_GetStartupInfoA>
  402e46:	90                   	nop
  402e47:	90                   	nop

0000000000402e48 <RtlAddFunctionTable>:
  402e48:	ff 25 5a 64 00 00    	jmpq   *0x645a(%rip)        # 4092a8 <__imp_RtlAddFunctionTable>
  402e4e:	90                   	nop
  402e4f:	90                   	nop

0000000000402e50 <VirtualQuery>:
  402e50:	ff 25 a2 64 00 00    	jmpq   *0x64a2(%rip)        # 4092f8 <__imp_VirtualQuery>
  402e56:	90                   	nop
  402e57:	90                   	nop

0000000000402e58 <VirtualProtect>:
  402e58:	ff 25 92 64 00 00    	jmpq   *0x6492(%rip)        # 4092f0 <__imp_VirtualProtect>
  402e5e:	90                   	nop
  402e5f:	90                   	nop

0000000000402e60 <GetLastError>:
  402e60:	ff 25 0a 64 00 00    	jmpq   *0x640a(%rip)        # 409270 <__imp_GetLastError>
  402e66:	90                   	nop
  402e67:	90                   	nop

0000000000402e68 <GetSystemTimeAsFileTime>:
  402e68:	ff 25 12 64 00 00    	jmpq   *0x6412(%rip)        # 409280 <__imp_GetSystemTimeAsFileTime>
  402e6e:	90                   	nop
  402e6f:	90                   	nop

0000000000402e70 <GetCurrentProcessId>:
  402e70:	ff 25 ea 63 00 00    	jmpq   *0x63ea(%rip)        # 409260 <__imp_GetCurrentProcessId>
  402e76:	90                   	nop
  402e77:	90                   	nop

0000000000402e78 <GetCurrentThreadId>:
  402e78:	ff 25 ea 63 00 00    	jmpq   *0x63ea(%rip)        # 409268 <__imp_GetCurrentThreadId>
  402e7e:	90                   	nop
  402e7f:	90                   	nop

0000000000402e80 <GetTickCount>:
  402e80:	ff 25 02 64 00 00    	jmpq   *0x6402(%rip)        # 409288 <__imp_GetTickCount>
  402e86:	90                   	nop
  402e87:	90                   	nop

0000000000402e88 <QueryPerformanceCounter>:
  402e88:	ff 25 12 64 00 00    	jmpq   *0x6412(%rip)        # 4092a0 <__imp_QueryPerformanceCounter>
  402e8e:	90                   	nop
  402e8f:	90                   	nop

0000000000402e90 <RtlCaptureContext>:
  402e90:	ff 25 1a 64 00 00    	jmpq   *0x641a(%rip)        # 4092b0 <__imp_RtlCaptureContext>
  402e96:	90                   	nop
  402e97:	90                   	nop

0000000000402e98 <RtlLookupFunctionEntry>:
  402e98:	ff 25 1a 64 00 00    	jmpq   *0x641a(%rip)        # 4092b8 <__imp_RtlLookupFunctionEntry>
  402e9e:	90                   	nop
  402e9f:	90                   	nop

0000000000402ea0 <RtlVirtualUnwind>:
  402ea0:	ff 25 1a 64 00 00    	jmpq   *0x641a(%rip)        # 4092c0 <__imp_RtlVirtualUnwind>
  402ea6:	90                   	nop
  402ea7:	90                   	nop

0000000000402ea8 <UnhandledExceptionFilter>:
  402ea8:	ff 25 3a 64 00 00    	jmpq   *0x643a(%rip)        # 4092e8 <__imp_UnhandledExceptionFilter>
  402eae:	90                   	nop
  402eaf:	90                   	nop

0000000000402eb0 <GetCurrentProcess>:
  402eb0:	ff 25 a2 63 00 00    	jmpq   *0x63a2(%rip)        # 409258 <__imp_GetCurrentProcess>
  402eb6:	90                   	nop
  402eb7:	90                   	nop

0000000000402eb8 <TerminateProcess>:
  402eb8:	ff 25 1a 64 00 00    	jmpq   *0x641a(%rip)        # 4092d8 <__imp_TerminateProcess>
  402ebe:	90                   	nop
  402ebf:	90                   	nop

0000000000402ec0 <EnterCriticalSection>:
  402ec0:	ff 25 8a 63 00 00    	jmpq   *0x638a(%rip)        # 409250 <__imp_EnterCriticalSection>
  402ec6:	90                   	nop
  402ec7:	90                   	nop

0000000000402ec8 <TlsGetValue>:
  402ec8:	ff 25 12 64 00 00    	jmpq   *0x6412(%rip)        # 4092e0 <__imp_TlsGetValue>
  402ece:	90                   	nop
  402ecf:	90                   	nop

0000000000402ed0 <LeaveCriticalSection>:
  402ed0:	ff 25 c2 63 00 00    	jmpq   *0x63c2(%rip)        # 409298 <__imp_LeaveCriticalSection>
  402ed6:	90                   	nop
  402ed7:	90                   	nop

0000000000402ed8 <DeleteCriticalSection>:
  402ed8:	ff 25 6a 63 00 00    	jmpq   *0x636a(%rip)        # 409248 <__IAT_start__>
  402ede:	90                   	nop
  402edf:	90                   	nop

0000000000402ee0 <InitializeCriticalSection>:
  402ee0:	ff 25 aa 63 00 00    	jmpq   *0x63aa(%rip)        # 409290 <__imp_InitializeCriticalSection>
  402ee6:	90                   	nop
  402ee7:	90                   	nop
  402ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402eef:	00 

0000000000402ef0 <main>:
  402ef0:	55                   	push   %rbp
  402ef1:	57                   	push   %rdi
  402ef2:	56                   	push   %rsi
  402ef3:	53                   	push   %rbx
  402ef4:	48 83 ec 48          	sub    $0x48,%rsp
  402ef8:	0f 29 74 24 20       	movaps %xmm6,0x20(%rsp)
  402efd:	0f 29 7c 24 30       	movaps %xmm7,0x30(%rsp)
  402f02:	be 03 00 00 00       	mov    $0x3,%esi
  402f07:	48 bb e9 fe ff ff ff 	movabs $0xffffffffffffee9,%rbx
  402f0e:	ff ff 0f 
  402f11:	e8 ea f5 ff ff       	callq  402500 <__main>
  402f16:	f2 0f 10 3d fa 20 00 	movsd  0x20fa(%rip),%xmm7        # 405018 <.rdata+0x18>
  402f1d:	00 
  402f1e:	f2 0f 10 35 ea 20 00 	movsd  0x20ea(%rip),%xmm6        # 405010 <.rdata+0x10>
  402f25:	00 
  402f26:	e8 ad e7 ff ff       	callq  4016d8 <_ZNSt6chrono3_V212steady_clock3nowEv>
  402f2b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f30:	48 89 c7             	mov    %rax,%rdi
  402f33:	eb 1a                	jmp    402f4f <main+0x5f>
  402f35:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402f3c:	00 00 00 00 
  402f40:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402f44:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
  402f49:	66 0f 2f f0          	comisd %xmm0,%xmm6
  402f4d:	72 39                	jb     402f88 <main+0x98>
  402f4f:	31 d2                	xor    %edx,%edx
  402f51:	48 89 d8             	mov    %rbx,%rax
  402f54:	48 f7 f1             	div    %rcx
  402f57:	48 85 d2             	test   %rdx,%rdx
  402f5a:	0f 84 90 00 00 00    	je     402ff0 <main+0x100>
  402f60:	48 83 c1 01          	add    $0x1,%rcx
  402f64:	79 da                	jns    402f40 <main+0x50>
  402f66:	48 89 ca             	mov    %rcx,%rdx
  402f69:	48 89 c8             	mov    %rcx,%rax
  402f6c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402f70:	48 d1 ea             	shr    %rdx
  402f73:	83 e0 01             	and    $0x1,%eax
  402f76:	48 09 c2             	or     %rax,%rdx
  402f79:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  402f7e:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  402f82:	66 0f 2f f0          	comisd %xmm0,%xmm6
  402f86:	73 c7                	jae    402f4f <main+0x5f>
  402f88:	bd 01 00 00 00       	mov    $0x1,%ebp
  402f8d:	e8 46 e7 ff ff       	callq  4016d8 <_ZNSt6chrono3_V212steady_clock3nowEv>
  402f92:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402f96:	48 8b 0d 13 23 00 00 	mov    0x2313(%rip),%rcx        # 4052b0 <__fu0__ZSt4cout>
  402f9d:	48 29 f8             	sub    %rdi,%rax
  402fa0:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  402fa5:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
  402fa9:	e8 32 e7 ff ff       	callq  4016e0 <_ZNSo9_M_insertIdEERSoT_>
  402fae:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  402fb4:	48 8d 15 45 20 00 00 	lea    0x2045(%rip),%rdx        # 405000 <.rdata>
  402fbb:	48 89 c1             	mov    %rax,%rcx
  402fbe:	e8 25 e7 ff ff       	callq  4016e8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
  402fc3:	40 84 ed             	test   %bpl,%bpl
  402fc6:	75 2c                	jne    402ff4 <main+0x104>
  402fc8:	83 ee 01             	sub    $0x1,%esi
  402fcb:	0f 85 55 ff ff ff    	jne    402f26 <main+0x36>
  402fd1:	0f 28 74 24 20       	movaps 0x20(%rsp),%xmm6
  402fd6:	31 c0                	xor    %eax,%eax
  402fd8:	0f 28 7c 24 30       	movaps 0x30(%rsp),%xmm7
  402fdd:	48 83 c4 48          	add    $0x48,%rsp
  402fe1:	5b                   	pop    %rbx
  402fe2:	5e                   	pop    %rsi
  402fe3:	5f                   	pop    %rdi
  402fe4:	5d                   	pop    %rbp
  402fe5:	c3                   	retq   
  402fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fed:	00 00 00 
  402ff0:	31 ed                	xor    %ebp,%ebp
  402ff2:	eb 99                	jmp    402f8d <main+0x9d>
  402ff4:	48 8b 0d b5 22 00 00 	mov    0x22b5(%rip),%rcx        # 4052b0 <__fu0__ZSt4cout>
  402ffb:	48 ba e9 fe ff ff ff 	movabs $0xffffffffffffee9,%rdx
  403002:	ff ff 0f 
  403005:	e8 e6 e6 ff ff       	callq  4016f0 <_ZNSo9_M_insertIyEERSoT_>
  40300a:	48 8d 15 f3 1f 00 00 	lea    0x1ff3(%rip),%rdx        # 405004 <.rdata+0x4>
  403011:	48 89 c1             	mov    %rax,%rcx
  403014:	e8 df e6 ff ff       	callq  4016f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  403019:	48 89 c1             	mov    %rax,%rcx
  40301c:	e8 df e6 ff ff       	callq  401700 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  403021:	eb a5                	jmp    402fc8 <main+0xd8>
  403023:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40302a:	84 00 00 00 00 00 

0000000000403030 <_GLOBAL__sub_I__Z14is_prime_floaty>:
  403030:	48 83 ec 28          	sub    $0x28,%rsp
  403034:	48 8d 0d f5 4f 00 00 	lea    0x4ff5(%rip),%rcx        # 408030 <_ZStL8__ioinit>
  40303b:	e8 c8 e6 ff ff       	callq  401708 <_ZNSt8ios_base4InitC1Ev>
  403040:	48 8d 0d a9 e4 ff ff 	lea    -0x1b57(%rip),%rcx        # 4014f0 <__tcf_0>
  403047:	48 83 c4 28          	add    $0x28,%rsp
  40304b:	e9 50 e8 ff ff       	jmpq   4018a0 <atexit>

0000000000403050 <__CTOR_LIST__>:
  403050:	ff                   	(bad)  
  403051:	ff                   	(bad)  
  403052:	ff                   	(bad)  
  403053:	ff                   	(bad)  
  403054:	ff                   	(bad)  
  403055:	ff                   	(bad)  
  403056:	ff                   	(bad)  
  403057:	ff 30                	pushq  (%rax)

0000000000403058 <.ctors>:
  403058:	30 30                	xor    %dh,(%rax)
  40305a:	40 00 00             	add    %al,(%rax)
	...

0000000000403068 <__DTOR_LIST__>:
  403068:	ff                   	(bad)  
  403069:	ff                   	(bad)  
  40306a:	ff                   	(bad)  
  40306b:	ff                   	(bad)  
  40306c:	ff                   	(bad)  
  40306d:	ff                   	(bad)  
  40306e:	ff                   	(bad)  
  40306f:	ff 00                	incl   (%rax)
  403071:	00 00                	add    %al,(%rax)
  403073:	00 00                	add    %al,(%rax)
  403075:	00 00                	add    %al,(%rax)
	...
