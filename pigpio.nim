{.passL: "-lpigpio".}
{.passC: "-I.".}
{.compile: "pigpiowrapper.cpp".}

proc piGPIOInitialise*(): cint {.header: "pigpiowrapper.h", importcpp.}
