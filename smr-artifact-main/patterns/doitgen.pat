f90 {
subroutine doitgen_double(a, sumA, cFour, nr, nq, np, r, q)
  double precision, dimension(np, nq, nr) :: a
  double precision, dimension(np, nq, nr) :: sumA
  double precision, dimension(np, np) :: cFour
  integer :: nr, nq, np
  integer :: r, s, p, q

  do p = 1, np
    sumA(p, q, r) = 0.0D0
    do s = 1, np
      sumA(p, q, r) = sumA(p, q, r) + (a(s, q, r) * cFour(p, s))
    end do
  end do
end subroutine
}={
subroutine doitgen_double(a, sumA, cFour, nr, nq, np, r, q)
  double precision, dimension(np, nq, nr) :: a
  double precision, dimension(np, nq, nr) :: sumA
  double precision, dimension(np, np) :: cFour
  integer :: nr, nq, np
  integer :: r, q

  external :: dgemv

  call dgemv('N', np, np, 1.0, cFour, np, a(:, q, r), 1, 0, sumA(:, q, r), 1)
end subroutine
}