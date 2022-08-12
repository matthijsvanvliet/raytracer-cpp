#include "Matrix2.h"

Matrix2::Matrix2() : Matrix(2)
{

}

float Matrix2::Determinant()
{
    return (*this)(0, 0) * (*this)(1, 1) - (*this)(0, 1) * (*this)(1, 0);
}
