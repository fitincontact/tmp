-module(tst).
-export([double/1]).
-export([q/1]).
-export([f/1]).
double(X)->2*X.
q(X)->X*X.
f(1)->1;
f(X)->X*f(X-1).