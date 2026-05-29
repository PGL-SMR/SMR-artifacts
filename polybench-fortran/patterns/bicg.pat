f90 {
subroutine bicg_double(a, r, q, p, s, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(nx) :: r
  double precision, dimension(nx) :: q
  double precision, dimension(ny) :: p
  double precision, dimension(ny) :: s
  integer :: nx,ny
  integer :: i,j

  do i = 1, nx
    q(i) = 0.0D0
    do j = 1, ny
      s(j) = s(j) + (r(i) * a(j, i))
      q(i) = q(i) + (a(j, i) * p(j))
    end do
  end do
end subroutine
}={
subroutine bicg_double(a, r, q, p, s, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(nx) :: r
  double precision, dimension(nx) :: q
  double precision, dimension(ny) :: p
  double precision, dimension(ny) :: s
  integer :: nx,ny

  external :: dgemv

  call dgemv('N', ny, nx, 1.0D0, a, ny, r, 1, 0.0D0, s, 1)
  call dgemv('T', nx, ny, 1.0D0, a, ny, p, 1, 0.0D0, q, 1)
end subroutine
}