#include <pigpio.h>

int piGPIOInitialise() {
    return gpioInitialise();
}

void piGPIOTerminate() {
    return gpioTerminate();
}

int piGPIOSetMode(unsigned gpio, unsigned mode) {
    return gpioSetMode(gpio, mode);
}

int piGPIOGetMode(unsigned gpio) {
    return gpioGetMode(gpio);
}

int piGPIOSetPullUpDown(unsigned gpio, unsigned pud) {
    return gpioSetPullUpDown(gpio, pud);
}

int piGPIORead(unsigned gpio) {
    return gpioRead(gpio);
}

int piGPIOWrite(unsigned gpio, unsigned level) {
    return gpioWrite(gpio, level);
}

int piGPIOPWM(unsigned user_gpio, unsigned dutycycle) {
    return gpioPWM(user_gpio, dutycycle);
}

int piGPIOGetPWMdutycycle(unsigned user_gpio) {
    return gpioGetPWMdutycycle(user_gpio);
}

int piGPIOSetPWMrange(unsigned user_gpio, unsigned range) {
    return gpioSetPWMrange(user_gpio, range);
}

int piGPIOGetPWMrange(unsigned user_gpio) {
    return gpioGetPWMrange(user_gpio);
}

int piGPIOGetPWMrealRange(unsigned user_gpio) {
    return gpioGetPWMrealRange(user_gpio);
}

int piGPIOSetPWMfrequency(unsigned user_gpio, unsigned frequency) {
    return gpioSetPWMfrequency(user_gpio, frequency);
}

int piGPIOGetPWMfrequency(unsigned user_gpio) {
    return gpioGetPWMfrequency(user_gpio);
}

int piGPIOServo(unsigned user_gpio, unsigned pulsewidth) {
    return gpioServo(user_gpio, pulsewidth);
}

int piGPIOGetServoPulsewidth(unsigned user_gpio) {
    return gpioGetServoPulsewidth(user_gpio);
}

int piGPIOSetAlertFunc(unsigned user_gpio, gpioAlertFunc_t f) {
    return gpioSetAlertFunc(user_gpio, f);
}

int piGPIOSetAlertFuncEx(unsigned user_gpio, gpioAlertFuncEx_t f, void *userdata) {
    return gpioSetAlertFuncEx(user_gpio, f, userdata);
}

int piGPIOSetISRFunc(unsigned gpio, unsigned edge, int timeout, gpioISRFunc_t f) {
    return gpioSetISRFunc(gpio, edge, timeout, f);
}

int piGPIOSetISRFuncEx(unsigned gpio, unsigned edge, int timeout, gpioISRFuncEx_t f, void *userdata) {
    return gpioSetISRFuncEx(gpio, edge, timeout, f, userdata);
}

int piGPIONotifyOpen() {
    return gpioNotifyOpen();
}

int piGPIONotifyOpenWithSize(int bufSize) {
    return gpioNotifyOpenWithSize(bufSize);
}

int piGPIONotifyBegin(unsigned handle, uint32_t bits) {
    return gpioNotifyBegin(handle, bits);
}

int piGPIONotifyPause(unsigned handle) {
    return gpioNotifyPause(handle);
}

int piGPIONotifyClose(unsigned handle) {
    return gpioNotifyClose(handle);
}

int piGPIOWaveClear() {
    return gpioWaveClear();
}

int piGPIOWaveAddNew() {
    return gpioWaveAddNew();
}

int piGPIOWaveAddGeneric(unsigned numPulses, gpioPulse_t *pulses) {
    return gpioWaveAddGeneric(numPulses, pulses);
}

int piGPIOWaveAddSerial(
        unsigned user_gpio,
        unsigned baud,
        unsigned data_bits,
        unsigned stop_bits,
        unsigned offset,
        unsigned numBytes,
        char *str
) {
    return ;
}

int piGPIOWaveCreate() {
    return gpioWaveCreate();
}

int piGPIOWaveCreatePad(int pctCB, int pctBOOL, int pctTOOL) {
    return gpioWaveCreatePad(pctCB, pctBOOL, pctTOOL);
}

int piGPIOWaveDelete(unsigned wave_id) {
    return gpioWaveDelete(wave_id);
}

