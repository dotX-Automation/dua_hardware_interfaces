# Contact points data and sensor readings.
#
# December 19, 2025

# This message works like JointState but for contact points.
# Each contact point is identified by an entry in each array, and arrays must all be of equal length.
# Positions and velocities are expressed in the body frame.
# If, for a contact point, a quantity is unknown, its entries/value should be set to NaN.
# Entries should be sorted as the corresponding links appear in the URDF.

std_msgs/Header header

# Names of the contact points (e.g. "left_foot", "right_hand")
string[] names

# Positions of the contact points [m]
geometry_msgs/Point[] positions

# Velocities of the contact points [m/s]
geometry_msgs/Vector3[] velocities

# Forces measured at the contact points [N]
float64[] forces

# Contact status (true if in contact, false otherwise)
bool[] contacts

# Validity flags for contact information
bool[] contacts_valid
