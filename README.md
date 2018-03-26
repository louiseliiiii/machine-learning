# machine-learning
The purpose of this assignment is to teach your computer to distinguish between red and blue points in 2D. This is an example of linear discriminant analysis. For further information about this topic, look at the book \Elements of Statistical Learning" by Hastie et. al which is available online for free.



1. RSS(β) = 1.732391700958413e+02
RSS(β) is equal to the sum of (y-Aβ)^2 for all β. β helps to show the least square estimate. Small
RSS indicates tight fit of model but the RSS here is about 173 which is big. The figure also shows
the fit is not tight as well.

2. Plot of training_set Data
The black line seems separates most of red
points and blue points. In the other word, the red
points mainly distribute on the left side of black
line and the blue points are mostly in the right
side of black line. In addition, both red and blue
points mainly distribute near the black line.
There are less points in the area where is farther
from the black line.

3. Value of Err(β)= 0.120000000000000

4. How z_head predicts z?
z_head is obtained by the value of v which is the solution of B times β. I tried to plot the test data
based on z as well and I obtained a similar plot with above figure but z_head will provide a clear
boundary of blue and red points. z and z_head are 70% same. I did not find any liner of other
relationship between z and z_head.

5. Plot of testing_Set Data
Observation:
The black line strictly separates red and blue points.
All red points are in the right side and all blue
points are in the left side and there are few points
are on the line.
