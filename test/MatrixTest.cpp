#include "gtest/gtest.h"
#include "Matrix4.h"
#include "Matrix2.h"
#include "Matrix3.h"

#include <iostream>

TEST(MatrixTest, ConstructingAndInspectingA4x4Matrix)
{
    Matrix4 m;
    std::vector<float> v = { 1, 2, 3, 4, 5.5, 6.5, 7.5, 8.5, 9, 10, 11, 12, 13.5, 14.5, 15.5, 16.5 };
    int i = 0;

    for (int x = 0; x < m.GetLength(); x++)
    {
        for (int y = 0; y < m.GetLength(); y++, i++)
        {
            m(x, y) = v[i];
        }
    }

    EXPECT_FLOAT_EQ(m(0, 0), 1);
    EXPECT_FLOAT_EQ(m(0, 3), 4);
    EXPECT_FLOAT_EQ(m(1, 0), 5.5);
    EXPECT_FLOAT_EQ(m(1, 2), 7.5);
    EXPECT_FLOAT_EQ(m(2, 2), 11);
    EXPECT_FLOAT_EQ(m(3, 0), 13.5);
    EXPECT_FLOAT_EQ(m(3, 2), 15.5);
}

TEST(MatrixTest, A2x2MatrixOughtToBeRepresentable)
{
    Matrix2 m;
    m(0, 0) = -3;
    m(0, 1) = 5;
    m(1, 0) = 1;
    m(1, 1) = -2;

    EXPECT_FLOAT_EQ(m(0, 0), -3);
    EXPECT_FLOAT_EQ(m(0, 1), 5);
    EXPECT_FLOAT_EQ(m(1, 0), 1);
    EXPECT_FLOAT_EQ(m(1, 1), -2);
}

TEST(MatrixTest, A3x3MatrixOughtToBeRepresentable)
{
    Matrix3 m;
    std::vector<float> v = { -3, 5, 0, 1, -2, -7, 0, 1, 1 };
    int i = 0;

    for (int x = 0; x < m.GetLength(); x++)
    {
        for (int y = 0; y < m.GetLength(); y++, i++)
        {
            m(x, y) = v[i];
        }
    }

    EXPECT_FLOAT_EQ(m(0, 0), -3);
    EXPECT_FLOAT_EQ(m(1, 1), -2);
    EXPECT_FLOAT_EQ(m(2, 2), 1);
}

TEST(MatrixTest, MatrixEqualityWithIdenticalMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<float> v = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };

    A.Fill(v);
    B.Fill(v);

    EXPECT_EQ(A, B);
}

TEST(MatrixTest, MatrixEqualityWithDifferentMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<float> v1 = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };
    std::vector<float> v2 = { 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1 };

    A.Fill(v1);
    B.Fill(v2);

    EXPECT_NE(A, B);
}

TEST(MatrixTest, MultiplyingTwoMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<float> v1 = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };
    std::vector<float> v2 = { -2, 1, 2, 3, 3, 2, 1, -1, 4, 3, 6, 5, 1, 2, 7, 8 };

    A.Fill(v1);
    B.Fill(v2);

    Matrix4 AB = A * B;

    Matrix4 res;
    std::vector<float> v3 = { 20, 22, 50, 48, 44, 54, 114, 108, 40, 58, 110, 102, 16, 26, 46, 42 };

    res.Fill(v3);

    EXPECT_EQ(AB, res);
}

TEST(MatrixTest, AMatrixMultipliedByATuple)
{
    Matrix4 A;
    Tuple b(1, 2, 3, 1);

    std::vector<float> v = { 1, 2, 3, 4, 2, 4, 4, 2, 8, 6, 4, 1, 0, 0, 0, 1 };

    A.Fill(v);

    Tuple AB = A * b;

    EXPECT_EQ(AB, Tuple(18, 24, 33, 1));
}

TEST(MatrixTest, MultiplyingAMatrixByTheIdentityMatrix)
{
    Matrix4 A;

    std::vector<float> v = { 0, 1, 2, 4, 1, 2, 4, 8, 2, 4, 8, 16, 4, 8, 16, 32 };

    A.Fill(v);

    Matrix4 AB = A * Matrix4::IdentityMatrix();

    EXPECT_EQ(AB, A);
}

