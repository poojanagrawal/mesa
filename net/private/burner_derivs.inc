      subroutine derivs(x,y,dydt,nvar,ierr)
         use const_def, only: dp
         implicit none
         integer, intent(in) :: nvar
         real(dp) :: x,y(:),dydt(:)
         integer, intent(out) :: ierr
      end subroutine derivs
