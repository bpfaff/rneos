$TITLE Stochastic Two-stage program

* TwoStageStochastic.gms: Stochastic Two-stage program.
* Consiglio, Nielsen and Zenios.
* PRACTICAL FINANCIAL OPTIMIZATION: A Library of GAMS Models, Section 6.3.1
* Last modified: Apr 2008.


SET Assets Available assets
   /Stock, Put_1, Call_1, Put_2, Call_2/;

SET Assets_1(Assets) Assets available up to the end of the first stage
   /Stock, Put_1, Call_1/;

SET Assets_2(Assets) Assets available up to the end of the second stage
   /Stock, Put_2, Call_2/;

SET Scenarios  Set of scenarios
   /SS_1 * SS_3/;

ALIAS (Assets, i );
ALIAS (Assets_1, j);
ALIAS (Assets_2, k);
ALIAS (Scenarios, l);

PARAMETER pr(l) Scenario probability
   /SS_1 = 0.25,
    SS_2 = 0.50,
    SS_3 = 0.25/;

PARAMETER P_1(j) Asset prices at the beginning of the first stage
   /Stock = 43,
    Put_1  = 0.81,
    Call_1 = 4.76/;


TABLE P_2(l,i) Asset prices (values) at the beginning of the second stage
            Stock   Put_1  Call_1   Put_2    Call_2
   SS_1     44      1      0        0.92     4.43
   SS_2     36      0      4        1.40     0.85
   SS_3     47      2      0        3.02     6.82;


TABLE V(l,k)  Asset prices (values) at the end of the second stage
            Stock   Put_2     Call_2
   SS_1     48      1         0
   SS_2     32      0         3
   SS_3     55      4         0;


POSITIVE VARIABLES
   x(j)       First-stage  holdings
   y(l,k)     Second-stage holdings;

VARIABLE
   z        Objective function value;


EQUATIONS
   BudgetCon            Equation defining the budget contraint
   ObjDef               Objective function definition
   MinReturnCon(l)      Equation defining the minimum return contraint
   RebalanceCon(l)      Equation defining the rebalance contraint;

ObjDef ..            z =E= SUM((k,l), pr(l) * V(l,k) * y(l,k));

BudgetCon ..         SUM(j, P_1(j) * x(j))   =L= 10000;

MinReturnCon(l) ..   SUM(k, V(l,k) * y(l,k)) =G= 11500;

RebalanceCon(l) ..   SUM(j, P_2(l,j) * x(j)) =G= SUM(k, P_2(l,k) * y(l,k));

MODEL StochasticTwoStage /ALL/;

SOLVE StochasticTwoStage MAXIMIZING z USING LP;

DISPLAY x.l,z.l;