int piGPIOWaveTxSend(unsigned wave_id, unsigned wave_mode) {
    return gpioWaveTxSend(wave_id, wave_mode);
}

int piGPIOWaveChain(char *buf, unsigned bufSize) {
    return gpioWaveChain(*buf, bufSize);
}

int piGPIOWaveTxAt() {
    return gpioWaveTxAt();
}

int piGPIOWaveTxBusy() {
    return gpioWaveTxBusy();
}

int piGPIOWaveTxStop() {
    return gpioWaveTxStop();
}

int piGPIOWaveGetMicros() {
    return gpioWaveGetMicros();
}

int piGPIOWaveGetHighMicros() {
    return gpioWaveGetHighMicros();
}

int piGPIOWaveGetMaxMicros() {
    return gpioWaveGetMaxMicros();
}

int piGPIOWaveGetPulses() {
    return gpioWaveGetPulses();
}

int piGPIOWaveGetHighPulses() {
    return gpioWaveGetHighPulses();
}

int piGPIOWaveGetMaxPulses() {
    return gpioWaveGetMaxPulses();
}

int piGPIOWaveGetCbs() {
    return gpioWaveGetCbs();
}

int piGPIOWaveGetHighCbs() {
    return gpioWaveGetHighCbs();
}

int piGPIOWaveGetMaxCbs() {
    return gpioWaveGetMaxCbs();
}

int piGPIOSerialReadOpen(unsigned user_gpio, unsigned baud, unsigned data_bits) {
    return gpioSerialReadOpen(user_gpio, baud, data_bits);
}

int piGPIOSerialReadInvert(unsigned user_gpio, unsigned invert) {
    return gpioSerialReadInvert(user_gpio, invert);
}

int piGPIOSerialRead(unsigned user_gpio, void *buf, size_t bufSize) {
    return gpioSerialRead(user_gpio, buf, bufSize);
}

int piGPIOSerialReadClose(unsigned user_gpio) {
    return gpioSerialReadClose(user_gpio);
}

int pii2cOpen(unsigned i2cBus, unsigned i2cAddr, unsigned i2cFlags) {
    return i2cOpen(i2cBus, i2cAddr, i2cFlags);
}

int pii2cClose(unsigned handle) {
    return i2cClose(handle);
}

int pii2cWriteQuick(unsigned handle, unsigned bit) {
    return i2cWriteQuick(handle, bit);
}

int pii2cWriteByte(unsigned handle, unsigned bVal) {
    return i2cWriteByte(handle, bVal);
}

int pii2cReadByte(unsigned handle) {
    return i2cReadByte(handle);
}

int pii2cWriteByteData(unsigned handle, unsigned i2cReg, unsigned bVal) {
    return i2cWriteByteData(handle, i2cReg, bVal);
}

int pii2cWriteWordData(unsigned handle, unsigned i2cReg, unsigned wVal) {
    return i2cWriteWordData(handle, i2cReg, wVal);
}

int pii2cReadByteData(unsigned handle, unsigned i2cReg) {
    return i2cReadByteData(handle, i2cReg);
}

int pii2cReadWordData(unsigned handle, unsigned i2cReg) {
    return i2cReadWordData(handle, i2cReg);
}

int pii2cProcessCall(unsigned handle, unsigned i2cReg, unsigned wVal) {
    return i2cProcessCall(handle, i2cReg, wVal);
}

int pii2cWriteBlockData(unsigned handle, unsigned i2cReg, char *buf, unsigned count) {
    return i2cWriteBlockData(handle, i2cReg, buf, count);
}

int pii2cReadBlockData(unsigned handle, unsigned i2cReg, char *buf) {
    return i2cReadBlockData(handle, i2cReg, buf);
}

int pii2cBlockProcessCall(unsigned handle, unsigned i2cReg, char *buf, unsigned count) {
    return i2cBlockProcessCall(handle, i2cReg, buf, count);
}

int pii2cReadI2CBlockData(unsigned handle, unsigned i2cReg, char *buf, unsigned count) {
    return i2cReadI2CBlockData(handle, i2cReg, buf, count);
}

int pii2cWriteI2CBlockData(unsigned handle, unsigned i2cReg, char *buf, unsigned count) {
    return i2cWriteI2CBlockData(handle, i2cReg, buf, count);
}

int pii2cReadDevice(unsigned handle, char *buf, unsigned count) {
    return i2cReadDevice(handle, buf, count);
}

