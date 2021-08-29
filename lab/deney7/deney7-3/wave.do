onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /TEST/a
add wave -noupdate -format Logic /TEST/b
add wave -noupdate -format Logic /TEST/c
add wave -noupdate -format Logic /TEST/d
add wave -noupdate -format Logic /TEST/F
add wave -noupdate -format Literal /TEST/TX_FILE
add wave -noupdate -format Literal /TEST/TX_ERROR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {688430 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ps} {2100 ns}
