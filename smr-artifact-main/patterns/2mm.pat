f90 {
subroutine p2mm1_double(tmp, a, b, alpha, ni, nj, nk)
  double precision, dimension(nj, ni) :: tmp
  double precision, dimension(nk, ni) :: a
  double precision, dimension(nj, nk) :: b
  double precision :: alpha
  integer :: ni, nj, nk

  do i = 1, ni
    do j = 1, nj
      tmp(j,i) = 0.0
      do k = 1, nk
        tmp(j,i) = tmp(j,i) + alpha * a(k,i) * b(j,k)
      end do
    end do
  end do
end subroutine
}={
subroutine p2mm1_double(tmp, a, b, alpha, ni, nj, nk)
  double precision, dimension(nj, ni) :: tmp
  double precision, dimension(nk, ni) :: a
  double precision, dimension(nj, nk) :: b
  double precision :: alpha
  integer :: ni, nj, nk

  external :: dgemm

  call dgemm('N', 'N', nj, ni, nk, alpha, b, nj, a, nk, 0.0D0, tmp, nj)
end subroutine
}

f90 {
subroutine p2mm2_double(tmp, c, d, beta, ni, nj, nl)
  double precision, dimension(nj, ni) :: tmp
  double precision, dimension(nl, nj) :: c
  double precision, dimension(nl, ni) :: d
  double precision :: beta
  integer :: ni, nj, nl

  do i = 1, ni
    do j = 1, nl
      d(j,i) = d(j,i) * beta
      do k = 1, nj
        d(j,i) = d(j,i) + tmp(k,i) * c(j,k)
      end do
    end do
  end do
end subroutine
}={
subroutine p2mm2_double(tmp, c, d, beta, ni, nj, nl)
  double precision, dimension(nj, ni) :: tmp
  double precision, dimension(nl, nj) :: c
  double precision, dimension(nl, ni) :: d
  double precision :: beta
  integer :: ni, nj, nl

  external :: dgemm

  call dgemm('N', 'N', nl, ni, nj, 1.0D0, c, nl, tmp, nj, beta, d, nl)
end subroutine
}