int pii2cWriteDevice(unsigned handle, char *buf, unsigned count) {
    return i2cWriteDevice(handle, buf, count);
}

void pii2cSwitchCombined(int setting) {
    return i2cSwitchCombined(setting);
}

int pii2cSegments(unsigned handle, pi_i2c_msg_t *segs, unsigned numSegs) {
    return i2cSegments(handle, segs, numSegs);
}

int pii2cZip(unsigned handle, char *inBuf, unsigned inLen, char *outBuf, unsigned outLen) {
    return i2cZip(handle, inBuf, inLen, outBuf, outLen);
}

int pibbI2COpen(unsigned SDA, unsigned SCL, unsigned baud) {
    return bbI2COpen(SDA, SCL, baud);
}

int pibbI2CClose(unsigned SDA) {
    return bbI2CClose(SDA);
}

int pibbI2CZip(unsigned SDA, char *inBuf, unsigned inLen, char *outBuf, unsigned outLen) {
    return bbI2CZip(SDA, inBuf, inLen, outBuf, outLen);
}

int pibscXfer(bsc_xfer_t *bsc_xfer) {
    return bscXfer(bsc_xfer);
}

int pibbSPIOpen(
        unsigned CS, unsigned MISO, unsigned MOSI, unsigned SCLK,
        unsigned baud, unsigned spiFlags) {
    return bbSPIOpen(CS, MISO, MOSI, SCLK, baud, spiFlags);
}

int pibbSPIClose(unsigned CS) {
    return bbSPIClose(CS);
}

int pibbSPIXfer(unsigned CS, char *inBuf, char *outBuf, unsigned count) {
    return bbSPIXfer(CS, inBuf, outBuf, count);
}

int piSpiOpen(unsigned spiChan, unsigned baud, unsigned spiFlags) {
    return spiOpen(spiChan, baud, spiFlags);
}

int piSpiClose(unsigned handle) {
    return spiClose(handle);
}

int piSpiRead(unsigned handle, char *buf, unsigned count) {
    return spiRead(handle, buf, count);
}

int piSpiWrite(unsigned handle, char *buf, unsigned count) {
    return spiWrite(handle, buf, count);
}

int piSpiXfer(unsigned handle, char *txBuf, char *rxBuf, unsigned count) {
    return spiXfer(handle, txBuf, rxBuf, count);
}

int piSerOpen(char *sertty, unsigned baud, unsigned serFlags) {
    return serOpen(*sertty, baud, serFlags);
}

int piSerClose(unsigned handle) {
    return serClose(handle);
}

int piSerWriteByte(unsigned handle, unsigned bVal) {
    return serWriteByte(handle, bVal);
}

int piSerReadByte(unsigned handle) {
    return serReadByte(handle);
}

int piSerWrite(unsigned handle, char *buf, unsigned count) {
    return serWrite(handle, buf, count);
}

int piSerRead(unsigned handle, char *buf, unsigned count) {
    return serRead(handle, buf, count);
}

int piSerDataAvailable(unsigned handle) {
    return serDataAvailable(handle);
}

int piGPIOTrigger(unsigned user_gpio, unsigned pulseLen, unsigned level) {
    return gpioTrigger(user_gpio, pulseLen, level);
}

int piGPIOSetWatchdog(unsigned user_gpio, unsigned timeout) {
    return gpioSetWatchdog(user_gpio, timeout);
}

int piGPIONoiseFilter(unsigned user_gpio, unsigned steady, unsigned active) {
    return gpioNoiseFilter(user_gpio, steady, active);
}

int piGPIOGlitchFilter(unsigned user_gpio, unsigned steady) {
    return gpioGlitchFilter(user_gpio, steady);
}

int piGPIOSetGetSamplesFunc(gpioGetSamplesFunc_t f, uint32_t bits) {
    return gpioSetGetSamplesFunc(f, bits);
}

int piGPIOSetGetSamplesFuncEx(gpioGetSamplesFuncEx_t f, uint32_t bits, void *userdata) {
    return gpioSetGetSamplesFuncEx(f, bits, userdata);
}

int piGPIOSetTimerFunc(unsigned timer, unsigned millis, gpioTimerFunc_t f) {
    return gpioSetTimerFunc(timer, millis, f);
}

