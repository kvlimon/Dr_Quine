# Dr Quine
![enter image description 
here](https://live.staticflickr.com/65535/53005537311_5ab40c796e_c.jpg)
## Introduction
This project invites you to confront the principle of self-reproduction 
and the problems that derive from it. It is a perfect introduction to more 
complex projects, particularly malware projects. The subject confronts us 
with fixed points, kleene's theorem and Quines.

## Quine
A **quine** is a computer program which takes no input and produces a copy 
of its own source code as its only output. The standard terms for these 
programs in the computability theory and  literature are "self-replicating 
programs", "self-reproducing programs", and "self-copying programs".

Of course the operation that consist of simply opening the source file and 
displaying it is considered cheating. More generally, a program that uses 
any data entry cannot be considered a valid quine. A trivial solution is a 
program whose source code is empty. Indeed, the execution of such a 
program produces for most languages no output, that is to say the source 
code of the program.

A quine is a **fixed point** of an **execution environment**, when the 
execution environment is viewed as a function transforming programs into 
their outputs. Quines are possible in any Turing-complete programming 
language, as a direct consequence of **Kleene's recursion theorem**.


## Fixed points & Kleene's theorem

**Kleene’s theorem** concerns functions that take an input value and 
return another output value. Some of these functions may have fixed 
points, that is, input values for which the output is identical to the 
input.

Let’s take an example to illustrate this. Suppose we have a very simple 
mathematical function that doubles a number. If we take the number 2 and 
apply it to this function, we get 4. If we take 4 again and apply it to 
the function, we get 8. This sequence can continue indefinitely: 2, 4, 8, 
16, 32, and so on. However, if we take the number 0 and apply it to this 
function, we always get 0. This is called a **fixed point**.

**Kleene’s theorem** states that for any computable function there is a 
fixed point. In other words, if we have a function that we can compute 
algorithmically, we can find an input value for which the output is 
identical to the input.

## How I assimilated Fixed points, Kleene's theorem to Quines

In the context of programming and the theory of programming languages, we 
have to understand this sentence "Fixed point of an execution 
environment". We will define the key words :

**<u>Execution environment</u>**: The execution environment refers to all 
the resources and parameters required to run a computer program. It 
includes elements such as memory, variables, libraries, processes, etc.

**<u>Fixed point</u>**: A fixed point is a value or state in a system 
where a function or transformation retains its value, that is, it does not 
change when applied at that point. In other words, a function F has a 
fixed point x if F(x) = x.

In the specific context of the phrase "fixed point of an execution 
environment", i assume that F actually represents the execution 
environment itself, and x the quine program.
