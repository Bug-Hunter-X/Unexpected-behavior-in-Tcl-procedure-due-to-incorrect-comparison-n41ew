proc myproc {a b} {if {[expr {$a == $b}]} {return 0} {return 1}} 
#Alternatively, for numerical comparison without string conversion:
proc myproc {a b} {expr {$a == $b ? 0 : 1}} 