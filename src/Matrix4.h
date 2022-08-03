#ifndef MATRIX4_H
#define MATRIX4_H

#include "Matrix.h"
#include "Tuple.h"
#include "Matrix3.h"

class Matrix4 : public virtual Matrix
{
public:
    Matrix4();
    Matrix4 Transpose() const;
    Matrix3 Submatrix(const unsigned int row, const unsigned int column) const;
    double Minor(const unsigned int row, const unsigned int column) const;
    double Cofactor(const unsigned int row, const unsigned int column) const;
    double Determinant() const;
    static Matrix4 IdentityMatrix();
    Matrix4 operator* (const Matrix4& other) const;
    Tuple operator* (const Tuple& tuple) const;
};

#endif /* MATRIX4_H */
