# OunceOfPrevention
Paper archive for "Optimal Health Investment: An Ounce of Prevention at Half Price?"

Matthew N. White
(mnwecon@udel.edu)
July 31, 2018

Code replication instructions:
(More comprehensive, user-friendly instructions are coming)

1) Download and install Anaconda for Python 2.7

2) At a command prompt, install additional packages by typing:

conda install joblib
conda install dill
pip install opencl4py

On Windows, you might need to open the Anaconda prompt.

3) If your computer does not have an OpenCL platform installed, install one.
It is extremely likely that OpenCL is already installed on your computer, as
it is included in the drivers for most graphics cards manufactured since 2014,
including Intel integrated graphics chips, and all installations of Mac OSX since 2012.

4) In ./Python/JorgensenDruedahl3D.py, change the line that sets the environment
variable "PYOPENCL_CTX" to be the platform and device number of your choice.

TODO: Expand instructions on how to view list of devices.

5) In ./Python/HealthInvEstimation.py and ./Python/HealthInvCounterfactuals.py,
search for "num_jobs" (no quotes), and set this to an integer no greater than the
number of cores on your computer (and no higher than 10).  On a high end i7, the
code ran faster with num_jobs set to 5; on an AMD Threadripper (32 cores), the code
ran fastest with num_jobs=10.

6) To run estimation-type tasks, set the boolean flags near line 1000 of HealthInvEstimation.py
to choose what kind of work you want to do.  You will need to scroll down to see
specific details of what will be done and set variables as appropriate.

7) To run counterfactuals, set the boolean flags near line 600 of HealthInvCounterfactuals.py
to choose which exercises to run.  If you want to run new experiments, the code that is
there should guide you toward making new instances of SubsidyPolicy.