int piGPIOSetTimerFuncEx(unsigned timer, unsigned millis, gpioTimerFuncEx_t f, void *userdata) {
    return gpioSetTimerFuncEx(timer, millis, f, userdata);
}

pthread_t *piGPIOStartThread(gpioThreadFunc_t f, void *userdata) {
    return gpioStartThread(f, userdata);
}

void piGPIOStopThread(pthread_t *pth) {
    return gpioStopThread(pth);
}

int piGPIOStoreScript(char *script) {
    return gpioStoreScript(script);
}

int piGPIORunScript(unsigned script_id, unsigned numPar, uint32_t *param) {
    return gpioRunScript(script_id, numPar, param);
}

int piGPIOUpdateScript(unsigned script_id, unsigned numPar, uint32_t *param) {
    return gpioUpdateScript(script_id, numPar, param);
}

int piGPIOScriptStatus(unsigned script_id, uint32_t *param) {
    return gpioScriptStatus(script_id, param);
}

int piGPIOStopScript(unsigned script_id) {
    return gpioStopScript(script_id);
}

int piGPIODeleteScript(unsigned script_id) {
    return gpioDeleteScript(script_id);
}

int piGPIOSetSignalFunc(unsigned signum, gpioSignalFunc_t f) {
    return gpioSetSignalFunc(signum, f);
}

int piGPIOSetSignalFuncEx(unsigned signum, gpioSignalFuncEx_t f, void *userdata) {
    return gpioSetSignalFuncEx(signum, f, userdata);
}

uint32_t piGPIORead_Bits_0_31() {
    return gpioRead_Bits_0_31();
}

uint32_t piGPIORead_Bits_32_53() {
    return gpioRead_Bits_32_53();
}

int piGPIOWrite_Bits_0_31_Clear(uint32_t bits) {
    return gpioWrite_Bits_0_31_Clear(bits);
}

int piGPIOWrite_Bits_32_53_Clear(uint32_t bits) {
    return gpioWrite_Bits_32_53_Clear(bits);
}

int piGPIOWrite_Bits_0_31_Set(uint32_t bits) {
    return gpioWrite_Bits_0_31_Set(bits);
}

int piGPIOWrite_Bits_32_53_Set(uint32_t bits) {
    return gpioWrite_Bits_32_53_Set(bits);
}

int piGPIOHardwareClock(unsigned gpio, unsigned clkfreq) {
    return gpioHardwareClock(gpio, clkfreq);
}

int piGPIOHardwarePWM(unsigned gpio, unsigned PWMfreq, unsigned PWMduty) {
    return gpioHardwarePWM(gpio, PWMfreq, PWMduty);
}

int piGPIOTime(unsigned timetype, int *seconds, int *micros) {
    return gpioTime(timetype, seconds, micros);
}

int piGPIOSleep(unsigned timetype, int seconds, int micros) {
    return gpioSleep(timetype, seconds, micros);
}

uint32_t piGPIODelay(uint32_t micros) {
    return gpioDelay(micros);
}

uint32_t piGPIOTick() {
    return gpioTick();
}

unsigned piGPIOHardwareRevision() {
    return gpioHardwareRevision();
}

unsigned piGPIOVersion() {
    return gpioVersion();
}

int piGPIOGetPad(unsigned pad) {
    return gpioGetPad(pad);
}

int piGPIOSetPad(unsigned pad, unsigned padStrength) {
    return gpioSetPad(pad, padStrength);
}

int piEventMonitor(unsigned handle, uint32_t bits) {
    return eventMonitor(handle, bits);
}

int piEventSetFunc(unsigned event, eventFunc_t f) {
    return eventSetFunc(event, f);
}

int piEventSetFuncEx(unsigned event, eventFuncEx_t f, void *userdata) {
    return eventSetFuncEx(event, f, userdata);
}

int piEventTrigger(unsigned event) {
    return eventTrigger(event);
}

int piShell(char *scriptName, char *scriptString) {
    return shell(*scriptName, scriptString);
}

int piFileOpen(char *file, unsigned mode) {
    return fileOpen(*file, mode);
}

int piFileClose(unsigned handle) {
    return fileClose(handle);
}

int piFileWrite(unsigned handle, char *buf, unsigned count) {
    return fileWrite(handle, buf, count);
}

