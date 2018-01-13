# SGenP
Here, the codes are written for the feature exchange and key genearation between two sensors in an intra-BSN (Body Sensor Network). The IPIs (Inter Pulse Interval) of two sensors of the same body collected at the same time match by 75%. A secret session key is generated using a set of common IPIs at both the sensors.

For a sensor(Pi), ECG data set is taken directly from the MIT-BIH Arrhythmia database (https://physionet.org/cgi-bin/atm/ATM) and for another sensor(Pj ) at the same patient slightly differ ECG data set has been generated.

The feature generation of the proposed protocol is same as OPFKA (http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6567031) but the feature excahnge method.
