#include "gtest/gtest.h"
#include "Sphere.h"

TEST(SpheresTest, ARayIntersectsASphereAtTwoPoints)
{
    Ray r(Point(0, 0, -5), Vector(0, 0, 1));
    Sphere s;

    auto xs = s.Intersect(r);

    EXPECT_FLOAT_EQ(xs.Count(), 2);
    EXPECT_FLOAT_EQ(xs(0).GetTime(), 4.0);
    EXPECT_FLOAT_EQ(xs[1].GetTime(), 6.0);
}

TEST(SpheresTest, ARayIntersectsASphereAtATangent)
{
    Ray r(Point(0, 1, -5), Vector(0, 0, 1));
    Sphere s;

    auto xs = s.Intersect(r);

    EXPECT_FLOAT_EQ(xs.Count(), 2);
    EXPECT_FLOAT_EQ(xs[0].GetTime(), 5.0);
    EXPECT_FLOAT_EQ(xs[1].GetTime(), 5.0);
}

TEST(SpheresTest, ARayMissesASphere)
{
    Ray r(Point(0, 2, -5), Vector(0, 0, 1));
    Sphere s;

    auto xs = s.Intersect(r);

    EXPECT_FLOAT_EQ(xs.Count(), 0);
}

TEST(SpheresTest, ARayOriginatesInsideASphere)
{
    Ray r(Point(0, 0, 0), Vector(0, 0, 1));
    Sphere s;

    auto xs = s.Intersect(r);

    EXPECT_FLOAT_EQ(xs.Count(), 2);
    EXPECT_FLOAT_EQ(xs[0].GetTime(), -1.0);
    EXPECT_FLOAT_EQ(xs[1].GetTime(), 1.0);
}

TEST(SpheresTest, ASphereIsBehindARay)
{
    Ray r(Point(0, 0, 5), Vector(0, 0, 1));
    Sphere s;

    auto xs = s.Intersect(r);

    EXPECT_FLOAT_EQ(xs.Count(), 2);
    EXPECT_FLOAT_EQ(xs[0].GetTime(), -6.0);
    EXPECT_FLOAT_EQ(xs[1].GetTime(), -4.0);
}

TEST(SpheresTest, ASpheresDefaultTransformation)
{
    Sphere s;

    EXPECT_EQ(s.GetTransform(), Matrix4::IdentityMatrix());
}

TEST(SpheresTest, ChangingASpheresTransformation)
{
    Sphere s;
    Matrix4 t = Matrix4::IdentityMatrix().Translate(2, 3, 4);

    s.SetTransform(t);

    EXPECT_EQ(s.GetTransform(), t);
}

TEST(SpheresTest, IntersectingAScaledSphereWithARay)
{
    Ray r = Ray(Point(0, 0, -5), Vector(0, 0, 1));
    Sphere s;

    s.SetTransform(Matrix4::IdentityMatrix().Scale(2, 2, 2));
    Intersections xs = s.Intersect(r);

    EXPECT_EQ(xs.Count(), 2);
    EXPECT_EQ(xs[0].GetTime(), 3);
    EXPECT_EQ(xs[1].GetTime(), 7);
}

TEST(SpheresTest, IntersectingATranslatedSphereWithARay)
{
    Ray r = Ray(Point(0, 0, -5), Vector(0, 0, 1));
    Sphere s;

    s.SetTransform(Matrix4::IdentityMatrix().Translate(5, 0, 0));
    Intersections xs = s.Intersect(r);

    EXPECT_EQ(xs.Count(), 0);
}
