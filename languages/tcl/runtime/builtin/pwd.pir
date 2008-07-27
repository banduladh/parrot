.HLL 'Tcl', 'tcl_group'
.namespace []

.sub '&pwd'
  .param pmc argv :slurpy

  .local int argc
  argc = elements argv
  if argc != 0 goto bad_args
  # get necessary conversion subs
  .local pmc R
  .local pmc temp

R = new 'OS'
R = R.'cwd'()
  .return(R)
bad_args:
  tcl_error 'wrong # args: should be "pwd"'
.end

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

