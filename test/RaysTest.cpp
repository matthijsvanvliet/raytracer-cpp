#include "gtest/gtest.h"
#include "Matrix4.h"
#include "Ray.h"

TEST(RaysTest, CreatingAndQueryingARay)
{
    Tuple origin = Point(1, 2, 3);
    Tuple direction = Vector(4, 5, 6);

    Ray r(origin, direction);

    EXPECT_EQ(r.GetOrigin(), origin);
    EXPECT_EQ(r.GetDirection(), direction);
}

TEST(RaysTest, ComputingAPointFromADistance)
{
    Ray r(Point(2, 3, 4), Vector(1, 0, 0));

    EXPECT_EQ(r.Position(0), Point(2, 3, 4));
    EXPECT_EQ(r.Position(1), Point(3, 3, 4));
    EXPECT_EQ(r.Position(-1), Point(1, 3, 4));
    EXPECT_EQ(r.Position(2.5), Point(4.5, 3, 4));
}

TEST(RaysTest, TranslatingARay)
{
    Ray r(Point(1, 2, 3), Vector(0, 1, 0));

    Matrix4 m = Matrix4::IdentityMatrix().Translate(3, 4, 5);
    Ray r2 = r.Transform(m);

    EXPECT_EQ(r2.GetOrigin(), Point(4, 6, 8));
    EXPECT_EQ(r2.GetDirection(), Vector(0, 1, 0));
}

TEST(RaysTest, ScalingARay)
{
    Ray r(Point(1, 2, 3), Vector(0, 1, 0));

    Matrix4 m = Matrix4::IdentityMatrix().Scale(2, 3, 4);
    Ray r2 = r.Transform(m);

    EXPECT_EQ(r2.GetOrigin(), Point(2, 6, 12));
    EXPECT_EQ(r2.GetDirection(), Vector(0, 3, 0));
}

