# GPS Survey In message.
#
# Giorgio Manca <giorgio.manca.97@gmail.com>
#
# April 4, 2025

# Status
float64 duration      # s
float64 accuracy      # m
uint32 observations   # number
bool valid
bool active

# Time Of Week
uint16 tow_ms         # ms

# Position
float64 ecef_x        # m
float64 ecef_y        # m
float64 ecef_z        # m
float64 gps_lat       # deg
float64 gps_lon       # deg
float64 gps_alt       # m
