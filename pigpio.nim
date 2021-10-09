{.passL: "-lpigpio".}
{.compile: "pigpiowrapper.c".}

const
  PIGPIO_VERSION* = 79
  PI_INPFIFO* = "/dev/pigpio"
  PI_OUTFIFO* = "/dev/pigout"
  PI_ERRFIFO* = "/dev/pigerr"
  PI_ENVPORT* = "PIGPIO_PORT"
  PI_ENVADDR* = "PIGPIO_ADDR"
  PI_LOCKFILE* = "/var/run/pigpio.pid"
  PI_I2C_COMBINED* = "/sys/module/i2c_bcm2708/parameters/combined"
  WAVE_FLAG_READ* = 1
  WAVE_FLAG_TICK* = 2
  BSC_FIFO_SIZE* = 512
  PI_MIN_GPIO* = 0
  PI_MAX_GPIO* = 53
  PI_MAX_USER_GPIO* = 31
  PI_OFF* = 0
  PI_ON* = 1
  PI_CLEAR* = 0
  PI_SET* = 1
  PI_LOW* = 0
  PI_HIGH* = 1
  PI_TIMEOUT* = 2
  PI_INPUT* = 0
  PI_OUTPUT* = 1
  PI_ALT0* = 4
  PI_ALT1* = 5
  PI_ALT2* = 6
  PI_ALT3* = 7
  PI_ALT4* = 3
  PI_ALT5* = 2
  PI_PUD_OFF* = 0
  PI_PUD_DOWN* = 1
  PI_PUD_UP* = 2
  PI_DEFAULT_DUTYCYCLE_RANGE* = 255
  PI_MIN_DUTYCYCLE_RANGE* = 25
  PI_MAX_DUTYCYCLE_RANGE* = 40000
  PI_SERVO_OFF* = 0
  PI_MIN_SERVO_PULSEWIDTH* = 500
  PI_MAX_SERVO_PULSEWIDTH* = 2500
  PI_HW_PWM_MIN_FREQ* = 1
  PI_HW_PWM_MAX_FREQ* = 125000000
  PI_HW_PWM_MAX_FREQ_2711* = 187500000
  PI_HW_PWM_RANGE* = 1000000
  PI_HW_CLK_MIN_FREQ* = 4689
  PI_HW_CLK_MIN_FREQ_2711* = 13184
  PI_HW_CLK_MAX_FREQ* = 250000000
  PI_HW_CLK_MAX_FREQ_2711* = 375000000
  PI_NOTIFY_SLOTS* = 32
  PI_WAVE_BLOCKS* = 4
  PI_WAVE_MAX_PULSES* = (PI_WAVE_BLOCKS * 3000)
  PI_WAVE_MAX_CHARS* = (PI_WAVE_BLOCKS *  300)
  PI_BB_I2C_MIN_BAUD* = 50
  PI_BB_I2C_MAX_BAUD* = 500000
  PI_BB_SPI_MIN_BAUD* = 50
  PI_BB_SPI_MAX_BAUD* = 250000
  PI_BB_SER_MIN_BAUD* = 50
  PI_BB_SER_MAX_BAUD* = 250000
  PI_BB_SER_NORMAL* = 0
  PI_BB_SER_INVERT* = 1
  PI_WAVE_MIN_BAUD* = 50
  PI_WAVE_MAX_BAUD* = 1000000
  PI_SPI_MIN_BAUD* = 32000
  PI_SPI_MAX_BAUD* = 125000000
  PI_MIN_WAVE_DATABITS* = 1
  PI_MAX_WAVE_DATABITS* = 32
  PI_MIN_WAVE_HALFSTOPBITS* = 2
  PI_MAX_WAVE_HALFSTOPBITS* = 8
  PI_WAVE_MAX_MICROS* = (30 * 60 * 1000000)
  PI_MAX_WAVES* = 250
  PI_MAX_WAVE_CYCLES* = 65535
  PI_MAX_WAVE_DELAY* = 65535
  PI_WAVE_COUNT_PAGES* = 10
  PI_WAVE_MODE_ONE_SHOT* = 0
  PI_WAVE_MODE_REPEAT* = 1
  PI_WAVE_MODE_ONE_SHOT_SYNC* = 2
  PI_WAVE_MODE_REPEAT_SYNC* = 3
  PI_WAVE_NOT_FOUND* = 9998
  PI_NO_TX_WAVE* = 9999
  PI_FILE_SLOTS* = 16
  PI_I2C_SLOTS* = 512
  PI_SPI_SLOTS* = 32
  PI_SER_SLOTS* = 16
  PI_MAX_I2C_ADDR* = 0x7F
  PI_NUM_AUX_SPI_CHANNEL* = 3
  PI_NUM_STD_SPI_CHANNEL* = 2
  PI_I2C_RDRW_IOCTL_MAX_MSGS* = 42
  PI_I2C_M_WR* = 0x0000
  PI_I2C_M_RD* = 0x0001
  PI_I2C_M_TEN* = 0x0010
  PI_I2C_M_RECV_LEN* = 0x0400
  PI_I2C_M_NO_RD_ACK* = 0x0800
  PI_I2C_M_IGNORE_NAK* = 0x1000
  PI_I2C_M_REV_DIR_ADDR* = 0x2000
  PI_I2C_M_NOSTART* = 0x4000
  PI_I2C_END* = 0
  PI_I2C_ESC* = 1
  PI_I2C_START* = 2
  PI_I2C_COMBINED_ON* = 2
  PI_I2C_STOP* = 3
  PI_I2C_COMBINED_OFF* = 3
  PI_I2C_ADDR* = 4
  PI_I2C_FLAGS* = 5
  PI_I2C_READ* = 6
  PI_I2C_WRITE* = 7
  BSC_DR* = 0
  BSC_RSR* = 1
  BSC_SLV* = 2
  BSC_CR* = 3
  BSC_FR* = 4
  BSC_IFLS* = 5
  BSC_IMSC* = 6
  BSC_RIS* = 7
  BSC_MIS* = 8
  BSC_ICR* = 9
  BSC_DMACR* = 10
  BSC_TDR* = 11
  BSC_GPUSTAT* = 12
  BSC_HCTRL* = 13
  BSC_DEBUG_I2C* = 14
  BSC_DEBUG_SPI* = 15
  BSC_CR_TESTFIFO* = 2048
  BSC_CR_RXE* = 512
  BSC_CR_TXE* = 256
  BSC_CR_BRK* = 128
  BSC_CR_CPOL* = 16
  BSC_CR_CPHA* = 8
  BSC_CR_I2C* = 4
  BSC_CR_SPI* = 2
  BSC_CR_EN* = 1
  BSC_FR_RXBUSY* = 32
  BSC_FR_TXFE* = 16
  BSC_FR_RXFF* = 8
  BSC_FR_TXFF* = 4
  BSC_FR_RXFE* = 2
  BSC_FR_TXBUSY* = 1
  BSC_SDA* = 18
  BSC_MOSI* = 20
  BSC_SCL_SCLK* = 19
  BSC_MISO* = 18
  BSC_CE_N* = 21
  BSC_SDA_2711* = 10
  BSC_MOSI_2711* = 9
  BSC_SCL_SCLK_2711* = 11
  BSC_MISO_2711* = 10
  BSC_CE_N_2711* = 8
  PI_MAX_BUSY_DELAY* = 100
  PI_MIN_WDOG_TIMEOUT* = 0
  PI_MAX_WDOG_TIMEOUT* = 60000
  PI_MIN_TIMER* = 0
  PI_MAX_TIMER* = 9
  PI_MIN_MS* = 10
  PI_MAX_MS* = 60000
  PI_MAX_SCRIPTS* = 32
  PI_MAX_SCRIPT_TAGS* = 50
  PI_MAX_SCRIPT_VARS* = 150
  PI_MAX_SCRIPT_PARAMS* = 10
  PI_SCRIPT_INITING* = 0
  PI_SCRIPT_HALTED* = 1
  PI_SCRIPT_RUNNING* = 2
  PI_SCRIPT_WAITING* = 3
  PI_SCRIPT_FAILED* = 4
  PI_MIN_SIGNUM* = 0
  PI_MAX_SIGNUM* = 63
  PI_TIME_RELATIVE* = 0
  PI_TIME_ABSOLUTE* = 1
  PI_MAX_MICS_DELAY* = 1000000
  PI_MAX_MILS_DELAY* = 60000
  PI_BUF_MILLIS_MIN* = 100
  PI_BUF_MILLIS_MAX* = 10000
  PI_CLOCK_PWM* = 0
  PI_CLOCK_PCM* = 1
  PI_MIN_DMA_CHANNEL* = 0
  PI_MAX_DMA_CHANNEL* = 15
  PI_MIN_SOCKET_PORT* = 1024
  PI_MAX_SOCKET_PORT* = 32000
  PI_DISABLE_FIFO_IF* = 1
  PI_DISABLE_SOCK_IF* = 2
  PI_LOCALHOST_SOCK_IF* = 4
  PI_DISABLE_ALERT* = 8
  PI_MEM_ALLOC_AUTO* = 0
  PI_MEM_ALLOC_PAGEMAP* = 1
  PI_MEM_ALLOC_MAILBOX* = 2
  PI_MAX_STEADY* = 300000
  PI_MAX_ACTIVE* = 1000000
  PI_CFG_DBG_LEVEL* = 0
  PI_CFG_ALERT_FREQ* = 4
  RISING_EDGE* = 0
  FALLING_EDGE* = 1
  EITHER_EDGE* = 2
  PI_MAX_PAD* = 2
  PI_MIN_PAD_STRENGTH* = 1
  PI_MAX_PAD_STRENGTH* = 16
  PI_FILE_NONE* = 0
  PI_FILE_MIN* = 1
  PI_FILE_READ* = 1
  PI_FILE_WRITE* = 2
  PI_FILE_RW* = 3
  PI_FILE_APPEND* = 4
  PI_FILE_CREATE* = 8
  PI_FILE_TRUNC* = 16
  PI_FILE_MAX* = 31
  PI_FROM_START* = 0
  PI_FROM_CURRENT* = 1
  PI_FROM_END* = 2
  MAX_CONNECT_ADDRESSES* = 256
  PI_MAX_EVENT* = 31
  PI_EVENT_BSC* = 31
  MSG_LEN* = 8
  WAVES* = 5
  GPIO* = 4
  CE0* = 5
  CE1* = 6
  MISO* = 13
  MOSI* = 19
  SCLK* = 12
  PI_CMD_MODES* = 0
  PI_CMD_MODEG* = 1
  PI_CMD_PUD* = 2
  PI_CMD_READ* = 3
  PI_CMD_WRITE* = 4
  PI_CMD_PWM* = 5
  PI_CMD_PRS* = 6
  PI_CMD_PFS* = 7
  PI_CMD_SERVO* = 8
  PI_CMD_WDOG* = 9
  PI_CMD_BR1* = 10
  PI_CMD_BR2* = 11
  PI_CMD_BC1* = 12
  PI_CMD_BC2* = 13
  PI_CMD_BS1* = 14
  PI_CMD_BS2* = 15
  PI_CMD_TICK* = 16
  PI_CMD_HWVER* = 17
  PI_CMD_NO* = 18
  PI_CMD_NB* = 19
  PI_CMD_NP* = 20
  PI_CMD_NC* = 21
  PI_CMD_PRG* = 22
  PI_CMD_PFG* = 23
  PI_CMD_PRRG* = 24
  PI_CMD_HELP* = 25
  PI_CMD_PIGPV* = 26
  PI_CMD_WVCLR* = 27
  PI_CMD_WVAG* = 28
  PI_CMD_WVAS* = 29
  PI_CMD_WVGO* = 30
  PI_CMD_WVGOR* = 31
  PI_CMD_WVBSY* = 32
  PI_CMD_WVHLT* = 33
  PI_CMD_WVSM* = 34
  PI_CMD_WVSP* = 35
  PI_CMD_WVSC* = 36
  PI_CMD_TRIG* = 37
  PI_CMD_PROC* = 38
  PI_CMD_PROCD* = 39
  PI_CMD_PROCR* = 40
  PI_CMD_PROCS* = 41
  PI_CMD_SLRO* = 42
  PI_CMD_SLR* = 43
  PI_CMD_SLRC* = 44
  PI_CMD_PROCP* = 45
  PI_CMD_MICS* = 46
  PI_CMD_MILS* = 47
  PI_CMD_PARSE* = 48
  PI_CMD_WVCRE* = 49
  PI_CMD_WVDEL* = 50
  PI_CMD_WVTX* = 51
  PI_CMD_WVTXR* = 52
  PI_CMD_WVNEW* = 53
  PI_CMD_I2CO* = 54
  PI_CMD_I2CC* = 55
  PI_CMD_I2CRD* = 56
  PI_CMD_I2CWD* = 57
  PI_CMD_I2CWQ* = 58
  PI_CMD_I2CRS* = 59
  PI_CMD_I2CWS* = 60
  PI_CMD_I2CRB* = 61
  PI_CMD_I2CWB* = 62
  PI_CMD_I2CRW* = 63
  PI_CMD_I2CWW* = 64
  PI_CMD_I2CRK* = 65
  PI_CMD_I2CWK* = 66
  PI_CMD_I2CRI* = 67
  PI_CMD_I2CWI* = 68
  PI_CMD_I2CPC* = 69
  PI_CMD_I2CPK* = 70
  PI_CMD_SPIO* = 71
  PI_CMD_SPIC* = 72
  PI_CMD_SPIR* = 73
  PI_CMD_SPIW* = 74
  PI_CMD_SPIX* = 75
  PI_CMD_SERO* = 76
  PI_CMD_SERC* = 77
  PI_CMD_SERRB* = 78
  PI_CMD_SERWB* = 79
  PI_CMD_SERR* = 80
  PI_CMD_SERW* = 81
  PI_CMD_SERDA* = 82
  PI_CMD_GDC* = 83
  PI_CMD_GPW* = 84
  PI_CMD_HC* = 85
  PI_CMD_HP* = 86
  PI_CMD_CF1* = 87
  PI_CMD_CF2* = 88
  PI_CMD_BI2CC* = 89
  PI_CMD_BI2CO* = 90
  PI_CMD_BI2CZ* = 91
  PI_CMD_I2CZ* = 92
  PI_CMD_WVCHA* = 93
  PI_CMD_SLRI* = 94
  PI_CMD_CGI* = 95
  PI_CMD_CSI* = 96
  PI_CMD_FG* = 97
  PI_CMD_FN* = 98
  PI_CMD_NOIB* = 99
  PI_CMD_WVTXM* = 100
  PI_CMD_WVTAT* = 101
  PI_CMD_PADS* = 102
  PI_CMD_PADG* = 103
  PI_CMD_FO* = 104
  PI_CMD_FC* = 105
  PI_CMD_FR* = 106
  PI_CMD_FW* = 107
  PI_CMD_FS* = 108
  PI_CMD_FL* = 109
  PI_CMD_SHELL* = 110
  PI_CMD_BSPIC* = 111
  PI_CMD_BSPIO* = 112
  PI_CMD_BSPIX* = 113
  PI_CMD_BSCX* = 114
  PI_CMD_EVM* = 115
  PI_CMD_EVT* = 116
  PI_CMD_PROCU* = 117
  PI_CMD_WVCAP* = 118
  PI_CMD_SCRIPT* = 800
  PI_CMD_ADD* = 800
  PI_CMD_AND* = 801
  PI_CMD_CALL* = 802
  PI_CMD_CMDR* = 803
  PI_CMD_CMDW* = 804
  PI_CMD_CMP* = 805
  PI_CMD_DCR* = 806
  PI_CMD_DCRA* = 807
  PI_CMD_DIV* = 808
  PI_CMD_HALT* = 809
  PI_CMD_INR* = 810
  PI_CMD_INRA* = 811
  PI_CMD_JM* = 812
  PI_CMD_JMP* = 813
  PI_CMD_JNZ* = 814
  PI_CMD_JP* = 815
  PI_CMD_JZ* = 816
  PI_CMD_TAG* = 817
  PI_CMD_LD* = 818
  PI_CMD_LDA* = 819
  PI_CMD_LDAB* = 820
  PI_CMD_MLT* = 821
  PI_CMD_MOD* = 822
  PI_CMD_NOP* = 823
  PI_CMD_OR* = 824
  PI_CMD_POP* = 825
  PI_CMD_POPA* = 826
  PI_CMD_PUSH* = 827
  PI_CMD_PUSHA* = 828
  PI_CMD_RET* = 829
  PI_CMD_RL* = 830
  PI_CMD_RLA* = 831
  PI_CMD_RR* = 832
  PI_CMD_RRA* = 833
  PI_CMD_STA* = 834
  PI_CMD_STAB* = 835
  PI_CMD_SUB* = 836
  PI_CMD_SYS* = 837
  PI_CMD_WAIT* = 838
  PI_CMD_X* = 839
  PI_CMD_XA* = 840
  PI_CMD_XOR* = 841
  PI_CMD_EVTWT* = 842
  PI_INIT_FAILED* = -1
  PI_BAD_USER_GPIO* = -2
  PI_BAD_GPIO* = -3
  PI_BAD_MODE* = -4
  PI_BAD_LEVEL* = -5
  PI_BAD_PUD* = -6
  PI_BAD_PULSEWIDTH* = -7
  PI_BAD_DUTYCYCLE* = -8
  PI_BAD_TIMER* = -9
  PI_BAD_MS* = -10
  PI_BAD_TIMETYPE* = -11
  PI_BAD_SECONDS* = -12
  PI_BAD_MICROS* = -13
  PI_TIMER_FAILED* = -14
  PI_BAD_WDOG_TIMEOUT* = -15
  PI_NO_ALERT_FUNC* = -16
  PI_BAD_CLK_PERIPH* = -17
  PI_BAD_CLK_SOURCE* = -18
  PI_BAD_CLK_MICROS* = -19
  PI_BAD_BUF_MILLIS* = -20
  PI_BAD_DUTY_RANGE* = -21
  PI_BAD_SIGNUM* = -22
  PI_BAD_PATHNAME* = -23
  PI_NO_HANDLE* = -24
  PI_BAD_HANDLE* = -25
  PI_BAD_IF_FLAGS* = -26
  PI_BAD_CHANNEL* = -27
  PI_BAD_PRIM_CHANNEL* = -27
  PI_BAD_SOCKET_PORT* = -28
  PI_BAD_FIFO_COMMAND* = -29
  PI_BAD_SECO_CHANNEL* = -30
  PI_NOT_INITIALISED* = -31
  PI_INITIALISED* = -32
  PI_BAD_WAVE_MODE* = -33
  PI_BAD_CFG_INTERNAL* = -34
  PI_BAD_WAVE_BAUD* = -35
  PI_TOO_MANY_PULSES* = -36
  PI_TOO_MANY_CHARS* = -37
  PI_NOT_SERIAL_GPIO* = -38
  PI_BAD_SERIAL_STRUC* = -39
  PI_BAD_SERIAL_BUF* = -40
  PI_NOT_PERMITTED* = -41
  PI_SOME_PERMITTED* = -42
  PI_BAD_WVSC_COMMND* = -43
  PI_BAD_WVSM_COMMND* = -44
  PI_BAD_WVSP_COMMND* = -45
  PI_BAD_PULSELEN* = -46
  PI_BAD_SCRIPT* = -47
  PI_BAD_SCRIPT_ID* = -48
  PI_BAD_SER_OFFSET* = -49
  PI_GPIO_IN_USE* = -50
  PI_BAD_SERIAL_COUNT* = -51
  PI_BAD_PARAM_NUM* = -52
  PI_DUP_TAG* = -53
  PI_TOO_MANY_TAGS* = -54
  PI_BAD_SCRIPT_CMD* = -55
  PI_BAD_VAR_NUM* = -56
  PI_NO_SCRIPT_ROOM* = -57
  PI_NO_MEMORY* = -58
  PI_SOCK_READ_FAILED* = -59
  PI_SOCK_WRIT_FAILED* = -60
  PI_TOO_MANY_PARAM* = -61
  PI_NOT_HALTED* = -62
  PI_SCRIPT_NOT_READY* = -62
  PI_BAD_TAG* = -63
  PI_BAD_MICS_DELAY* = -64
  PI_BAD_MILS_DELAY* = -65
  PI_BAD_WAVE_ID* = -66
  PI_TOO_MANY_CBS* = -67
  PI_TOO_MANY_OOL* = -68
  PI_EMPTY_WAVEFORM* = -69
  PI_NO_WAVEFORM_ID* = -70
  PI_I2C_OPEN_FAILED* = -71
  PI_SER_OPEN_FAILED* = -72
  PI_SPI_OPEN_FAILED* = -73
  PI_BAD_I2C_BUS* = -74
  PI_BAD_I2C_ADDR* = -75
  PI_BAD_SPI_CHANNEL* = -76
  PI_BAD_FLAGS* = -77
  PI_BAD_SPI_SPEED* = -78
  PI_BAD_SER_DEVICE* = -79
  PI_BAD_SER_SPEED* = -80
  PI_BAD_PARAM* = -81
  PI_I2C_WRITE_FAILED* = -82
  PI_I2C_READ_FAILED* = -83
  PI_BAD_SPI_COUNT* = -84
  PI_SER_WRITE_FAILED* = -85
  PI_SER_READ_FAILED* = -86
  PI_SER_READ_NO_DATA* = -87
  PI_UNKNOWN_COMMAND* = -88
  PI_SPI_XFER_FAILED* = -89
  PI_BAD_POINTER* = -90
  PI_NO_AUX_SPI* = -91
  PI_NOT_PWM_GPIO* = -92
  PI_NOT_SERVO_GPIO* = -93
  PI_NOT_HCLK_GPIO* = -94
  PI_NOT_HPWM_GPIO* = -95
  PI_BAD_HPWM_FREQ* = -96
  PI_BAD_HPWM_DUTY* = -97
  PI_BAD_HCLK_FREQ* = -98
  PI_BAD_HCLK_PASS* = -99
  PI_HPWM_ILLEGAL* = -100
  PI_BAD_DATABITS* = -101
  PI_BAD_STOPBITS* = -102
  PI_MSG_TOOBIG* = -103
  PI_BAD_MALLOC_MODE* = -104
  PI_TOO_MANY_SEGS* = -105
  PI_BAD_I2C_SEG* = -106
  PI_BAD_SMBUS_CMD* = -107
  PI_NOT_I2C_GPIO* = -108
  PI_BAD_I2C_WLEN* = -109
  PI_BAD_I2C_RLEN* = -110
  PI_BAD_I2C_CMD* = -111
  PI_BAD_I2C_BAUD* = -112
  PI_CHAIN_LOOP_CNT* = -113
  PI_BAD_CHAIN_LOOP* = -114
  PI_CHAIN_COUNTER* = -115
  PI_BAD_CHAIN_CMD* = -116
  PI_BAD_CHAIN_DELAY* = -117
  PI_CHAIN_NESTING* = -118
  PI_CHAIN_TOO_BIG* = -119
  PI_DEPRECATED* = -120
  PI_BAD_SER_INVERT* = -121
  PI_BAD_EDGE* = -122
  PI_BAD_ISR_INIT* = -123
  PI_BAD_FOREVER* = -124
  PI_BAD_FILTER* = -125
  PI_BAD_PAD* = -126
  PI_BAD_STRENGTH* = -127
  PI_FIL_OPEN_FAILED* = -128
  PI_BAD_FILE_MODE* = -129
  PI_BAD_FILE_FLAG* = -130
  PI_BAD_FILE_READ* = -131
  PI_BAD_FILE_WRITE* = -132
  PI_FILE_NOT_ROPEN* = -133
  PI_FILE_NOT_WOPEN* = -134
  PI_BAD_FILE_SEEK* = -135
  PI_NO_FILE_MATCH* = -136
  PI_NO_FILE_ACCESS* = -137
  PI_FILE_IS_A_DIR* = -138
  PI_BAD_SHELL_STATUS* = -139
  PI_BAD_SCRIPT_NAME* = -140
  PI_BAD_SPI_BAUD* = -141
  PI_NOT_SPI_GPIO* = -142
  PI_BAD_EVENT_ID* = -143
  PI_CMD_INTERRUPTED* = -144
  PI_NOT_ON_BCM2711* = -145
  PI_ONLY_ON_BCM2711* = -146
  PI_PIGIF_ERR_0* = -2000
  PI_PIGIF_ERR_99* = -2099
  PI_CUSTOM_ERR_0* = -3000
  PI_CUSTOM_ERR_999* = -3999
  PI_DEFAULT_BUFFER_MILLIS* = 120
  PI_DEFAULT_CLK_MICROS* = 5
  PI_DEFAULT_CLK_PERIPHERAL* = PI_CLOCK_PCM
  PI_DEFAULT_IF_FLAGS* = 0
  PI_DEFAULT_FOREGROUND* = 0
  PI_DEFAULT_DMA_CHANNEL* = 14
  PI_DEFAULT_DMA_PRIMARY_CHANNEL* = 14
  PI_DEFAULT_DMA_SECONDARY_CHANNEL* = 6
  PI_DEFAULT_DMA_PRIMARY_CH_2711* = 7
  PI_DEFAULT_DMA_SECONDARY_CH_2711* = 6
  PI_DEFAULT_DMA_NOT_SET* = 15
  PI_DEFAULT_SOCKET_PORT* = 8888
  PI_DEFAULT_SOCKET_PORT_STR* = "8888"
  PI_DEFAULT_SOCKET_ADDR_STR* = "localhost"
  PI_DEFAULT_UPDATE_MASK_UNKNOWN* = 0x0000000FFFFFFC
  PI_DEFAULT_UPDATE_MASK_B1* = 0x03E7CF93
  PI_DEFAULT_UPDATE_MASK_A_B2* = 0xFBC7CF9C
  PI_DEFAULT_UPDATE_MASK_APLUS_BPLUS* = 0x0080480FFFFFFC
  PI_DEFAULT_UPDATE_MASK_ZERO* = 0x0080000FFFFFFC
  PI_DEFAULT_UPDATE_MASK_PI2B* = 0x0080480FFFFFFC
  PI_DEFAULT_UPDATE_MASK_PI3B* = 0x0000000FFFFFFC
  PI_DEFAULT_UPDATE_MASK_PI4B* = 0x0000000FFFFFFC
  PI_DEFAULT_UPDATE_MASK_COMPUTE* = 0x00FFFFFFFFFFFF
  PI_DEFAULT_MEM_ALLOC_MODE* = PI_MEM_ALLOC_AUTO
  PI_DEFAULT_CFG_INTERNALS* = 0