TEST(MatrixTest, MultiplyingTheIdentityMatrixByATuple)
{
    Tuple A(1, 2, 3, 4);

    Tuple AB = Matrix4::IdentityMatrix() * A;

    EXPECT_EQ(AB, A);
}

TEST(MatrixTest, TransposingAMatrix)
{
    Matrix4 A;

    std::vector<float> v = { 0, 9, 3, 0, 9, 8, 0, 8, 1, 8, 5, 3, 0, 0, 5, 8 };

    A.Fill(v);

    Matrix4 res = A.Transpose();

    Matrix4 B;

    std::vector<float> v2 = { 0, 9, 1, 0, 9, 8, 8, 0, 3, 0, 5, 5, 0, 8, 3, 8 };

    B.Fill(v2);

    EXPECT_EQ(res, B);
}

TEST(MatrixTest, TransposingTheIdentityMatrix)
{
    Matrix4 A = Matrix4::IdentityMatrix().Transpose();

    EXPECT_EQ(A, Matrix4::IdentityMatrix());
}

TEST(MatrixTest, CalculatingTheDeterminantOfA2x2Matrix)
{
    Matrix2 m;
    std::vector<float> v = {1, 5, -3, 2};

    m.Fill(v);

    float res = m.Determinant();

    EXPECT_FLOAT_EQ(res, 17);
}

TEST(MatrixTest, ASubmatrixOfA3x3MatrixIsA2x2Matrix)
{
    Matrix3 m;
    std::vector<float> v = { 1, 5, 0, -3, 2, 7, 0, 6, -3 };

    m.Fill(v);

    Matrix2 sub = m.Submatrix(0, 2);

    Matrix2 res;
    std::vector<float> v2 = { -3, 2, 0, 6 };

    res.Fill(v2);

    EXPECT_EQ(sub, res);
}

TEST(MatrixTest, ASubmatrixOfA4x4MatrixIsA3x3Matrix)
{
    Matrix4 m;
    std::vector<float> v = { -6, 1, 1, 6, -8, 5, 8, 6, -1, 0, 8, 2, -7, 1, -1, 1 };

    m.Fill(v);

    Matrix3 sub = m.Submatrix(2, 1);

    Matrix3 res;
    std::vector<float> v2 = { -6, 1, 6, -8, 8, 6, -7, -1, 1 };

    res.Fill(v2);

    EXPECT_EQ(sub, res);
}

TEST(MatrixTest, CalculatingAMinorOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<float> v = { 3, 5, 0, 2, -1, -7, 6, -1, 5 };

    A.Fill(v);

    Matrix2 B = A.Submatrix(1, 0);

    EXPECT_FLOAT_EQ(B.Determinant(), 25);
    EXPECT_FLOAT_EQ(A.Minor(1, 0), 25);
}

TEST(MatrixTest, CalculatingACofactorOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<float> v = { 3, 5, 0, 2, -1, -7, 6, -1, 5 };

    A.Fill(v);

    EXPECT_FLOAT_EQ(A.Minor(0, 0), -12);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 0), -12);
    EXPECT_FLOAT_EQ(A.Minor(1, 0), 25);
    EXPECT_FLOAT_EQ(A.Cofactor(1, 0), -25);
}

TEST(MatrixTest, CalculatingTheDeterminantOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<float> v = { 1, 2, 6, -5, 8, -4, 2, 6, 4 };

    A.Fill(v);

    EXPECT_FLOAT_EQ(A.Cofactor(0, 0), 56);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 1), 12);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 2), -46);
    EXPECT_FLOAT_EQ(A.Determinant(), -196);
}

TEST(MatrixTest, CalculatingTheDeterminantOfA4x4Matrix)
{
    Matrix4 A;
    std::vector<float> v = { -2, -8, 3, 5, -3, 1, 7, 3, 1, 2, -9, 6, -6, 7, 7, -9 };

    A.Fill(v);

    EXPECT_FLOAT_EQ(A.Cofactor(0, 0), 690);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 1), 447);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 2), 210);
    EXPECT_FLOAT_EQ(A.Cofactor(0, 3), 51);
    EXPECT_FLOAT_EQ(A.Determinant(), -4071);
}

