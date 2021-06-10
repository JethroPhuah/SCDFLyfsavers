## Introduction

Incorporating IoT and APIs, RoboHydrant aims to replace manual testing of all fire hydrants in Singapore and make SCDF's service delivery environmentally friendly by design.

![logo](/assets/logo_small.png)

## Features
### 1. Automated Opening / Closing of Pressure Valve

The opening of the hydrant's valve usually involves manual turning of the knob on the ground. This process can be automated by the robotic hardware which uses supplied power upon receiving a request from the server. Likewise, after the static pressure is collected, the valve can be closed in the same automated process.

### 2. Convenient Collection of Static Pressure

The appplication incorporates Geolocational API and the coordinates of the coordinates of the hydrants to track the pressures of each hydrant at each location. After collection of the static pressure via the SKU SEN0257 pressure sensor installed in them, the information will be stored in IBM Cloud Foundry and the mobile application will be updated with the latest pressure information of the hydrant. 

### 3. Warning System

On the occassion where the static pressure recorded is below the recommended/accepted range, a warning notification will be sent to alert the user to prompt him/her to perform a physical test instead.

## Cost Benefit Analysis
**Cost**:
Pressure sensor: [SKU SEN0257](https://www.lazada.sg/products/pressure-transducer-sensor-5v-0-12mpa-oil-fuel-for-gas-water-air-i1707141766-s8301716712.html?exlaz=d_1:mm_150050845_51350205_2010350205::12:12261804687!120300669351!!!pla-297963845945!c!297963845945!8301716712!246835596&gclid=Cj0KCQjw8IaGBhCHARIsAGIRRYoq1FUmIFjoIWZnba14NWspE8oEKZsy3A5ozo16NOfQBGQ6JD0tqv4aAkY_EALw_wcB) ~ $10
Microcontroller: [ESP32 with SIM800L shield](https://www.lazada.sg/products/ttgo-t-call-v13-esp32-wireless-module-gprs-antenna-sim-card-sim800l-board-i1289024606-s5350638598.html?exlaz=d_1:mm_150050845_51350205_2010350205::12:12266637336!116209940086!!!aud-942143542009:pla-297963845945!c!297963845945!5350638598!322763784&gclid=Cj0KCQjw8IaGBhCHARIsAGIRRYo_ZR2NiDUwjWE5vGMIHaT9YHsFg7sSKkRKMkt830Z6EDONivjhlGMaArYIEALw_wcB) ~$20 

Additional stuff: 
SIM card with 3G/4G/LTE ~ $10/month

Total fixed cost incurred for 100 hydrants: ~ $4000


**Benefits**: 

Assuming the total duration for a session of hydrant testing takes about 2 hours and a crew has 4 responders. <br>
Man-hours saved per month: 2 X 4 X 22 = 176 hours.

Assuming our hydrants put out around 3000 litres per minute; each hydrant test takes about 3 minutes; 100 hydrants tested each month. <br>
Total amount of water saved per month: 3000 X 3 X 100 = 900, 000 litres

[Cost of water](https://www.pub.gov.sg/watersupply/waterprice) ~ $2.74/1000 litres
Total savings from water/100 hydrants: 900 X 2.74 = $2466

As seen above, the total savings benefited is approximately 50% of the total fixed cost that is being incurred (not withstanding the man-hours saved per month). Thus, in the long run, SCDF will definitely be able to reap its benefits.

## Improvements before Grand Finals

1. Map will be included in mobile application for users to view and track each hydrant.
2. Hardware prototype to be completed.

## Conclusion

While the solution tackles the problem of utilising valuable resources to conduct manual hydrant testing, it is by no means a full elimination of manual checks. Instead, the solution is complementary to the current manual testing in place. While firefighters might be previously required to perform full manual hydrant testing every week, they can now do so on a monthly basis with the solution in place.
