# Dr Quine
![enter image description 
here](https://live.staticflickr.com/65535/53005537311_5ab40c796e_c.jpg)
## Introduction
This project invites you to confront the principle of self-reproduction 
and the problems that derive from it. It is a perfect introduction to more 
complex projects, particularly malware projects. The subject confronts us 
with Fixed points, Kleene's recursion theorem and Quines.

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

## Kleene's recursion theorem

We do think that Kleene’s recursion theorem is the mathematical backbone of computer virology.
In computability theory, Kleene's recursion theorems are a pair of fundamental results about the application of computable functions to their own descriptions.
The theorems were first proved by Stephen Kleene in 1938 and appear in his 1952 book “Introduction to Metamathematics”.
The recursion theorems can be applied to construct fixed points of certain operations on computable functions, to generate quines, and to construct functions defined via recursive definitions.

## How I assimilated Fixed points to Quines

In the context of programming and the theory of programming languages, we 
have to understand this definition of a quine -> "A quine is a fixed point of an execution 
environment". We will define the keywords :

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
