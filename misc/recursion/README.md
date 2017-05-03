# Recursion

I found out during a series of gut wretching tests and failures that recursion really isn't for me!
This directory will contain a few examples of recursion just to better myself with. I'm welcome!

So! Something interesting! Both the gcc && clang compiler packages will not do tail call optimisation
unless explicitly compiled with optimisations. You can see this by using

```bash
objdump -disassemble ./a.out
```

Try the above command on a binary compiled with no optimisations and then once compiled with -O1.
You'll notice the objdump of the actual function will contain a call whereas the optimised code
will contain a jmp.