proc piGPIOInitialise*(): cint {.importc.};
proc piGPIOTerminate*() {.importc.};
proc piGPIOSetMode*(gpio, mode: cuint): cint {.importc.};
proc piGPIOGetMode*(gpio: cuint): cint {.importc.};
proc piGPIOSetPullUpDown*(gpio, pud: cuint): cint {.importc.};
proc piGPIORead*(gpio: cuint): cint {.importc.};
proc piGPIOWrite*(gpio, level: cuint): cint {.importc.};
proc piGPIOPWM*(user_gpio, dutycycle: cuint): cint {.importc.};
proc piGPIOGetPWMdutycycle*(user_gpio: cuint): cint {.importc.};
proc piGPIOSetPWMrange*(user_gpio, range: cuint): cint {.importc.};
proc piGPIOGetPWMrange*(user_gpio: cuint): cint {.importc.};
proc piGPIOGetPWMrealRange*(user_gpio: cuint): cint {.importc.};
proc piGPIOSetPWMfrequency*(user_gpio, frequency: cuint): cint {.importc.};
proc piGPIOGetPWMfrequency*(user_gpio: cuint): cint {.importc.};
#[proc piGPIOServo*(cuint user_gpio, cuint pulsewidth): cint {.importc.};
proc piGPIOGetServoPulsewidth*(cuint user_gpio): cint {.importc.};
proc piGPIOSetAlertFunc*(cuint user_gpio, gpioAlertFunc_t f): cint {.importc.};
proc piGPIOSetAlertFuncEx*(cuint user_gpio, gpioAlertFuncEx_t f, void *userdata): cint {.importc.};
proc piGPIOSetISRFunc*(cuint gpio, cuint edge, int timeout, gpioISRFunc_t f): cint {.importc.};
proc piGPIOSetISRFuncEx*(cuint gpio, cuint edge, int timeout, gpioISRFuncEx_t f, void *userdata): cint {.importc.};
proc piGPIONotifyOpen*(): cint {.importc.};
proc piGPIONotifyOpenWithSize*(int bufSize): cint {.importc.};
proc piGPIONotifyBegin*(cuint handle, uint32_t bits): cint {.importc.};
proc piGPIONotifyPause*(cuint handle): cint {.importc.};
proc piGPIONotifyClose*(cuint handle): cint {.importc.};
proc piGPIOWaveClear*(): cint {.importc.};
proc piGPIOWaveAddNew*(): cint {.importc.};
proc piGPIOWaveAddGeneric*(cuint numPulses, gpioPulse_t *pulses): cint {.importc.};
proc piGPIOWaveAddSerial*(cuint user_gpio, cuint baud, cuint data_bits, cuint stop_bits, cuint offset, cuint numBytes, char *str): cint {.importc.};
proc piGPIOWaveCreate*(): cint {.importc.};
proc piGPIOWaveCreatePad*(int pctCB, int pctBOOL, int pctTOOL): cint {.importc.};
proc piGPIOWaveDelete*(cuint wave_id): cint {.importc.};
proc piGPIOWaveTxSend*(cuint wave_id, cuint wave_mode): cint {.importc.};
proc piGPIOWaveChain*(char *buf, cuint bufSize): cint {.importc.};
proc piGPIOWaveTxAt*(): cint {.importc.};
proc piGPIOWaveTxBusy*(): cint {.importc.};
proc piGPIOWaveTxStop*(): cint {.importc.};
proc piGPIOWaveGetMicros*(): cint {.importc.};
proc piGPIOWaveGetHighMicros*(): cint {.importc.};
proc piGPIOWaveGetMaxMicros*(): cint {.importc.};
proc piGPIOWaveGetPulses*(): cint {.importc.};
proc piGPIOWaveGetHighPulses*(): cint {.importc.};
proc piGPIOWaveGetMaxPulses*(): cint {.importc.};
proc piGPIOWaveGetCbs*(): cint {.importc.};
proc piGPIOWaveGetHighCbs*(): cint {.importc.};
proc piGPIOWaveGetMaxCbs*(): cint {.importc.};
proc piGPIOSerialReadOpen*(cuint user_gpio, cuint baud, cuint data_bits): cint {.importc.};
proc piGPIOSerialReadInvert*(cuint user_gpio, cuint invert): cint {.importc.};
proc piGPIOSerialRead*(cuint user_gpio, void *buf, size_t bufSize): cint {.importc.};
proc piGPIOSerialReadClose*(cuint user_gpio): cint {.importc.};
proc pii2cOpen*(cuint i2cBus, cuint i2cAddr, cuint i2cFlags): cint {.importc.};
proc pii2cClose*(cuint handle): cint {.importc.};
proc pii2cWriteQuick*(cuint handle, cuint bit): cint {.importc.};
proc pii2cWriteByte*(cuint handle, cuint bVal): cint {.importc.};
proc pii2cReadByte*(cuint handle): cint {.importc.};
proc pii2cWriteByteData*(cuint handle, cuint i2cReg, cuint bVal): cint {.importc.};
proc pii2cWriteWordData*(cuint handle, cuint i2cReg, cuint wVal): cint {.importc.};
proc pii2cReadByteData*(cuint handle, cuint i2cReg): cint {.importc.};
proc pii2cReadWordData*(cuint handle, cuint i2cReg): cint {.importc.};
proc pii2cProcessCall*(cuint handle, cuint i2cReg, cuint wVal): cint {.importc.};
proc pii2cWriteBlockData*(cuint handle, cuint i2cReg, char *buf, cuint count): cint {.importc.};
proc pii2cReadBlockData*(cuint handle, cuint i2cReg, char *buf): cint {.importc.};
proc pii2cBlockProcessCall*(cuint handle, cuint i2cReg, char *buf, cuint count): cint {.importc.};
proc pii2cReadI2CBlockData*(cuint handle, cuint i2cReg, char *buf, cuint count): cint {.importc.};
proc pii2cWriteI2CBlockData*(cuint handle, cuint i2cReg, char *buf, cuint count): cint {.importc.};
proc pii2cReadDevice*(cuint handle, char *buf, cuint count): cint {.importc.};
proc pii2cWriteDevice*(cuint handle, char *buf, cuint count): cint {.importc.};
proc pii2cSwitchCombined*(int setting) {.importc.};
proc pii2cSegments*(cuint handle, pi_i2c_msg_t *segs, cuint numSegs): cint {.importc.};
proc pii2cZip*(cuint handle, char *inBuf, cuint inLen, char *outBuf, cuint outLen): cint {.importc.};
proc pibbI2COpen*(cuint SDA, cuint SCL, cuint baud): cint {.importc.};
proc pibbI2CClose*(cuint SDA): cint {.importc.};
proc pibbI2CZip*(cuint SDA, char *inBuf, cuint inLen, char *outBuf, cuint outLen): cint {.importc.};
proc pibscXfer*(bsc_xfer_t *bsc_xfer): cint {.importc.};
cuint baud, cuint spiFlags);
proc pibbSPIClose*(cuint CS): cint {.importc.};
proc pibbSPIXfer*(cuint CS, char *inBuf, char *outBuf, cuint count): cint {.importc.};
proc piSpiOpen*(cuint spiChan, cuint baud, cuint spiFlags): cint {.importc.};
proc piSpiClose*(cuint handle): cint {.importc.};
proc piSpiRead*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piSpiWrite*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piSpiXfer*(cuint handle, char *txBuf, char *rxBuf, cuint count): cint {.importc.};
proc piSerOpen*(char *sertty, cuint baud, cuint serFlags): cint {.importc.};
proc piSerClose*(cuint handle): cint {.importc.};
proc piSerWriteByte*(cuint handle, cuint bVal): cint {.importc.};
proc piSerReadByte*(cuint handle): cint {.importc.};
proc piSerWrite*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piSerRead*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piSerDataAvailable*(cuint handle): cint {.importc.};
proc piGPIOTrigger*(cuint user_gpio, cuint pulseLen, cuint level): cint {.importc.};
proc piGPIOSetWatchdog*(cuint user_gpio, cuint timeout): cint {.importc.};
proc piGPIONoiseFilter*(cuint user_gpio, cuint steady, cuint active): cint {.importc.};
proc piGPIOGlitchFilter*(cuint user_gpio, cuint steady): cint {.importc.};
proc piGPIOSetGetSamplesFunc*(gpioGetSamplesFunc_t f, uint32_t bits): cint {.importc.};
proc piGPIOSetGetSamplesFuncEx*(gpioGetSamplesFuncEx_t f, uint32_t bits, void *userdata): cint {.importc.};
proc piGPIOSetTimerFunc*(cuint timer, cuint millis, gpioTimerFunc_t f): cint {.importc.};
proc piGPIOSetTimerFuncEx*(cuint timer, cuint millis, gpioTimerFuncEx_t f, void *userdata): cint {.importc.};
pthread_t *piGPIOStartThread*(gpioThreadFunc_t f, void *userdata);
proc piGPIOStopThread*(pthread_t *pth) {.importc.};
proc piGPIOStoreScript*(char *script): cint {.importc.};
proc piGPIORunScript*(cuint script_id, cuint numPar, uint32_t *param): cint {.importc.};
proc piGPIOUpdateScript*(cuint script_id, cuint numPar, uint32_t *param): cint {.importc.};
proc piGPIOScriptStatus*(cuint script_id, uint32_t *param): cint {.importc.};
proc piGPIOStopScript*(cuint script_id): cint {.importc.};
proc piGPIODeleteScript*(cuint script_id): cint {.importc.};
proc piGPIOSetSignalFunc*(cuint signum, gpioSignalFunc_t f): cint {.importc.};
proc piGPIOSetSignalFuncEx*(cuint signum, gpioSignalFuncEx_t f, void *userdata): cint {.importc.};
uint32_t piGPIORead_Bits_0_31*();
uint32_t piGPIORead_Bits_32_53*();
proc piGPIOWrite_Bits_0_31_Clear*(uint32_t bits): cint {.importc.};
proc piGPIOWrite_Bits_32_53_Clear*(uint32_t bits): cint {.importc.};
proc piGPIOWrite_Bits_0_31_Set*(uint32_t bits): cint {.importc.};
proc piGPIOWrite_Bits_32_53_Set*(uint32_t bits): cint {.importc.};
proc piGPIOHardwareClock*(cuint gpio, cuint clkfreq): cint {.importc.};
proc piGPIOHardwarePWM*(cuint gpio, cuint PWMfreq, cuint PWMduty): cint {.importc.};
proc piGPIOTime*(cuint timetype, int *seconds, int *micros): cint {.importc.};
proc piGPIOSleep*(cuint timetype, int seconds, int micros): cint {.importc.};
uint32_t piGPIODelay*(uint32_t micros);
uint32_t piGPIOTick*();
cuint piGPIOHardwareRevision*();
cuint piGPIOVersion*();
proc piGPIOGetPad*(cuint pad): cint {.importc.};
proc piGPIOSetPad*(cuint pad, cuint padStrength): cint {.importc.};
proc piEventMonitor*(cuint handle, uint32_t bits): cint {.importc.};
proc piEventSetFunc*(cuint event, eventFunc_t f): cint {.importc.};
proc piEventSetFuncEx*(cuint event, eventFuncEx_t f, void *userdata): cint {.importc.};
proc piEventTrigger*(cuint event): cint {.importc.};
proc piShell*(char *scriptName, char *scriptString): cint {.importc.};
proc piFileOpen*(char *file, cuint mode): cint {.importc.};
proc piFileClose*(cuint handle): cint {.importc.};
proc piFileWrite*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piFileRead*(cuint handle, char *buf, cuint count): cint {.importc.};
proc piFileSeek*(cuint handle, int32_t seekOffset, int seekFrom): cint {.importc.};
proc piFileList*(char *fpat, char *buf, cuint count): cint {.importc.};
proc piGPIOCfgBufferSize*(cuint cfgMillis): cint {.importc.};
proc piGPIOCfgClock*(cuint cfgMicros, cuint cfgPeripheral, cuint cfgSource): cint {.importc.};
proc piGPIOCfgDMAchannel*(cuint DMAchannel): cint {.importc.};
proc piGPIOCfgDMAchannels*(cuint primaryChannel, cuint secondaryChannel): cint {.importc.};
proc piGPIOCfgPermissions*(uint64_t updateMask): cint {.importc.};
proc piGPIOCfgSocketPort*(cuint port): cint {.importc.};
proc piGPIOCfgInterfaces*(cuint ifFlags): cint {.importc.};
proc piGPIOCfgMemAlloc*(cuint memAllocMode): cint {.importc.};
proc piGPIOCfgNetAddr*(int numSockAddr, uint32_t *sockAddr): cint {.importc.};
uint32_t piGPIOCfgGetInternals*();
proc piGPIOCfgSetInternals*(uint32_t cfgVal): cint {.importc.};
proc piGPIOCustom1*(cuint arg1, cuint arg2, char *argx, cuint argc): cint {.importc.};
proc piGPIOCustom2*(cuint arg1, char *argx, cuint argc, char *retBuf, cuint retMax): cint {.importc.};
proc piRawWaveAddSPI*(rawSPI_t *spi, cuint offset, cuint spiSS, char *buf, cuint spiTxBits, cuint spiBitFirst, cuint spiBitLast, cuint spiBits): cint {.importc.};
proc piRawWaveAddGeneric*(cuint numPulses, rawWave_t *pulses): cint {.importc.};
cuint piRawWaveCB*();
rawCbs_t *piRawWaveCBAdr*(int cbNum);
uint32_t piRawWaveGetOOL*(int pos);
proc piRawWaveSetOOL*(int pos, uint32_t lVal) {.importc.};
uint32_t piRawWaveGetOut*(int pos);
proc piRawWaveSetOut*(int pos, uint32_t lVal) {.importc.};
uint32_t piRawWaveGetIn*(int pos);
proc piRawWaveSetIn*(int pos, uint32_t lVal) {.importc.};
rawWaveInfo_t piRawWaveInfo*(int wave_id);
proc piGetBitInBytes*(int bitPos, char *buf, int numBits): cint {.importc.};
proc piPutBitInBytes*(int bitPos, char *buf, int bit) {.importc.};
double piTime_time*();
proc piTime_sleep*(double seconds) {.importc.};
proc piRawDumpWave*() {.importc.};
proc piRawDumpScript*(cuint script_id) {.importc.};
]#