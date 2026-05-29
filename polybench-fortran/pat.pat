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

f90 {
subroutine atax_double(a, x, y, tmp, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(ny) :: x
  double precision, dimension(ny) :: y
  double precision, dimension(nx) :: tmp
  integer :: nx, ny

  do i = 1, nx
    tmp(i) = 0.0D0
    do j = 1, ny
      tmp(i) = tmp(i) + (a(j, i) * x(j))
    end do
    do j = 1, ny
      y(j) = y(j) + a(j, i) * tmp(i)
    end do
  end do
end subroutine
}={
subroutine atax_double(a, x, y, tmp, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(ny) :: x
  double precision, dimension(ny) :: y
  double precision, dimension(nx) :: tmp
  integer :: nx, ny

  external :: dgemv

  call dgemv('T', nx, ny, 1.0D0, a, ny, x, 1, 0.0D0, tmp, 1)
  call dgemv('N', ny, nx, 1.0D0, a, ny, tmp, 1, 0.0D0, y, 1)
end subroutine
}

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

f90 {
subroutine gemm_double(m, n, k, alpha, A, B, beta, C)
  integer :: m, n, k
  double precision, dimension(m, n) :: C
  double precision, dimension(m, k) :: A
  double precision, dimension(k, n) :: B
  double precision :: alpha, beta

  do nn = 1, n
    do mm = 1, m
      c(mm, nn) = c(mm, nn) * beta
      do i  = 1, k
        c(mm, nn) = c(mm, nn) + (alpha * b(i, nn) * a(mm, i))
      end do
    end do
  end do
end subroutine
}={
subroutine gemm_double(m, n, k, alpha, A, B, beta, C)
  integer :: m, n, k
  double precision, dimension(m, n) :: C
  double precision, dimension(m, k) :: A
  double precision, dimension(k, n) :: B
  double precision :: alpha, beta

  external :: dgemm

  call dgemm('N', 'N', m, n, k, alpha, A, m, B, k, beta, C, m)
end subroutine
}

f90 {
subroutine gemver1_double(a, u1, u2, v1, v2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: u1
  double precision, dimension(n) :: u2
  double precision, dimension(n) :: v1
  double precision, dimension(n) :: v2
  integer :: n

  do i = 1, n
    do j = 1, n
      a(j, i) = a(j, i) + (u1(i) * v1(j)) + (u2(i) * v2(j))
    end do
  end do
end subroutine
}={
subroutine gemver1_double(a, u1, u2, v1, v2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: u1
  double precision, dimension(n) :: u2
  double precision, dimension(n) :: v1
  double precision, dimension(n) :: v2
  integer :: n

  print*,"Pattern gemver1_double replaced"
end subroutine
}

f90 {
subroutine gemver2_double(a, x, y, beta, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x
  double precision, dimension(n) :: y
  double precision :: beta
  integer :: n

  do i = 1, n
    do j = 1, n
      x(i) = x(i) + (beta * a(i, j) * y(j))
    end do
  end do
end subroutine
}={
subroutine gemver2_double(a, x, y, beta, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x
  double precision, dimension(n) :: y
  double precision :: beta
  integer :: n

  print*,"Pattern gemver2_double replaced"
end subroutine
}

f90 {
subroutine gemver3_double(x, z, n)
  double precision, dimension(n) :: x
  double precision, dimension(n) :: z
  integer :: n

  do i = 1, n
    x(i) = x(i) + z(i)
  end do
end subroutine
}={
subroutine gemver3_double(x, z, n)
  double precision, dimension(n) :: x
  double precision, dimension(n) :: z
  integer :: n

  print*,"Pattern gemver3_double replaced"
end subroutine
}

f90 {
subroutine gemver4_double(a, w, x, alpha, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: w
  double precision, dimension(n) :: x
  double precision :: alpha
  integer :: n

  do i = 1, n
    do j = 1, n
      w(i) = w(i) + (alpha * a(j, i) * x(j))
    end do
  end do
end subroutine
}={
subroutine gemver4_double(a, w, x, alpha, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: w
  double precision, dimension(n) :: x
  double precision :: alpha
  integer :: n

  print*,"Pattern gemver4_double replaced"
end subroutine
}

f90 {
subroutine mvt1_double(a, x1, y1, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x1
  double precision, dimension(n) :: y1
  integer :: n
  integer :: i, j

  do i = 1, n
    do j = 1, n
      x1(i) = x1(i) + (a(j, i) * y1(j))
    end do
  end do
end subroutine
}={
subroutine mvt1_double(a, x1, y1, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x1
  double precision, dimension(n) :: y1
  integer :: n
  integer :: i, j

  external :: dgemv

  call dgemv('N', n, n, 1.0D0, a, n, y1, 1, 1.0D0, x1, 1)
end subroutine
}

f90 {
subroutine mvt2_double(a, x2, y2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x2
  double precision, dimension(n) :: y2
  integer :: n
  integer :: i, j

  do i = 1, n
    do j = 1, n
      x2(i) = x2(i) + (a(i, j) * y2(j))
    end do
  end do
end subroutine
}={
subroutine mvt2_double(a, x2, y2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x2
  double precision, dimension(n) :: y2
  integer :: n
  integer :: i, j

  external :: dgemv

  call dgemv('N', n, n, 1.0D0, a, n, y2, 1, 1.0D0, x2, 1)
end subroutine
}

f90 {
subroutine symm_double(a, b, c, alpha, beta, ni, nj)
  double precision, dimension(nj, nj) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(nj, ni) :: c
  double precision :: alpha, beta
  double precision :: acc
  integer :: ni, nj

  do i = 1, ni
    do j = 1, nj
    acc = 0.0D0
      do k = 1, j - 2
        c(j, k) = c(j, k) + (alpha * a(i, k) * b(j, i))
        acc = acc + (b(j, k) * a(i, k))
      end do
    c(j, i) = (beta * c(j, i)) + (alpha * a(i, i) * b(j, i)) + &
                (alpha * acc)
    end do
  end do
end subroutine
}={
subroutine symm_double(a, b, c, alpha, beta, ni, nj)
  double precision, dimension(nj, nj) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(nj, ni) :: c
  double precision :: alpha, beta
  integer :: ni, nj

  external :: dsymm

  call dsymm('L', 'L', nj, ni, alpha, a, nj, b, nj, beta, c, nj)
end subroutine
}

f90 {
subroutine syr2k2_double(a, b, c, alpha, ni, nj)
  double precision, dimension(nj, ni) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(ni, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  do i = 1, ni
    do j = 1, i
      c(j, i) = c(j, i) * beta
    end do
    do j = 1, i
      do k = 1, nj
        c(j, i) = c(j, i) + (alpha * a(k, i) * b(k, j))
        c(j, i) = c(j, i) + (alpha * b(k, i) * a(k, j))
      end do
    end do
  end do
end subroutine
}={
subroutine syr2k2_double(a, b, c, alpha, ni, nj)
  double precision, dimension(nj, ni) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(ni, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  external :: dsyr2k

  call dsyr2k('U', 'T', ni, nj, alpha, a, nj, b, nj, beta, c, ni)
end subroutine
}

f90 {
subroutine syrk2_double(a, c, alpha, ni, nj)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(nj, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  do i = 1, ni
    do j = 1, ni
      do k = 1, nj
        c(j, i) = c(j, i) + (alpha * a(k, i) * a(k, j))
      end do
    end do
  end do
end subroutine
}={
subroutine syrk2_double(a, c, alpha, ni, nj)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(nj, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  external :: dgemm

  call dgemm('N', 'N', ni, ni, ni, alpha, a, ni, transpose(a), ni, 1.0D0, c, nj)
end subroutine
}