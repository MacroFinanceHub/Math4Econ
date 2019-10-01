%% Exponential Function and Log Function
% *Back to *<http://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Economist Table of Content*>
% 
% We use log for log utility in our <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% household maximization problems>, and we use exponential functions with other 
% bases for <https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html 
% production functions>. 
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/explog/exponential.html 
% Exponential and Infinitely Compounding Interest Rate>.
%% Log and Exponential
% If the natural log of $x$ is $y$ (in economics we generally just write ln 
% and log interchangeably, becareful though, google thinks function log means 
% log with base 10, matlab thinks function log means base e, you will get different 
% numbers typing in log(10) in google and matlab).
%% 
% * $\ln(x) = y$
%% 
% then
%% 
% * $e^y = x$
%% 
% we can write:
%% 
% * $e^x = \exp(x)$, writing $\exp(x)$ is a little easier to read, means just 
% $e$ to the power of $x$
%% 
% because of this:
%% 
% * since $e^0 = 1$, $\log(1) = 0$
% * since $e^1 \approx 2.718$, $\log(2.718) \approx 1$
%% 
% The natural log is just the inverse of the expoential function, 
% 
% We use log to linearize exponential functions, which allows us to do regressions 
% afterwards for example.
%% Log Rules
% Suppose we have: $\log \left(\frac{\exp(A + \epsilon)\cdot a^{\alpha}\cdot 
% b^{\beta}}{c^{\theta}\cdot d^{\phi}} \right)$
% 
% This looks complicated, but because there is log, we can take the equation 
% apart:
% 
% $$\log \left(\frac{\exp(A + \epsilon)\cdot a^{\alpha}\cdot b^{\beta}}{c^{\theta}\cdot 
% d^{\phi}} \right) = (A+\epsilon) + \alpha \cdot \log(a) + \beta \cdot \log(b) 
% - \theta \cdot \log( c) - \phi \cdot \log(d)$$
% 
% Generally (:
%% 
% * $\log(\exp(A))=A$
% * $\log(x^\alpha) = \alpha\cdot\log(x)$
% * $\log(x \cdot y) = \log(x) + \log(y)$
% * $\log(\frac{x}{y}) = \log(x) - \log(y)$
%% Why does $\log(x \cdot y) = \log(x) + \log(y)$?
% Why is the log of the product of two numbers the same as the sum of the log 
% of each of the two numbers? Intuitively, because we can write $x\cdot y$ as 
% the exponential of a sum: when $e^a \cdot e^b$, even though it's multiplication, 
% it is also just $e^{a+b}$, the exponential of a sum.
%% 
% * *Rule*: $\log(x \cdot y) = \log(x) + \log(y)$
%% 
% We can write separately what each term equals to as:
%% 
% # $\log(x\cdot y ) = z$
% # $\log(x) = z_x$
% # $\log(y) = z_y$
%% 
% By definition, for each of the three terms above:
%% 
% # $x\cdot y = \exp(z)$
% # $x = \exp(z_x)$
% # $y = \exp(z_y)$
%% 
% So:
%% 
% * $\log(x \cdot y) = \log( \exp(z_x) \cdot \exp(z_y))$
%% 
% Given that: $e^a \cdot e^b = e^{a+b}$, and $\log(\exp(x))=x$:
%% 
% * $\log(x \cdot y) = \log( \exp(z_x) \cdot \exp(z_y)) = \log(\exp(z_x + z_y)) 
% = (z_x + z_y)$
%% 
% Hence:
%% 
% * $\log(x\cdot y ) = z = (z_x + z_y) = \log(x) + \log(y)$
%% Why does $\log(x^a) = a\cdot \log(x)$?
% Why is the log of an exponential term equal to the power times the log of 
% the base of the exponential? Intuitively, because we can re-write any positive 
% number as base $e$ to the power of a coefficient:
% 
% We start with:
%% 
% * $\log(x^a) = z$
%% 
% Note that $x$ must be positive, otherwide log of zero of negative numbers 
% are undefined. Hence, let $x=e^b$, by shifting $b$, $e^b$ can be equal to any 
% positive number $x$. Then we have:
%% 
% * $\log\left(\left(e^b\right)^a\right) = z$
%% 
% Given that $\log(x^a) = z$ can be rewritten as $x^a = e^z$
%% 
% # $\log(x^a) = z$, $x=e^b$
% # $\log\left(\left(e^b\right)^a\right) = z$
% # $x^a = e^{b\cdot a} =  e^z$
% # $b\cdot a = z$
%% 
% Having defined $x=e^b$, that means $\log(x)=b$. Hence $b\cdot a = z$ means 
% that:
%% 
% * $a \cdot log(x) = z = log(x^a)$
%% For Variables that Grow, Log difference is close to rate of change
% Suppose that growth rate is $x$ percent per year, after 5 years, the gdp will 
% be:
%% 
% * $Y_{1995} = Y_{1990} \cdot (1 + x)^5$
%% 
% We can take log on both sides:
%% 
% * $\ln (Y_{1995}) = \ln(Y_{1990}) + 5 \cdot \ln (1 + x)$
%% 
% Which says that the difference in GDP between these two years divided by 5 
% is equal to the log of $1$ plus the growth rate.
% 
% Approximately, for $x$ small:
%% 
% * $\frac{\ln (Y_{1995}) - \ln (Y_{1990})}{5} = \ln (1+x) \approx  x$
%% 
% For example:

x_vec = linspace(0,0.10,10);
log(1+ x_vec)
x_vec
%% 
% *Note:* This is a bad approximation if $x$ is large. For example, we know 
% that $\ln(2.718) = \ln(1 + 1.718) \approx 1$ is almost exact. But the approximation 
% here would have said $\ln(1 + 1.718) \approx 1.718$, which is very incorrect.
% 
% % 
%