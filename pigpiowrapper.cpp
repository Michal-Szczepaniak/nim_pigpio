#include <pigpio.h>
#include "pigpiowrapper.h"

int piGPIOInitialise() {
    return gpioInitialise();
}