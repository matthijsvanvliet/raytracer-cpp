#include "gtest/gtest.h"
#include "Matrix4.h"
#include "Matrix2.h"
#include "Matrix3.h"

#include <iostream>

TEST(MatrixTest, ConstructingAndInspectingA4x4Matrix)
{
    Matrix4 m;
    std::vector<double> v = { 1, 2, 3, 4, 5.5, 6.5, 7.5, 8.5, 9, 10, 11, 12, 13.5, 14.5, 15.5, 16.5 };
    int i = 0;

    for (int x = 0; x < m.GetLength(); x++)
    {
        for (int y = 0; y < m.GetLength(); y++, i++)
        {
            m(x, y) = v[i];
        }
    }

    EXPECT_DOUBLE_EQ(m(0, 0), 1);
    EXPECT_DOUBLE_EQ(m(0, 3), 4);
    EXPECT_DOUBLE_EQ(m(1, 0), 5.5);
    EXPECT_DOUBLE_EQ(m(1, 2), 7.5);
    EXPECT_DOUBLE_EQ(m(2, 2), 11);
    EXPECT_DOUBLE_EQ(m(3, 0), 13.5);
    EXPECT_DOUBLE_EQ(m(3, 2), 15.5);
}

TEST(MatrixTest, A2x2MatrixOughtToBeRepresentable)
{
    Matrix2 m;
    m(0, 0) = -3;
    m(0, 1) = 5;
    m(1, 0) = 1;
    m(1, 1) = -2;

    EXPECT_DOUBLE_EQ(m(0, 0), -3);
    EXPECT_DOUBLE_EQ(m(0, 1), 5);
    EXPECT_DOUBLE_EQ(m(1, 0), 1);
    EXPECT_DOUBLE_EQ(m(1, 1), -2);
}

TEST(MatrixTest, A3x3MatrixOughtToBeRepresentable)
{
    Matrix3 m;
    std::vector<double> v = { -3, 5, 0, 1, -2, -7, 0, 1, 1 };
    int i = 0;

    for (int x = 0; x < m.GetLength(); x++)
    {
        for (int y = 0; y < m.GetLength(); y++, i++)
        {
            m(x, y) = v[i];
        }
    }

    EXPECT_DOUBLE_EQ(m(0, 0), -3);
    EXPECT_DOUBLE_EQ(m(1, 1), -2);
    EXPECT_DOUBLE_EQ(m(2, 2), 1);
}

TEST(MatrixTest, MatrixEqualityWithIdenticalMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<double> v = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };

    A.Fill(v);
    B.Fill(v);

    EXPECT_EQ(A, B);
}

TEST(MatrixTest, MatrixEqualityWithDifferentMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<double> v1 = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };
    std::vector<double> v2 = { 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1 };

    A.Fill(v1);
    B.Fill(v2);

    EXPECT_NE(A, B);
}

TEST(MatrixTest, MultiplyingTwoMatrices)
{
    Matrix4 A;
    Matrix4 B;

    std::vector<double> v1 = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2 };
    std::vector<double> v2 = { -2, 1, 2, 3, 3, 2, 1, -1, 4, 3, 6, 5, 1, 2, 7, 8 };

    A.Fill(v1);
    B.Fill(v2);

    Matrix4 AB = A * B;

    Matrix4 res;
    std::vector<double> v3 = { 20, 22, 50, 48, 44, 54, 114, 108, 40, 58, 110, 102, 16, 26, 46, 42 };

    res.Fill(v3);

    EXPECT_EQ(AB, res);
}

TEST(MatrixTest, AMatrixMultipliedByATuple)
{
    Matrix4 A;
    Tuple b(1, 2, 3, 1);

    std::vector<double> v = { 1, 2, 3, 4, 2, 4, 4, 2, 8, 6, 4, 1, 0, 0, 0, 1 };

    A.Fill(v);

    Tuple AB = A * b;

    EXPECT_EQ(AB, Tuple(18, 24, 33, 1));
}

