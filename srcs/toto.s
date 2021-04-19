
a.out:     format de fichier elf64-x86-64


Déassemblage de la section .init :

0000000000400390 <_init>:
  400390:	48 83 ec 08          	sub    $0x8,%rsp
  400394:	48 8b 05 5d 0c 20 00 	mov    0x200c5d(%rip),%rax        # 600ff8 <__gmon_start__>
  40039b:	48 85 c0             	test   %rax,%rax
  40039e:	74 02                	je     4003a2 <_init+0x12>
  4003a0:	ff d0                	callq  *%rax
  4003a2:	48 83 c4 08          	add    $0x8,%rsp
  4003a6:	c3                   	retq   

Déassemblage de la section .text :

00000000004003b0 <_start>:
  4003b0:	31 ed                	xor    %ebp,%ebp
  4003b2:	49 89 d1             	mov    %rdx,%r9
  4003b5:	5e                   	pop    %rsi
  4003b6:	48 89 e2             	mov    %rsp,%rdx
  4003b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4003bd:	50                   	push   %rax
  4003be:	54                   	push   %rsp
  4003bf:	49 c7 c0 60 05 40 00 	mov    $0x400560,%r8
  4003c6:	48 c7 c1 f0 04 40 00 	mov    $0x4004f0,%rcx
  4003cd:	48 c7 c7 a0 04 40 00 	mov    $0x4004a0,%rdi
  4003d4:	ff 15 16 0c 20 00    	callq  *0x200c16(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  4003da:	f4                   	hlt    
  4003db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004003e0 <_dl_relocate_static_pie>:
  4003e0:	f3 c3                	repz retq 
  4003e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4003e9:	00 00 00 
  4003ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003f0 <deregister_tm_clones>:
  4003f0:	55                   	push   %rbp
  4003f1:	b8 28 10 60 00       	mov    $0x601028,%eax
  4003f6:	48 3d 28 10 60 00    	cmp    $0x601028,%rax
  4003fc:	48 89 e5             	mov    %rsp,%rbp
  4003ff:	74 17                	je     400418 <deregister_tm_clones+0x28>
  400401:	b8 00 00 00 00       	mov    $0x0,%eax
  400406:	48 85 c0             	test   %rax,%rax
  400409:	74 0d                	je     400418 <deregister_tm_clones+0x28>
  40040b:	5d                   	pop    %rbp
  40040c:	bf 28 10 60 00       	mov    $0x601028,%edi
  400411:	ff e0                	jmpq   *%rax
  400413:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400418:	5d                   	pop    %rbp
  400419:	c3                   	retq   
  40041a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400420 <register_tm_clones>:
  400420:	be 28 10 60 00       	mov    $0x601028,%esi
  400425:	55                   	push   %rbp
  400426:	48 81 ee 28 10 60 00 	sub    $0x601028,%rsi
  40042d:	48 89 e5             	mov    %rsp,%rbp
  400430:	48 c1 fe 03          	sar    $0x3,%rsi
  400434:	48 89 f0             	mov    %rsi,%rax
  400437:	48 c1 e8 3f          	shr    $0x3f,%rax
  40043b:	48 01 c6             	add    %rax,%rsi
  40043e:	48 d1 fe             	sar    %rsi
  400441:	74 15                	je     400458 <register_tm_clones+0x38>
  400443:	b8 00 00 00 00       	mov    $0x0,%eax
  400448:	48 85 c0             	test   %rax,%rax
  40044b:	74 0b                	je     400458 <register_tm_clones+0x38>
  40044d:	5d                   	pop    %rbp
  40044e:	bf 28 10 60 00       	mov    $0x601028,%edi
  400453:	ff e0                	jmpq   *%rax
  400455:	0f 1f 00             	nopl   (%rax)
  400458:	5d                   	pop    %rbp
  400459:	c3                   	retq   
  40045a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400460 <__do_global_dtors_aux>:
  400460:	80 3d c1 0b 20 00 00 	cmpb   $0x0,0x200bc1(%rip)        # 601028 <__TMC_END__>
  400467:	75 17                	jne    400480 <__do_global_dtors_aux+0x20>
  400469:	55                   	push   %rbp
  40046a:	48 89 e5             	mov    %rsp,%rbp
  40046d:	e8 7e ff ff ff       	callq  4003f0 <deregister_tm_clones>
  400472:	c6 05 af 0b 20 00 01 	movb   $0x1,0x200baf(%rip)        # 601028 <__TMC_END__>
  400479:	5d                   	pop    %rbp
  40047a:	c3                   	retq   
  40047b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400480:	f3 c3                	repz retq 
  400482:	0f 1f 40 00          	nopl   0x0(%rax)
  400486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40048d:	00 00 00 

0000000000400490 <frame_dummy>:
  400490:	55                   	push   %rbp
  400491:	48 89 e5             	mov    %rsp,%rbp
  400494:	5d                   	pop    %rbp
  400495:	eb 89                	jmp    400420 <register_tm_clones>
  400497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40049e:	00 00 

00000000004004a0 <main>:
  4004a0:	55                   	push   %rbp
  4004a1:	48 89 e5             	mov    %rsp,%rbp
  4004a4:	48 83 ec 10          	sub    $0x10,%rsp
  4004a8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4004af:	48 b8 74 05 40 00 00 	movabs $0x400574,%rax
  4004b6:	00 00 00 
  4004b9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4004bd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4004c1:	e8 0a 00 00 00       	callq  4004d0 <ft_strlen>
  4004c6:	48 83 c4 10          	add    $0x10,%rsp
  4004ca:	5d                   	pop    %rbp
  4004cb:	c3                   	retq   
  4004cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d0 <ft_strlen>:
  4004d0:	48 89 f8             	mov    %rdi,%rax
  4004d3:	bb 00 00 00 00       	mov    $0x0,%ebx

00000000004004d8 <_loop>:
  4004d8:	48 ff c0             	inc    %rax
  4004db:	48 ff c3             	inc    %rbx
  4004de:	8a 08                	mov    (%rax),%cl
  4004e0:	80 f9 00             	cmp    $0x0,%cl
  4004e3:	75 f3                	jne    4004d8 <_loop>
  4004e5:	48 89 d8             	mov    %rbx,%rax
  4004e8:	c3                   	retq   
  4004e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004f0 <__libc_csu_init>:
  4004f0:	41 57                	push   %r15
  4004f2:	41 56                	push   %r14
  4004f4:	49 89 d7             	mov    %rdx,%r15
  4004f7:	41 55                	push   %r13
  4004f9:	41 54                	push   %r12
  4004fb:	4c 8d 25 4e 09 20 00 	lea    0x20094e(%rip),%r12        # 600e50 <__frame_dummy_init_array_entry>
  400502:	55                   	push   %rbp
  400503:	48 8d 2d 4e 09 20 00 	lea    0x20094e(%rip),%rbp        # 600e58 <__init_array_end>
  40050a:	53                   	push   %rbx
  40050b:	41 89 fd             	mov    %edi,%r13d
  40050e:	49 89 f6             	mov    %rsi,%r14
  400511:	4c 29 e5             	sub    %r12,%rbp
  400514:	48 83 ec 08          	sub    $0x8,%rsp
  400518:	48 c1 fd 03          	sar    $0x3,%rbp
  40051c:	e8 6f fe ff ff       	callq  400390 <_init>
  400521:	48 85 ed             	test   %rbp,%rbp
  400524:	74 20                	je     400546 <__libc_csu_init+0x56>
  400526:	31 db                	xor    %ebx,%ebx
  400528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40052f:	00 
  400530:	4c 89 fa             	mov    %r15,%rdx
  400533:	4c 89 f6             	mov    %r14,%rsi
  400536:	44 89 ef             	mov    %r13d,%edi
  400539:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40053d:	48 83 c3 01          	add    $0x1,%rbx
  400541:	48 39 dd             	cmp    %rbx,%rbp
  400544:	75 ea                	jne    400530 <__libc_csu_init+0x40>
  400546:	48 83 c4 08          	add    $0x8,%rsp
  40054a:	5b                   	pop    %rbx
  40054b:	5d                   	pop    %rbp
  40054c:	41 5c                	pop    %r12
  40054e:	41 5d                	pop    %r13
  400550:	41 5e                	pop    %r14
  400552:	41 5f                	pop    %r15
  400554:	c3                   	retq   
  400555:	90                   	nop
  400556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40055d:	00 00 00 

0000000000400560 <__libc_csu_fini>:
  400560:	f3 c3                	repz retq 

Déassemblage de la section .fini :

0000000000400564 <_fini>:
  400564:	48 83 ec 08          	sub    $0x8,%rsp
  400568:	48 83 c4 08          	add    $0x8,%rsp
  40056c:	c3                   	retq   
