#include "gtest/gtest.h"
#include "Matrix4.h"
#include <cmath>

TEST(TransformationsTest, MultiplyingByATranslationMatrix)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Translate(5, -3, 2);
    Tuple p = Point(-3, 4, 5);

    EXPECT_EQ(transform * p, Point(2, 1, 7));
}

TEST(TransformationsTest, MultiplyingByTheInverseOfATranslationMatrix)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Translate(5, -3, 2);
    Matrix4 inv = transform.Invert();
    Tuple p = Point(-3, 4, 5);

    EXPECT_EQ(inv * p, Point(-8, 7, 3));
}

TEST(TransformationsTest, TranslationDoesNotAffectVectors)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Translate(5, -3, 2);
    Tuple v = Vector(-3, 4, 5);

    EXPECT_EQ(transform * v, v);
}

TEST(TransformationsTest, AScalingMatrixAppliedToAPoint)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Scale(2, 3, 4);
    Tuple p = Point(-4, 6, 8);

    EXPECT_EQ(transform * p, Point(-8, 18, 32));
}

TEST(TransformationsTest, AScalingMatrixAppliedToAVector)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Scale(2, 3, 4);
    Tuple v = Vector(-4, 6, 8);

    EXPECT_EQ(transform * v, Vector(-8, 18, 32));
}

TEST(TransformationsTest, MultiplyingByTheInverseOfAScalingMatrix)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Scale(2, 3, 4);
    Matrix4 inv = transform.Invert();
    Tuple v = Vector(-4, 6, 8);

    EXPECT_EQ(inv * v, Vector(-2, 2, 2));
}

TEST(TransformationsTest, ReflectionIsScalingByANegativeValue)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Scale(-1, 1, 1);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(-2, 3, 4));
}

TEST(TransformationsTest, RotatingAPointAroundTheXAxis)
{
    Tuple p = Point(0, 1, 0);
    Matrix4 half_quarter = Matrix4::IdentityMatrix().RotateX(M_PI / 4);
    Matrix4 full_quarter = Matrix4::IdentityMatrix().RotateX(M_PI / 2);

    EXPECT_EQ(half_quarter * p, Point(0, std::sqrt(2)/2, std::sqrt(2)/2));
    EXPECT_EQ(full_quarter * p, Point(0, 0, 1));
}

TEST(TransformationsTest, TheInverseOfAnXRotationRotatesInTheOppositeDirection)
{
    Tuple p = Point(0, 1, 0);
    Matrix4 half_quarter = Matrix4::IdentityMatrix().RotateX(M_PI / 4);
    Matrix4 inv = half_quarter.Invert();

    EXPECT_EQ(inv * p, Point(0, std::sqrt(2)/2, -std::sqrt(2)/2));
}

TEST(TransformationsTest, RotatingAPointAroundTheYAxis)
{
    Tuple p = Point(0, 0, 1);
    Matrix4 half_quarter = Matrix4::IdentityMatrix().RotateY(M_PI / 4);
    Matrix4 full_quarter = Matrix4::IdentityMatrix().RotateY(M_PI / 2);

    EXPECT_EQ(half_quarter * p, Point(std::sqrt(2)/2, 0, std::sqrt(2)/2));
    EXPECT_EQ(full_quarter * p, Point(1, 0, 0));
}

TEST(TransformationsTest, RotatingAPointAroundTheZAxis)
{
    Tuple p = Point(0, 1, 0);
    Matrix4 half_quarter = Matrix4::IdentityMatrix().RotateZ(M_PI / 4);
    Matrix4 full_quarter = Matrix4::IdentityMatrix().RotateZ(M_PI / 2);

    EXPECT_EQ(half_quarter * p, Point(-std::sqrt(2)/2, std::sqrt(2)/2, 0));
    EXPECT_EQ(full_quarter * p, Point(-1, 0, 0));
}

TEST(TransformationsTest, AShearingTransformationMovesXInProportionToY)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(1, 0, 0, 0, 0, 0);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(5, 3, 4));
}

TEST(TransformationsTest, AShearingTransformationMovesXInProportionToZ)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(0, 1, 0, 0, 0, 0);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(6, 3, 4));
}

TEST(TransformationsTest, AShearingTransformationMovesYInProportionToX)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(0, 0, 1, 0, 0, 0);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(2, 5, 4));
}

TEST(TransformationsTest, AShearingTransformationMovesYInProportionToZ)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(0, 0, 0, 1, 0, 0);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(2, 7, 4));
}

TEST(TransformationsTest, AShearingTransformationMovesZInProportionToX)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(0, 0, 0, 0, 1, 0);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(2, 3, 6));
}

TEST(TransformationsTest, AShearingTransformationMovesZInProportionToY)
{
    Matrix4 transform = Matrix4::IdentityMatrix().Shear(0, 0, 0, 0, 0, 1);
    Tuple p = Point(2, 3, 4);

    EXPECT_EQ(transform * p, Point(2, 3, 7));
}

TEST(TransformationsTest, IndividualTransformationsAreAppliedInSequence)
{
    Tuple p = Point(1, 0, 1);
    Matrix4 A = Matrix4::IdentityMatrix().RotateX(M_PI / 2);
    Matrix4 B = Matrix4::IdentityMatrix().Scale(5, 5, 5);
    Matrix4 C = Matrix4::IdentityMatrix().Translate(10, 5, 7);

    Tuple p2 = A * p;
    EXPECT_EQ(p2, Point(1, -1, 0));

    Tuple p3 = B * p2;
    EXPECT_EQ(p3, Point(5, -5, 0));

    Tuple p4 = C * p3;
    EXPECT_EQ(p4, Point(15, 0, 7));

    Matrix4 T = C * B * A;
    EXPECT_EQ(T * p, Point(15, 0, 7));
}