TEST(MatrixTest, TestingAnInvertibleMatrixForInvertibility)
{
    Matrix4 A;
    std::vector<float> v = { 6, 4, 4, 4, 5, 5, 7, 6, 4, -9, 3, -7, 9, 1, 7, -6 };

    A.Fill(v);

    EXPECT_FLOAT_EQ(A.Determinant(), -2120);
    EXPECT_TRUE(A.Invertible());
}

TEST(MatrixTest, TestingANoninvertible4x4Matrix)
{
    Matrix4 A;
    std::vector<float> v = { -4, 2, -2, -3, 9, 6, 2, 6, 0, -5, 1, -5, 0, 0, 0, 0 };

    A.Fill(v);

    float res = A.Determinant();

    EXPECT_FLOAT_EQ(res, 0);
    EXPECT_FALSE(A.Invertible());
}

TEST(MatrixTest, CalculatingTheInverseOfAMatrix)
{
    Matrix4 A;
    std::vector<float> v = { -5, 2, 6, -8, 1, -5, 1, 8, 7, 7, -6, -7, 1, -3, 7, 4 };

    A.Fill(v);

    Matrix4 B;

    std::vector<float> v2 = { 0.21805, 0.45113, 0.24060, -0.04511,
                               -0.80827, -1.45677, -0.44361, 0.52068,
                               -0.07895, -0.22368, -0.05263, 0.19737,
                               -0.52256, -0.81391, -0.30075, 0.30639};

    B = A.Invert();

    Matrix4 res;
    res.Fill(v2);

    EXPECT_FLOAT_EQ(A.Determinant(), 532);
    EXPECT_FLOAT_EQ(A.Cofactor(2, 3), -160);
    EXPECT_FLOAT_EQ(B(3, 2), float(-160.0f/532.0f));
    EXPECT_FLOAT_EQ(A.Cofactor(3, 2), 105);
    EXPECT_FLOAT_EQ(B(2, 3), float(105.0f/532.0f));
    EXPECT_EQ(B, res);
}

TEST(MatrixTest, CalculatingTheInverseOfAnotherMatrix)
{
    Matrix4 A;
    std::vector<float> v = { 8, -5, 9, 2, 7, 5, 6, 1, -6, 0, 9, 6, -3, 0, -9, -4 };

    A.Fill(v);

    Matrix4 B;

    std::vector<float> v2 = { -0.15385, -0.15385, -0.28205, -0.53846,
                              -0.07692, 0.12308, 0.02564, 0.03077,
                              0.35897, 0.35897, 0.43590, 0.92308,
                              -0.69231, -0.69231, -0.76923, -1.92308 };

    B.Fill(v2);
    EXPECT_EQ(A.Invert(), B);
}

TEST(MatrixTest, CalculatingTheInverseOfAThirdMatrix)
{
    Matrix4 A;
    std::vector<float> v = { 9, 3, 0, 9, -5, -2, -6, -3, -4, 9, 6, 4, -7, 6, 6, 2 };

    A.Fill(v);

    Matrix4 B;

    std::vector<float> v2 = { -0.04074, -0.07778, 0.14444, -0.22222,
                              -0.07778, 0.03333, 0.36667, -0.33333,
                              -0.02901, -0.14630, -0.10926, 0.12963,
                              0.17778, 0.06667, -0.26667, 0.33333 };

    B.Fill(v2);
    EXPECT_EQ(A.Invert(), B);
}

TEST(MatrixTest, MultiplyAProductByItsInverse)
{
    Matrix4 A;
    std::vector<float> v = { 3, -9, 7, 3, 3, -8, 2, -9, -4, 4, 4, 1, -6, 5, -1, 1 };

    A.Fill(v);

    Matrix4 B;

    std::vector<float> v2 = { 8, 2, 2, 2, 3, -1, 7, 0, 7, 0, 5, 4, 6, -2, 0, 5 };

    B.Fill(v2);

    Matrix4 C = A * B;

    EXPECT_EQ(C * B.Invert(), A);
}