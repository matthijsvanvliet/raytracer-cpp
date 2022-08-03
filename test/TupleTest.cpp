#include <math.h>

#include "gtest/gtest.h"
#include "Tuple.h"
#include "Color.h"

TEST(TupleTest, ATupleWithWIs1IsAPoint)
{
    Tuple a(4.3, -4.2, 3.1, 1.0);
    EXPECT_EQ(a.x, 4.3f);
    EXPECT_EQ(a.y, -4.2f);
    EXPECT_EQ(a.z, 3.1f);
    EXPECT_EQ(a.w, 1.0f);
}

TEST(TupleTest, ATupleWithWIs0IsAVector)
{
    Tuple a(4.3, -4.2, 3.1, 0.0);
    EXPECT_EQ(a.x, 4.3f);
    EXPECT_EQ(a.y, -4.2f);
    EXPECT_EQ(a.z, 3.1f);
    EXPECT_EQ(a.w, 0.0f);
}

TEST(TupleTest, PointCreatesTuplesWithWIs0)
{
    Tuple p = Point(4, -4, 3);
    EXPECT_EQ(p, Tuple(4, -4, 3, 1));
}

TEST(TupleTest, VectorCreatesTuplesWithWIs0)
{
    Tuple v = Vector(4, -4, 3);
    EXPECT_EQ(v, Tuple(4, -4, 3, 0));
}

TEST(TupleTest, AddingTwoTuples)
{
    Tuple a1(3, -2, 5, 1);
    Tuple a2(-2, 3, 1, 0);
    EXPECT_EQ(a1 + a2, Tuple(1, 1, 6, 1));
}

TEST(TupleTest, SubtractingTwoPoints)
{
    Tuple p1 = Point(3, 2, 1);
    Tuple p2 = Point(5, 6, 7);
    EXPECT_EQ(p1 - p2, Vector(-2, -4, -6));
}

TEST(TupleTest, SubtractingAVectorFromAPoint)
{
    Tuple p = Point(3, 2, 1);
    Tuple v = Vector(5, 6, 7);
    EXPECT_EQ(p - v, Point(-2, -4, -6));
}

TEST(TupleTest, SubtractingTwoVectors)
{
    Tuple v1 = Vector(3, 2, 1);
    Tuple v2 = Vector(5, 6, 7);
    EXPECT_EQ(v1 - v2, Vector(-2, -4, -6));
}

TEST(TupleTest, SubtractingAVectorFromTheZeroVector)
{
    Tuple zero = Vector(0, 0, 0);
    Tuple v = Vector(1, -2, 3);
    EXPECT_EQ(zero - v, Vector(-1, 2, -3));
}

TEST(TupleTest, NegatingATuple)
{
    Tuple a(1, -2, 3, -4);
    EXPECT_EQ(-a, Tuple(-1, 2, -3, 4));
}

TEST(TupleTest, MultiplyingATupleByAScalar)
{
    Tuple a(1, -2, 3, -4);
    EXPECT_EQ(a * 3.5, Tuple(3.5, -7, 10.5, -14));
}

TEST(TupleTest, MultiplyingATupleByAFraction)
{
    Tuple a(1, -2, 3, -4);
    EXPECT_EQ(a * 0.5, Tuple(0.5, -1, 1.5, -2));
}

TEST(TupleTest, DividingATupleByAScalar)
{
    Tuple a(1, -2, 3, -4);
    EXPECT_EQ(a / 2, Tuple(0.5, -1, 1.5, -2));
}

TEST(TupleTest, ComputingTheMagnitudeOfVector100)
{
    Tuple v = Vector(1, 0, 0);
    EXPECT_EQ(v.Magnitude(), 1);
}

TEST(TupleTest, ComputingTheMagnitudeOfVector010)
{
    Tuple v = Vector(0, 1, 0);
    EXPECT_EQ(v.Magnitude(), 1);
}

TEST(TupleTest, ComputingTheMagnitudeOfVector001)
{
    Tuple v = Vector(0, 0, 1);
    EXPECT_EQ(v.Magnitude(), 1);
}

TEST(TupleTest, ComputingTheMagnitudeOfVector123)
{
    Tuple v = Vector(1, 2, 3);
    EXPECT_FLOAT_EQ(v.Magnitude(), sqrt(14));
}

TEST(TupleTest, ComputingTheMagnitudeOfVectorm1m2m3)
{
    Tuple v = Vector(-1, -2, -3);
    EXPECT_FLOAT_EQ(v.Magnitude(), sqrt(14));
}

TEST(TupleTest, NormalizingVector400Gives100)
{
    Tuple v = Vector(4, 0, 0);
    EXPECT_EQ(v.Normalize(), Vector(1, 0, 0));
}

TEST(TupleTest, NormalizingVector123)
{
    Tuple v = Vector(1, 2, 3);
    EXPECT_EQ(v.Normalize(), Vector(0.26726, 0.53452, 0.80178));
}

TEST(TupleTest, TheMagnitudeOfANormalizedVector)
{
    Tuple v = Vector(1, 2, 3);

    Tuple norm = v.Normalize();

    EXPECT_FLOAT_EQ(norm.Magnitude(), 1);
}

TEST(TupleTest, TheDotProductOfTwoTuples)
{
    Tuple a = Vector(1, 2, 3);
    Tuple b = Vector(2, 3, 4);
    EXPECT_EQ(a.Dot(b), 20);
}

TEST(TupleTest, TheCrossProductOfTwoVectors)
{
    Tuple a = Vector(1, 2 , 3);
    Tuple b = Vector(2, 3, 4);
    EXPECT_EQ(a.Cross(b), Vector(-1, 2, -1));
    EXPECT_EQ(b.Cross(a), Vector(1, -2, 1));
}

TEST(TupleTest, CreateEmptyColor)
{
    Color c;
    EXPECT_FLOAT_EQ(c.red, 0);
    EXPECT_FLOAT_EQ(c.green, 0);
    EXPECT_FLOAT_EQ(c.blue, 0);
}

TEST(TupleTest, ColorsAreRedGreenBlueTuples)
{
    Color c(-0.5, 0.4, 1.7);
    EXPECT_FLOAT_EQ(c.red, -0.5);
    EXPECT_FLOAT_EQ(c.green, 0.4);
    EXPECT_FLOAT_EQ(c.blue, 1.7);
}

TEST(TupleTest, AddingColors)
{
    Color c1(0.9, 0.6, 0.75);
    Color c2(0.7, 0.1, 0.25);
    EXPECT_EQ(c1 + c2, Color(1.6, 0.7, 1.0));
}

TEST(TupleTest, SubstractingColors)
{
    Color c1(0.9, 0.6, 0.75);
    Color c2(0.7, 0.1, 0.25);
    EXPECT_EQ(c1 - c2, Color(0.2, 0.5, 0.5));
}

TEST(TupleTest, MultiplyingAColorsByAScalar)
{
    Color c(0.2, 0.3, 0.4);
    EXPECT_EQ(c * 2, Color(0.4, 0.6, 0.8));
}

TEST(TupleTest, MultiplyingColors)
{
    Color c1(1, 0.2, 0.4);
    Color c2(0.9, 1, 0.1);
    EXPECT_EQ(c1 * c2, Color(0.9, 0.2, 0.04));
}