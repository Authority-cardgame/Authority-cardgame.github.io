# Combat System

## Defense Structure

- Row 0: Kingsguard (special row, one-time use)
- Row 1: Bottom row (max 3 units)
- Row 2: Middle row (max 2 units)
- Row 3: Top row (max 1 unit)

Rules:
- Must fill rows from bottom up
- Cannot skip rows when placing units
- Units stay in defense until defeated
- Defense value equals unit's power

## Attack Resolution

Basic rules:
- Units attack individually
- Must clear lower rows first
- Compare attack power to defense value
- Defeated units go to owner's discard

Attack sequence:
1. Declare attacking unit
2. "When attacking" abilities trigger
3. Choose valid target
4. Resolve damage
5. Attacking unit goes to discard

## Combat Examples

- Basic Attack: Knight (4) vs Squire (2) => Squire defeated, Knight discarded
- Multiple Defenders: Knight (4) vs two Squires (2/2) => one defeated, one remains
