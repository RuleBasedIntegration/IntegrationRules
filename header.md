# Rubi Integration Rules

This repository provides all Rubi integration rules in human readable form as PDF files.
Rubi systematically applies precisely defined rules to efficiently integrate a large class of mathematical expressions.
The rules are organized based on the type of the integrand and hierarchically arranged in the form of a decision tree.
By answering true-or-false questions in the tree, it is easy for a human or computer to determine exactly which of the 
more than 6600 rules is the right one to apply to a given integrand.

The rules are displayed in mathematical notation followed by the equivalent Mathematica program code.
The following types of comments precede many of the rules

- **Derivation** gives the integration technique used to derive a rule.
- **Basis** gives the mathematical identity used to transform the integrand into a form easier to integrate.
- **Reference** gives the number assigned to the rule in one or more of the following integration tables:
  - **G&R** is the ["Table of Integrals, Series, and Products"](https://isbnsearch.org/isbn/9780122947551),
   fifth edition, I.S. Gradshteyn, I.M. Ryzhik, and Alan Jeffrey, editors.
  - **CRC** is the ["CRC Standard Mathematical Tables and Formulae"](https://isbnsearch.org/isbn/9780849306297),
   29th edition, William H. Beyer, editor.
  - **A&S** is the ["Handbook of Mathematical Functions"](https://isbnsearch.org/isbn/9780486612720),
   Milton Abramowitz and Irene A. Stegun, editors.

In the following, you will find the complete outline of the organized rules. The outline reflects the directory structure
under the `PdfFiles` directory. If you seek a human readable outline, please view the [README.txt](README.txt) file.

