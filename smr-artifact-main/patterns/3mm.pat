f90 {
subroutine p3mm_double(a, b, e, ni, nj, nk)
  double precision, dimension(nj, nk) :: b
  double precision, dimension(nj, ni) :: e
  double precision, dimension(nk, ni) :: a
  integer :: ni, nj, nk

  ! E := A*B
  do i = 1, ni
    do j = 1, nj
      e(j,i) = 0.0
      do k = 1, nk
        e(j,i) = e(j,i) + a(k,i) * b(j,k)
      end do
    end do
  end do
end subroutine
}={
subroutine p3mm_double(a, b, e, ni, nj, nk)
  double precision, dimension(nj, nk) :: b
  double precision, dimension(nj, ni) :: e
  double precision, dimension(nk, ni) :: a
  integer :: ni, nj, nk

  external :: dgemm

  call dgemm('N', 'N', nj, ni, nk, 1.0D0, b, nk, a, nj, 0.0D0, e, nj)
end subroutine
}