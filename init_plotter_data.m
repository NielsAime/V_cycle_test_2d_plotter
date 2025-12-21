%% Plotter 2D - System Specifications / Datasheet
% This file contains physical parameters and system limits defined 
% in the requirements (REQ-SYS-xxx).

clear; clc;

%% 1. Physical Dimensions (REQ-SYS-PHY-001)
% Axis maximum travel (Unit: mm)
SYS_X_MAX_POS = 200; 
SYS_Y_MAX_POS = 200;
SYS_X_MIN_POS = 0;
SYS_Y_MIN_POS = 0;

%% 2. Performance & Limits (REQ-SYS-PERF-002)
% Derived from the 10-second requirement for a 100mm square.
% Perimeter = 400mm. If done in 10s, Avg Speed = 40mm/s.
% We set Max Speed higher to allow for acceleration phases.

% Maximum Allowable Velocity (mm/s)
SYS_V_MAX = 100; 

% Maximum Acceleration (mm/s^2)
% Required to avoid "brutal overshoots" (Source 4)
SYS_A_MAX = 500; 

%% 3. Test Shapes (REQ-SYS-PERF-001)
% Parameters for validation tests
TEST_SQUARE_SIZE = 100; % mm
TEST_TIME_LIMIT  = 10.0; % s