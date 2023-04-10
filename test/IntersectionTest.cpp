#include "gtest/gtest.h"
#include "Intersection.h"
#include "Sphere.h"
#include "Intersections.h"

TEST(IntersectionTest, AnIntersectionEncapsulatesTAndObject)
{
    Sphere s;
    Intersection i(3.5, &s);

    EXPECT_FLOAT_EQ(i.GetTime(), 3.5);
    EXPECT_EQ(i.GetObject(), &s);
}

TEST(IntersectionTest, AggregatingIntersections)
{
    Sphere s;
    Intersection i1(1, &s);
    Intersection i2(2, &s);

    Intersections xs({&i1, &i2});

    EXPECT_EQ(xs.Count(), 2);
    EXPECT_EQ(xs(0).GetTime(), 1);
    EXPECT_EQ(xs(1).GetTime(), 2);
}

TEST(IntersectionTest, TheHitWhenAllIntersectionsHavePositiveT)
{
    Sphere s;
    Intersection i1(1, &s);
    Intersection i2(2, &s);

    Intersections xs({&i1, &i2});

    Intersection* i = xs.Hit();

    EXPECT_EQ(i, &i1);
}

TEST(IntersectionTest, TheHitWhenSomeIntersectionsHaveNegativeT)
{
    Sphere s;
    Intersection i1(-1, &s);
    Intersection i2(2, &s);

    Intersections xs({&i1, &i2});

    Intersection* i = xs.Hit();

    EXPECT_EQ(i, &i2);
}

TEST(IntersectionTest, TheHitWhenAllIntersectionsHaveNegativeT)
{
    Sphere s;
    Intersection i1(-2, &s);
    Intersection i2(-1, &s);

    Intersections xs({&i1, &i2});

    Intersection* i = xs.Hit();

    EXPECT_EQ(i, nullptr);
}

TEST(IntersectionTest, TheHitIsAlwaysTheLowestNonnegativeIntersection)
{
    Sphere s;
    Intersection i1(5, &s);
    Intersection i2(7, &s);
    Intersection i3(-3, &s);
    Intersection i4(2, &s);

    Intersections xs({&i1, &i2, &i3, &i4});

    Intersection* i = xs.Hit();

    EXPECT_EQ(i, &i4);
}

