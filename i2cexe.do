vlog i2cmaster.v
vlog i2cslave.v
vlog tbi2c.v
vsim i2c_controller_tb
add wave *
run -all