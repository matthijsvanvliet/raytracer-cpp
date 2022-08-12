#ifndef MATRIX3_H
#define MATRIX3_H

#include "Matrix2.h"

class Matrix3 : public virtual Matrix
{
public:
    Matrix3();
    Matrix2 Submatrix(const unsigned int row, const unsigned int column) const;
    float Minor(const unsigned int row, const unsigned int column) const;
    float Cofactor(const unsigned int row, const unsigned int column) const;
    float Determinant() const;
};


#endif /* MATRIX3_H */
