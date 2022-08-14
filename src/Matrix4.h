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
    float Minor(const unsigned int row, const unsigned int column) const;
    float Cofactor(const unsigned int row, const unsigned int column) const;
    float Determinant() const;
    static Matrix4 IdentityMatrix();
    bool Invertible() const;
    Matrix4 Invert() const;
    Matrix4 Translate(const int x, const int y, const int z) const;
    Matrix4 Scale(const int x, const int y, const int z) const;
    Matrix4 RotateX(const float radians) const;
    Matrix4 RotateY(const float radians) const;
    Matrix4 RotateZ(const float radians) const;
    Matrix4 Shear(const int xy, const int xz, const int yx,
                  const int yz, const int zx, const int zy) const;
    Matrix4 operator* (const Matrix4& other) const;
    Tuple operator* (const Tuple& tuple) const;
};

#endif /* MATRIX4_H */
