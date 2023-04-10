#include "Matrix4.h"
#include "Helper.h"
#include <iostream>
#include <cstring>

Matrix4::Matrix4() : Matrix(4)
{

}

Matrix4 Matrix4::operator* (const Matrix4 &other) const
{
    Matrix4 m;

    for (int row = 0; row < MaxLength; row++)
    {
        for (int col = 0; col < MaxLength; col++)
        {
            m(row, col) = (*this)(row, 0) * other(0, col) +
                                 (*this)(row, 1) * other(1, col) +
                                 (*this)(row, 2) * other(2, col) +
                                 (*this)(row, 3) * other(3, col);
        }

    }

    return m;
}

Tuple Matrix4::operator* (const Tuple& tuple) const
{
    float a[4] = {0, 0, 0, 0};

    for (int x = 0; x < MaxLength; x++)
    {
        a[x] = (*this)(x, 0) * tuple.x +
              (*this)(x, 1) * tuple.y +
              (*this)(x, 2) * tuple.z +
              (*this)(x, 3) * tuple.w;
    }
    
    return Tuple(a[0], a[1], a[2], a[3]);
}

Matrix4 Matrix4::IdentityMatrix()
{
    Matrix4 m;
    m(0, 0) = 1;
    m(1, 1) = 1;
    m(2, 2) = 1;
    m(3, 3) = 1;

    return m;
}

Matrix4 Matrix4::Transpose() const
{
    Matrix4 m;

    for (int row = 0; row < MaxLength; row++)
    {
        for (int col = 0; col < MaxLength; col++)
        {
            m(row, col) = (*this)(col, row);
        }
    }

    return m;
}

// With Vector List
/*
Matrix3 Matrix4::Submatrix(const unsigned int row, const unsigned int column) const
{
    Matrix3 m;

    std::vector<float> v;

    for (int x = 0; x < MaxLength; x++)
    {
        for (int y = 0; y < MaxLength; y++)
        {
            if (x != row && y != column)
            {
                v.push_back((*this)(x, y));
            }
        }
    }

    int i = 0;

    for (int x = 0; x < 3; x++)
    {
        for (int y = 0; y < 3; y++, i++)
        {
            m(x, y) = v[i];
        }
    }

    return m;
}
*/

// Without Vector List
Matrix3 Matrix4::Submatrix(const unsigned int row, const unsigned int column) const
{
    Matrix3 m;
    int i = 0, j, r, c;

    for (r = 0; r < MaxLength; r++)
    {
        j = 0;
        if (r == row)
        {
            continue;
        }

        for (c = 0; c < MaxLength; c++)
        {
            if (c == column)
            {
                continue;
            }

            m(i, j) = (*this)(r, c);
            j++;
        }
        i++;
    }

    return m;
}

float Matrix4::Minor(const unsigned int row, const unsigned int column) const
{
    return Submatrix(row, column).Determinant();
}

float Matrix4::Cofactor(const unsigned int row, const unsigned int column) const
{
    return (row + column) % 2 == 0 ? Minor(row, column) : Minor(row, column) * -1;
}

// Look for fast rounding up to 5 decimals
float Matrix4::Determinant() const
{
    double det = 0;
    for (int col = 0; col < MaxLength; col++)
    {
        det += (*this)(0, col) * Cofactor(0, col);
    }
    return det;
}

bool Matrix4::Invertible() const
{
    return Determinant() != 0;
}

Matrix4 Matrix4::Invert() const
{
    if (!Invertible())
    {
        throw "Matrix is not invertible";
    }

    Matrix4 m;
    for (int row = 0; row < MaxLength; row++)
    {
        for (int col = 0; col < MaxLength; col++)
        {
            float c = Cofactor(row, col);

            m(col, row) = c / Determinant();
        }
    }

    return m;
}

Matrix4 Matrix4::Translate(const int x, const int y, const int z) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(0, 3) = x;
    m(1, 3) = y;
    m(2, 3) = z;
    return m * (*this);
}

Matrix4 Matrix4::Scale(const int x, const int y, const int z) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(0, 0) = x;
    m(1, 1) = y;
    m(2, 2) = z;
    return m * (*this);
}

Matrix4 Matrix4::RotateX(const float radians) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(1, 1) = std::cos(radians);
    m(1, 2) = -std::sin(radians);
    m(2, 1) = std::sin(radians);
    m(2, 2) = std::cos(radians);
    return m * (*this);
}

Matrix4 Matrix4::RotateY(const float radians) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(0, 0) = std::cos(radians);
    m(0, 2) = std::sin(radians);
    m(2, 0) = -std::sin(radians);
    m(2, 2) = std::cos(radians);
    return m * (*this);
}

Matrix4 Matrix4::RotateZ(const float radians) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(0, 0) = std::cos(radians);
    m(0, 1) = -std::sin(radians);
    m(1, 0) = std::sin(radians);
    m(1, 1) = std::cos(radians);
    return m * (*this);
}

/**
 * Makes straight lines slanted. Each component of the tuple is changed in proportion to
 * the other two components.
 *
 * @param xy: x changing in proportion to y
 * @param xz: x changing in proportion to z
 * @param yx: y changing in proportion to x
 * @param yz: y changing in proportion to z
 * @param zx: z changing in proportion to x
 * @param zy: z changing in proportion to y
 *
 * @return Matrix4 object which has been sheared in proportion to the input
 *
 * @example Matrix4::IdentityMatrix().Shear(1, 0, 0, 0, 0, 0) * Point(2, 3, 4) should return
 * Tuple(5, 3, 4, 1). X moves in proportion to y, which produces a new x
 * of 5: 2(x) + 3(y) = 5(x)
 */
Matrix4 Matrix4::Shear(const int xy, const int xz, const int yx,
                       const int yz, const int zx, const int zy) const
{
    Matrix4 m = Matrix4::IdentityMatrix();
    m(0, 1) = xy;
    m(0, 2) = xz;
    m(1, 0) = yx;
    m(1, 2) = yz;
    m(2, 0) = zx;
    m(2, 1) = zy;
    return m * (*this);
}
