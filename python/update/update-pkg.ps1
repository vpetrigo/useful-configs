pip list -o | select -skip 2 | foreach-object { "$_" -split " " | select -First 1 } | foreach { pip install -U $_ }
