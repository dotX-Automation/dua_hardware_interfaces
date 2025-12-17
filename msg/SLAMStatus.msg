# SLAM system aggregated status.
#
# December 17, 2025

std_msgs/Header header

# Map data
# True if the map has been loaded in advance
bool map_preloaded

# True if the map is being updated
bool map_updating

# Number of points in the map (independently of their form)
uint64 total_map_points

# Number of keyframes stored (independently of their form)
uint64 total_keyframes

# Loop closure data
# Number of loop closures performed
uint64 total_loop_closures

# Timestamp of last loop closure
builtin_interfaces/Time loop_closure_last_ts
