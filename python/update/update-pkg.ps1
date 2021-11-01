pip list -o | select -skip 2 | foreach { pip install -U ($_ -split '\s+')[0] }
# In the case of working with specific Python installation the following stuff can be used:
# py -3.10 -m pip list -o | select -skip 2 | foreach { py -3.10 -m pip install -U ($_ -split '\s+')[0] }