int piFileRead(unsigned handle, char *buf, unsigned count) {
    return fileRead(handle, buf, count);
}

int piFileSeek(unsigned handle, int32_t seekOffset, int seekFrom) {
    return fileSeek(handle, seekOffset, seekFrom);
}

int piFileList(char *fpat, char *buf, unsigned count) {
    return fileList(fpat, buf, count);
}

int piGPIOCfgBufferSize(unsigned cfgMillis) {
    return gpioCfgBufferSize(cfgMillis);
}

int piGPIOCfgClock(unsigned cfgMicros, unsigned cfgPeripheral, unsigned cfgSource) {
    return gpioCfgClock(cfgMicros, cfgPeripheral, cfgSource);
}

int piGPIOCfgDMAchannel(unsigned DMAchannel) {
    return gpioCfgDMAchannel(DMAchannel);
}

int piGPIOCfgDMAchannels(unsigned primaryChannel, unsigned secondaryChannel) {
    return gpioCfgDMAchannels(primaryChannel, secondaryChannel);
}

int piGPIOCfgPermissions(uint64_t updateMask) {
    return gpioCfgPermissions(updateMask);
}

int piGPIOCfgSocketPort(unsigned port) {
    return gpioCfgSocketPort(port);
}

int piGPIOCfgInterfaces(unsigned ifFlags) {
    return gpioCfgInterfaces(ifFlags);
}

int piGPIOCfgMemAlloc(unsigned memAllocMode) {
    return gpioCfgMemAlloc(memAllocMode);
}

int piGPIOCfgNetAddr(int numSockAddr, uint32_t *sockAddr) {
    return gpioCfgNetAddr(numSockAddr, sockAddr);
}

uint32_t piGPIOCfgGetInternals() {
    return gpioCfgGetInternals();
}

int piGPIOCfgSetInternals(uint32_t cfgVal) {
    return gpioCfgSetInternals(cfgVal);
}

int piGPIOCustom1(unsigned arg1, unsigned arg2, char *argx, unsigned argc) {
    return gpioCustom1(arg1, arg2, argx, argc);
}

int piGPIOCustom2(unsigned arg1, char *argx, unsigned argc, char *retBuf, unsigned retMax) {
    return gpioCustom2(arg1, argx, argc, retBuf, retMax);
}

int piRawWaveAddSPI(
        rawSPI_t *spi,
        unsigned offset,
        unsigned spiSS,
        char *buf,
        unsigned spiTxBits,
        unsigned spiBitFirst,
        unsigned spiBitLast,
        unsigned spiBits
) {
    return ;
}

int piRawWaveAddGeneric(unsigned numPulses, rawWave_t *pulses) {
    return rawWaveAddGeneric(numPulses, pulses);
}

unsigned piRawWaveCB() {
    return rawWaveCB();
}

rawCbs_t *piRawWaveCBAdr(int cbNum) {
    return rawWaveCBAdr(cbNum);
}

uint32_t piRawWaveGetOOL(int pos) {
    return rawWaveGetOOL(pos);
}

void piRawWaveSetOOL(int pos, uint32_t lVal) {
    return rawWaveSetOOL(pos, lVal);
}

uint32_t piRawWaveGetOut(int pos) {
    return rawWaveGetOut(pos);
}

void piRawWaveSetOut(int pos, uint32_t lVal) {
    return rawWaveSetOut(pos, lVal);
}

uint32_t piRawWaveGetIn(int pos) {
    return rawWaveGetIn(pos);
}

void piRawWaveSetIn(int pos, uint32_t lVal) {
    return rawWaveSetIn(pos, lVal);
}

rawWaveInfo_t piRawWaveInfo(int wave_id) {
    return rawWaveInfo(wave_id);
}

int piGetBitInBytes(int bitPos, char *buf, int numBits) {
    return getBitInBytes(bitPos, buf, numBits);
}

void piPutBitInBytes(int bitPos, char *buf, int bit) {
    return putBitInBytes(bitPos, buf, bit);
}

double piTime_time() {
    return time_time();
}

void piTime_sleep(double seconds) {
    return time_sleep(seconds);
}

void piRawDumpWave() {
    return rawDumpWave();
}

void piRawDumpScript(unsigned script_id) {
    return rawDumpScript(script_id);
}