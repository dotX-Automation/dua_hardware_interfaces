# GPS Navigation Position, Velocity and Time message.
#
# Giorgio Manca <giorgio.manca.97@gmail.com>
#
# April 4, 2025

# GNSS fix type
uint8 TYPE_NO_FIX = 0
uint8 TYPE_DEAD_RECKONING = 1
uint8 TYPE_FIX_2D = 2
uint8 TYPE_FIX_3D = 3
uint8 TYPE_GNSS_DEAD_RECKONING = 4
uint8 TYPE_TIME_ONLY = 5

# Power save mode state 
uint8 PSM_NOT_ACTIVE = 0
uint8 PSM_ENABLED = 1
uint8 PSM_ACQUISITION = 2
uint8 PSM_TRACKING = 3
uint8 PSM_POWER_OPTIMIZED_TRACKING = 4
uint8 PSM_INACTIVE = 5

# Carrier phase range solution status
uint8 CARRIER_NO_SOLUTION = 0
uint8 CARRIER_FLOATING_AMBIGUITIES = 1
uint8 CARRIER_FIXED_AMBIGUITIES = 2

# Age of the most recent differential correction
uint8 AGE_NOT_AVAILABLE = 0       # Not available
uint8 AGE_0_1 = 1                 # Age between 0 and 1 (exclusive) second
uint8 AGE_1_2 = 2                 # Age between 1 and 2 (exclusive) second
uint8 AGE_2_5 = 3                 # Age between 2 and 5 (exclusive) seconds
uint8 AGE_5_10 = 4                # Age between 5 and 10 (exclusive) seconds
uint8 AGE_10_15 = 5               # Age between 10 and 15 (exclusive) seconds
uint8 AGE_15_20 = 6               # Age between 15 and 20 (exclusive) seconds
uint8 AGE_20_30 = 7               # Age between 20 and 30 (exclusive) seconds
uint8 AGE_30_45 = 8               # Age between 45 and 60 (exclusive) seconds
uint8 AGE_45_60 = 9               # Age between 45 and 60 (exclusive) seconds
uint8 AGE_60_90 = 10              # Age between 60 and 90 (exclusive) seconds
uint8 AGE_90_120 = 11             # Age between 120 and 180 (exclusive) seconds
uint8 AGE_120_INF = 12            # Age in greater or equal than 120 seconds

# Status
uint8 fix_type
bool fix_ok
uint8 carrier_solution
uint8 num_satellites
bool diff_solution
uint8 diff_correction_age
uint8 psm_state

# Time Of Week
uint32 tow_ms                     # ms

# Time UTC
uint16 utc_year                   # 4 digits
uint8 utc_month                   # [1, 12]
uint8 utc_day                     # [1, 31]
uint8 utc_hour                    # [0, 23]
uint8 utc_min                     # [0, 59]
uint8 utc_sec                     # [0, 60]
int32 utc_nanosec                 # [-1e9, 1e9]
int32 utc_accuracy                # ns
bool utc_valid_date
bool utc_valid_time_of_day
bool utc_fully_resolved
bool utc_confirmed_available
bool utc_confirmed_date
bool utc_confirmed_time_of_day

# Position
float64 pos_longitude             # deg
float64 pos_latitude              # deg
float64 pos_height                # m
float64 pos_height_msl            # m
float64 pos_horizontal_accuracy   # m
float64 pos_vertical_accuracy     # m
float64 pos_dop                   # value
bool pos_invalid

# Velocity
float64 vel_north                 # m/s
float64 vel_east                  # m/s
float64 vel_down                  # m/s
float64 vel_ground                # m/s
float64 vel_accuracy              # m/s

# Heading
float64 head_motion               # deg
float64 head_accuracy             # deg
float64 head_vehicle              # deg
bool head_vehicle_valid

# Magnetic
float64 mag_declination           # deg
float64 mag_accuracy              # deg
bool mag_valid
