@echo off

rem update system Python packages on Windows

FOR /F "skip=2 usebackq" %%p IN (`pip list --format=columns -o`) DO pip install -U %%p
