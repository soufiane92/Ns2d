module module_mesh


  type tmesh
     integer :: nx,ny
     real(kind=8) ,dimension(:),allocatable :: xc,xf
     real(kind=8) ,dimension(:),allocatable :: yc,yf
  end type tmesh

contains

  subroutine tmesh_allocate(self,xmin,xmax,nx,ymin,ymax,ny)
    type(tmesh)  :: self
    integer      :: nx,ny
    real(kind=8) :: xmin,xmax,ymin,ymax
    
  end subroutine tmesh_allocate

  subroutine tmesh_allocate_var(self,dg01,dg02,dg03)
    type(tmesh)  :: self
    real(kind=8) ,dimension(:,:),allocatable :: dg01,dg02,dg03
    integer :: nx,ny
    nx = self%nx
    ny = self%ny
    allocate( dg01(0:nx+1,0:ny+1) ) ; dg01 =0
    allocate( dg02(0:nx+1,0:ny+1) ) ; dg02 =0
    allocate( dg03(0:nx+1,0:ny+1) ) ; dg03 = 0
    
  end subroutine tmesh_allocate_var

end module module_mesh
