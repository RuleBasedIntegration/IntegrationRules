			Rubi's Integration Rules

The pdf files in this repository shows the integration rules Rubi uses in human readable form. 
Rubi systematically applies these precisely defined rules to efficiently integrate a large class 
of mathematical expressions. The rules are organized based on the type of the integrand and 
hierarchically arranged in the form of a decision tree. By answering true-or-false questions 
in the tree, it is possible for a human or computer to determine exactly which of the more 
than 6600 rules is the right one to apply to a given integrand.

The rules are displayed in mathematical notation followed by the equivalent Mathematica 
program code. The following types of comments precede many of the rules:

  Derivation gives the integration technique used to derive a rule.

  Basis gives the mathematical identity used to transform the integrand into a form easier 
    to integrate.

  Reference gives the number assigned to the rule in one or more of the following integration tables:
    G&R is the "Table of Integrals, Series, and Products", fifth edition, I.S. Gradshteyn, I.M. Ryzhik, 
      and Alan Jeffrey, editors.
    CRC is the "CRC Standard Mathematical Tables and Formulae", 29th edition, William H. Beyer, editor.
    A&S is the "Handbook of Mathematical Functions", Milton Abramowitz and Irene A. Stegun, editors.

The following is a complete list of the pdf files in this repository organized based on 
the form of the integrand. The indentation of the file names reflects the nesting of the 
repository's directories.

1 Algebraic functions
  1.1 Binomial products
    1.1.1 Linear
      1.1.1.1 (a+b x)^m
      1.1.1.2 (a+b x)^m (c+d x)^n
      1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p
      1.1.1.4 (a+b x)^m (c+d x)^n (e+f x)^p (g+h x)^q
      1.1.1.5 P(x) (a+b x)^m (c+d x)^n
    1.1.2 Quadratic
      1.1.2.x P(x) (a+b x^2)^p
      1.1.2.y P(x) (c x)^m (a+b x^2)^p
    1.1.3 General
      1.1.3.1 (a+b x^n)^p
      1.1.3.2 (c x)^m (a+b x^n)^p
      1.1.3.3 (a+b x^n)^p (c+d x^n)^q
      1.1.3.4 (e x)^m (a+b x^n)^p (c+d x^n)^q
      1.1.3.5 (a+b x^n)^p (c+d x^n)^q (e+f x^n)^r
      1.1.3.6 (g x)^m (a+b x^n)^p (c+d x^n)^q (e+f x^n)^r
      1.1.3.7 P(x) (a+b x^n)^p
      1.1.3.8 P(x) (c x)^m (a+b x^n)^p
    1.1.4 Improper
      1.1.4.1 (a x^j+b x^n)^p
      1.1.4.2 (c x)^m (a x^j+b x^n)^p
      1.1.4.3 (e x)^m (a x^j+b x^k)^p (c+d x^n)^q
      1.1.4.4 P(x) (c x)^m (a x^j+b x^n)^p
  1.2 Trinomial products
    1.2.1 Quadratic
      1.2.1.1 (a+b x+c x^2)^p
      1.2.1.2 (d+e x)^m (a+b x+c x^2)^p
      1.2.1.3 (d+e x)^m (f+g x) (a+b x+c x^2)^p
      1.2.1.4 (d+e x)^m (f+g x)^n (a+b x+c x^2)^p
      1.2.1.5 (a+b x+c x^2)^p (d+e x+f x^2)^q
      1.2.1.6 (g+h x)^m (a+b x+c x^2)^p (d+e x+f x^2)^q
      1.2.1.7 (a+b x+c x^2)^p (d+e x+f x^2)^q (A+B x+C x^2)
      1.2.1.8 P(x) (a+b x+c x^2)^p
      1.2.1.9 P(x) (d+e x)^m (a+b x+c x^2)^p
    1.2.2 Quartic
      1.2.2.1 (a+b x^2+c x^4)^p
      1.2.2.2 (d x)^m (a+b x^2+c x^4)^p
      1.2.2.3 (d+e x^2)^q (a+b x^2+c x^4)^p
      1.2.2.4 (f x)^m (d+e x^2)^q (a+b x^2+c x^4)^p
      1.2.2.5 P(x) (a+b x^2+c x^4)^p
      1.2.2.6 P(x) (d x)^m (a+b x^2+c x^4)^p
      1.2.2.7 P(x) (d+e x^2)^q (a+b x^2+c x^4)^p
    1.2.3 General
      1.2.3.1 (a+b x^n+c x^(2 n))^p
      1.2.3.2 (d x)^m (a+b x^n+c x^(2 n))^p
      1.2.3.3 (d+e x^n)^q (a+b x^n+c x^(2 n))^p
      1.2.3.4 (f x)^m (d+e x^n)^q (a+b x^n+c x^(2 n))^p
      1.2.3.5 P(x) (a+b x^n+c x^(2 n))^p
      1.2.3.6 P(x) (d x)^m (a+b x^n+c x^(2 n))^p
    1.2.4 Improper
      1.2.4.1 (a x^q+b x^n+c x^(2 n-q))^p
      1.2.4.2 (d x)^m (a x^q+b x^n+c x^(2 n-q))^p
      1.2.4.3 (d+e x^(n-q)) (a x^q+b x^n+c x^(2 n-q))^p
      1.2.4.4 (f x)^m (d+e x^(n-q)) (a x^q+b x^n+c x^(2 n-q))^p
  1.3 Miscellaneous
    1.3.1 P(x)^p
    1.3.2 P(x) Q(x)^p
    1.3.3 Miscellaneous algebraic functions
    1.3.4 Normalizing algebraic functions

