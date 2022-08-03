#ifndef MATRIX3_H
#define MATRIX3_H

#include "Matrix.h"
#include "Matrix2.h"

class Matrix3 : public virtual Matrix
{
public:
    Matrix3();
    Matrix2 Submatrix(const unsigned int row, const unsigned int column) const;
    double Minor(const unsigned int row, const unsigned int column) const;
    double Cofactor(const unsigned int row, const unsigned int column) const;
    double Determinant() const;
};


#endif /* MATRIX3_H */
