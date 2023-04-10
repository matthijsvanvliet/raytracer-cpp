#include "Matrix3.h"

#include <vector>

Matrix3::Matrix3() : Matrix(3)
{

}

// With Vector List
/*
Matrix2 Matrix3::Submatrix(const unsigned int row, const unsigned int column) const
{
    Matrix2 m;

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

    m(0, 0) = v[0];
    m(0, 1) = v[1];
    m(1, 0) = v[2];
    m(1, 1) = v[3];

    return m;
}
 */

// Without Vector List (Old Solution from Python Implementation)
Matrix2 Matrix3::Submatrix(const unsigned int row, const unsigned int column) const
{
    Matrix2 m;
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

float Matrix3::Minor(const unsigned int row, const unsigned int column) const
{
    return Submatrix(row, column).Determinant();
}

float Matrix3::Cofactor(const unsigned int row, const unsigned int column) const
{
    return (row + column) % 2 == 0 ? Minor(row, column) : Minor(row, column) * -1;
}

float Matrix3::Determinant() const
{
    double det = 0;
    for (int col = 0; col < MaxLength; col++)
    {
        det += (*this)(0, col) * Cofactor(0, col);
    }
    return det;
}