2 Exponentials
  2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p
  2.2 (c+d x)^m (F^(g (e+f x)))^n (a+b (F^(g (e+f x)))^n)^p
  2.3 Miscellaneous exponentials

3 Logarithms
  3.1 u (a+b log(c x^n))^p
  3.2 u (a+b log(c (d+e x)^n))^p
  3.3 u (a+b log(c (d+e x^m)^n))^p
  3.4 u log(e (f (a+b x)^p (c+d x)^q)^r)^s
  3.5 Miscellaneous logarithms

4 Trig functions
  4.1 Sine
    4.1.0.1 (a sin)^m (b trg)^n
    4.1.0.2 (a trg)^m (b tan)^n
    4.1.0.3 (a csc)^m (b sec)^n
    4.1.1.1 (a+b sin)^n
    4.1.1.2 (g cos)^p (a+b sin)^m
    4.1.1.3 (g tan)^p (a+b sin)^m
    4.1.2.1 (a+b sin)^m (c+d sin)^n
    4.1.2.2 (g cos)^p (a+b sin)^m (c+d sin)^n
    4.1.2.3 (g sin)^p (a+b sin)^m (c+d sin)^n
    4.1.3.1 (a+b sin)^m (c+d sin)^n (A+B sin)
    4.1.4.1 (a+b sin)^m (A+B sin+C sin^2)
    4.1.4.2 (a+b sin)^m (c+d sin)^n (A+B sin+C sin^2)
    4.1.5 trig^m (a cos+b sin)^n
    4.1.6 (a+b cos+c sin)^n
    4.1.7 (d trig)^m (a+b (c sin)^n)^p
    4.1.8 trig^m (a+b cos^p+c sin^q)^n
    4.1.9 trig^m (a+b sin^n+c sin^(2 n))^p
    4.1.10 (c+d x)^m (a+b sin)^n
    4.1.11 (e x)^m (a+b x^n)^p sin
    4.1.12 (e x)^m (a+b sin(c+d x^n))^p
    4.1.13 (d+e x)^m sin(a+b x+c x^2)^n
  4.2 Tangent
    4.2.1.1 (a+b tan)^n
    4.2.1.2 (d sec)^m (a+b tan)^n
    4.2.1.3 (d sin)^m (a+b tan)^n
    4.2.2.1 (a+b tan)^m (c+d tan)^n
    4.2.2.3 (g tan)^p (a+b tan)^m (c+d tan)^n
    4.2.3.1 (a+b tan)^m (c+d tan)^n (A+B tan)
    4.2.4.1 (a+b tan)^m (A+B tan+C tan^2)
    4.2.4.2 (a+b tan)^m (c+d tan)^n (A+B tan+C tan^2)
    4.2.7 (d trig)^m (a+b (c tan)^n)^p
    4.2.9 trig^m (a+b tan^n+c tan^(2 n))^p
    4.2.10 (c+d x)^m (a+b tan)^n
    4.2.11 (e x)^m (a+b tan(c+d x^n))^p
    4.2.12 (d+e x)^m tan(a+b x+c x^2)^n
  4.3 Secant
    4.3.1.1 (a+b sec)^n
    4.3.1.2 (d sec)^n (a+b sec)^m
    4.3.1.3 (d sin)^n (a+b sec)^m
    4.3.1.4 (d tan)^n (a+b sec)^m
    4.3.2.1 (a+b sec)^m (c+d sec)^n
    4.3.2.2 (g sec)^p (a+b sec)^m (c+d sec)^n
    4.3.3.1 (a+b sec)^m (d sec)^n (A+B sec)
    4.3.4.1 (a+b sec)^m (A+B sec+C sec^2)
    4.3.4.2 (a+b sec)^m (d sec)^n (A+B sec+C sec^2)
    4.3.7 (d trig)^m (a+b (c sec)^n)^p
    4.3.9 trig^m (a+b sec^n+c sec^(2 n))^p
    4.3.10 (c+d x)^m (a+b sec)^n
    4.3.11 (e x)^m (a+b sec(c+d x^n))^p
  4.4 Miscellaneous
    4.1 Sine normalization rules
    4.2 Tangent normalization rules
    4.3 Secant normalization rules
    4.4.1 (c trig)^m (d trig)^n
    4.4.3 Inert trig functions
    4.4.5 (c+d x)^m trig(a+b x)^n trig(a+b x)^p
    4.4.6 F^(c (a+b x)) trig(d+e x)^n
    4.4.7 u trig(a+b log(c x^n))^p
    4.4.8 Active trig functions

