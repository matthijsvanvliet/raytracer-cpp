#include "Matrix4.h"
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

    std::vector<double> v;

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

double Matrix4::Minor(const unsigned int row, const unsigned int column) const
{
    return Submatrix(row, column).Determinant();
}

double Matrix4::Cofactor(const unsigned int row, const unsigned int column) const
{
    return (row + column) % 2 == 0 ? Minor(row, column) : Minor(row, column) * -1;
}

double Matrix4::Determinant() const
{
    double det;
    for (int col = 0; col < MaxLength; col++)
    {
        det += (*this)(0, col) * Cofactor(0, col);
    }
    return det;
}