TEST(MatrixTest, MultiplyingAMatrixByTheIdentityMatrix)
{
    Matrix4 A;

    std::vector<double> v = { 0, 1, 2, 4, 1, 2, 4, 8, 2, 4, 8, 16, 4, 8, 16, 32 };

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

    std::vector<double> v = { 0, 9, 3, 0, 9, 8, 0, 8, 1, 8, 5, 3, 0, 0, 5, 8 };

    A.Fill(v);

    Matrix4 res = A.Transpose();

    Matrix4 B;

    std::vector<double> v2 = { 0, 9, 1, 0, 9, 8, 8, 0, 3, 0, 5, 5, 0, 8, 3, 8 };

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
    std::vector<double> v = {1, 5, -3, 2};

    m.Fill(v);

    double res = m.Determinant();

    EXPECT_DOUBLE_EQ(res, 17);
}

TEST(MatrixTest, ASubmatrixOfA3x3MatrixIsA2x2Matrix)
{
    Matrix3 m;
    std::vector<double> v = { 1, 5, 0, -3, 2, 7, 0, 6, -3 };

    m.Fill(v);

    Matrix2 sub = m.Submatrix(0, 2);

    Matrix2 res;
    std::vector<double> v2 = { -3, 2, 0, 6 };

    res.Fill(v2);

    EXPECT_EQ(sub, res);
}

TEST(MatrixTest, ASubmatrixOfA4x4MatrixIsA3x3Matrix)
{
    Matrix4 m;
    std::vector<double> v = { -6, 1, 1, 6, -8, 5, 8, 6, -1, 0, 8, 2, -7, 1, -1, 1 };

    m.Fill(v);

    Matrix3 sub = m.Submatrix(2, 1);

    Matrix3 res;
    std::vector<double> v2 = { -6, 1, 6, -8, 8, 6, -7, -1, 1 };

    res.Fill(v2);

    EXPECT_EQ(sub, res);
}

TEST(MatrixTest, CalculatingAMinorOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<double> v = { 3, 5, 0, 2, -1, -7, 6, -1, 5 };

    A.Fill(v);

    Matrix2 B = A.Submatrix(1, 0);

    EXPECT_DOUBLE_EQ(B.Determinant(), 25);
    EXPECT_DOUBLE_EQ(A.Minor(1, 0), 25);
}

TEST(MatrixTest, CalculatingACofactorOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<double> v = { 3, 5, 0, 2, -1, -7, 6, -1, 5 };

    A.Fill(v);

    EXPECT_DOUBLE_EQ(A.Minor(0, 0), -12);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 0), -12);
    EXPECT_DOUBLE_EQ(A.Minor(1, 0), 25);
    EXPECT_DOUBLE_EQ(A.Cofactor(1, 0), -25);
}

TEST(MatrixTest, CalculatingTheDeterminantOfA3x3Matrix)
{
    Matrix3 A;
    std::vector<double> v = { 1, 2, 6, -5, 8, -4, 2, 6, 4 };

    A.Fill(v);

    EXPECT_DOUBLE_EQ(A.Cofactor(0, 0), 56);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 1), 12);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 2), -46);
    EXPECT_DOUBLE_EQ(A.Determinant(), -196);
}

TEST(MatrixTest, CalculatingTheDeterminantOfA4x4Matrix)
{
    Matrix4 A;
    std::vector<double> v = { -2, -8, 3, 5, -3, 1, 7, 3, 1, 2, -9, 6, -6, 7, 7, -9 };

    A.Fill(v);

    EXPECT_DOUBLE_EQ(A.Cofactor(0, 0), 690);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 1), 447);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 2), 210);
    EXPECT_DOUBLE_EQ(A.Cofactor(0, 3), 51);
    EXPECT_DOUBLE_EQ(A.Determinant(), -4071);
}
