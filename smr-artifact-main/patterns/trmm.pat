f90 {
subroutine trmm_double(a, b, alpha, ni)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(ni, ni) :: b
  double precision :: alpha
  integer :: ni

  do i = 1, ni
    do j = 1, ni
      do k = i + 1, ni
        b(i, j) = b(i, j) + a(k, i) * b(k, j)
      end do
      b(i, j) = alpha * b(i, j)
    end do
  end do
end subroutine
}={
subroutine trmm_double(a, b, alpha, ni)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(ni, ni) :: b
  double precision :: alpha
  integer :: ni

  external :: dtrmm

  call dtrmm('L', 'L', 'T', 'U', ni, ni, alpha, a, ni, b, ni)
end subroutine
}