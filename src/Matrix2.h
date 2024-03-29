#ifndef MATRIX2_H
#define MATRIX2_H

#include "Matrix.h"

class Matrix2 : public virtual Matrix
{
public:
    Matrix2();
    float Determinant();
    ~Matrix2() = default;
};

#endif /* MATRIX2_H */