5 Inverse trig functions
  5.1 Inverse sine
    5.1.1 (a+b arcsin(c x))^n
    5.1.2 (d x)^m (a+b arcsin(c x))^n
    5.1.3 (d+e x^2)^p (a+b arcsin(c x))^n
    5.1.4 (f x)^m (d+e x^2)^p (a+b arcsin(c x))^n
    5.1.5 u (a+b arcsin(c x))^n
    5.1.6 Miscellaneous inverse sine
  5.2 Inverse tangent
    5.2.1 u (a+b arctan(c x^n))^p
    5.2.2 u (a+b arctan(c+d x))^p
    5.2.3 Exponentials of inverse tangent
    5.2.4 Miscellaneous inverse tangent
  5.3 Inverse secant
    5.3.1 u (a+b arcsec(c x))^n
    5.3.2 Miscellaneous inverse secant

6 Hyperbolic functions
  6.1 Hyperbolic sine
    6.1.10 (c+d x)^m (a+b sinh)^n
    6.1.11 (e x)^m (a+b x^n)^p sinh
    6.1.12 (e x)^m (a+b sinh(c+d x^n))^p
    6.1.13 (d+e x)^m sinh(a+b x+c x^2)^n
  6.2 Hyperbolic tangent
    6.2.10 (c+d x)^m (a+b tanh)^n
    6.2.11 (e x)^m (a+b tanh(c+d x^n))^p
    6.2.12 (d+e x)^m tanh(a+b x+c x^2)^n
  6.3 Hyperbolic secant
    6.3.10 (c+d x)^m (a+b sech)^n
    6.3.11 (e x)^m (a+b sech(c+d x^n))^p
  6.4 Miscellaneous
    6.4.5 (c+d x)^m hyper(a+b x)^n hyper(a+b x)^p
    6.4.6 F^(c (a+b x)) hyper(d+e x)^n
    6.4.7 u hyper(a+b log(c x^n))^p
    6.4.8 Active hyperbolic functions

7 Inverse hyperbolic functions
  7.1 Inverse hyperbolic sine
    7.1.1 (a+b arcsinh(c x))^n
    7.1.2 (d x)^m (a+b arcsinh(c x))^n
    7.1.3 (d+e x^2)^p (a+b arcsinh(c x))^n
    7.1.4 (f x)^m (d+e x^2)^p (a+b arcsinh(c x))^n
    7.1.5 u (a+b arcsinh(c x))^n
    7.1.6 Miscellaneous inverse hyperbolic sine
  7.2 Inverse hyperbolic tangent
    7.2.1 u (a+b arctanh(c x^n))^p
    7.2.2 u (a+b arctanh(c+d x))^p
    7.2.3 Exponentials of inverse hyperbolic tangent
    7.2.4 Miscellaneous inverse hyperbolic tangent
  7.3 Inverse hyperbolic secant
    7.3.1 u (a+b arcsech(c x))^n
    7.3.2 Miscellaneous inverse hyperbolic secant

8 Special functions
  8.1 Error functions
  8.2 Fresnel integral functions
  8.3 Exponential integral functions
  8.4 Trig integral functions
  8.5 Hyperbolic integral functions
  8.6 Gamma functions
  8.7 Zeta function
  8.8 Polylogarithm function
  8.9 Product logarithm function

9 Miscellaneous
  9.1 Integrand simplification rules
  9.2 Derivative integration rules
  9.3 Piecewise linear functions
  9.4 Miscellaneous integration rules
