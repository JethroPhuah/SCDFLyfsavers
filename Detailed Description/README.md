## Introduction

Incorporating IoT and APIs, RoboHydrant aims to replace manual testing of all fire hydrants in Singapore and make SCDF's service delivery environmentally friendly by design.

![logo](/assets/logo_small.png)

## Features
### 1. Automated Opening / Closing of Pressure Valve

The opening of the hydrant's valve usually involves manual turning of the knob on the ground. This process can be automated by the robotic hardware which uses supplied power upon receiving a request from the server. Likewise, after the static pressure is collected, the valve can be closed in the same automated process.

### 2. Convenient Collection of Static Pressure

The appplication incorporates Geolocational API and the coordinates of the coordinates of the hydrants to track the pressures of each hydrant at each location. After collection of the static pressure via the DPS310 barometric pressure sensor installed in them, the information will be stored in IBM Cloud Foundry and the mobile application will be updated with the latest pressure information of the hydrant. 

### 3. Warning System

On the occassion where the static pressure recorded is below the recommended/accepted range, a warning notification will be sent to alert the user to prompt him/her to perform a physical test instead.

## Cost Benefit Analysis
**Cost**:


**Benefits**: 

Assuming the total duration for a session of hydrant testing takes about 2 hours and a crew has 4 responders. <br>
Man-hours saved per month: 2 X 4 X 22 = 176 hours.

Assuming our hydrants put out around 3000 litres per minute; each hydrant test takes about 3 minutes; 100 hydrants tested each monthIn other words, we are wasting more than 15000 litres of water if we are testing for it for a mere 5 minutes. <br>
Total amount of water saved per month: 3000 X 3 X 100 = 900, 000 litres

## Improvements before Grand Finals

1. Map will be included in mobile application for users to view and track each hydrant.
2. Hardware prototype to be completed.

## Conclusion

While the solution tackles the problem of utilising valuable resources to conduct manual hydrant testing, it is by no means a full elimination of manual checks. Instead, the solution is complementary to the current manual testing in place. While firefighters might be previously required to perform full manual hydrant testing every week, they can now do so on a monthly basis with the solution in place.
