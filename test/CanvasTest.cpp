#include "gtest/gtest.h"
#include "Canvas.h"

TEST(CanvasTest, CreateCanvas)
{
    Canvas c(10, 20);
    ASSERT_EQ(c.GetWidth(), 10);
    ASSERT_EQ(c.GetHeight(), 20);

    for (int x = 0; x < c.GetWidth(); x++)
    {
        for (int y = 0; y < c.GetHeight(); y++)
        {
            ASSERT_EQ(c.GetPixel(x, y), Color(0, 0, 0));
        }
    }
}

TEST(CanvasTest, WritingPixelsToACanvas)
{
    Canvas c(10, 20);
    Color red(1, 0, 0);
    c.WritePixel(2, 3, red);
    EXPECT_EQ(c.GetPixel(2, 3), red);
}

TEST(CanvasTest, ConstructingThePPMHeader)
{
    Canvas c(5, 3);
    std::string ppm = c.PPMHeader();
    EXPECT_STREQ(ppm.c_str(), "P3\n5 3\n255\n");
}

TEST(CanvasTest, ConstructingThePPMPixelData)
{
    Canvas c(5, 3);
    Color c1(1.5, 0, 0);
    Color c2(0, 0.5, 0);
    Color c3(-0.5, 0, 1);

    c.WritePixel(0, 0, c1);
    c.WritePixel(2, 1, c2);
    c.WritePixel(4, 2, c3);

    auto ppm = c.PPMPixelData();

    EXPECT_STREQ(ppm.c_str(), "255 0 0 0 0 0 0 0 0 0 0 0 0 0 0\n"
                                     "0 0 0 0 0 0 0 128 0 0 0 0 0 0 0\n"
                                     "0 0 0 0 0 0 0 0 0 0 0 0 0 0 255\n");
}

TEST(CanvasTest, SplittingLongLinesInPPMFiles)
{
    Canvas c(10, 2);
    for (int x = 0; x < c.GetWidth(); x++)
    {
        for (int y = 0; y < c.GetHeight(); y++)
        {
            c.WritePixel(x, y, {1, 0.8, 0.6});
        }
    }

    auto ppm = c.PPMPixelData();

    EXPECT_STREQ(ppm.c_str(), "255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204\n"
                                     "153 255 204 153 255 204 153 255 204 153 255 204 153\n"
                                     "255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204\n"
                                     "153 255 204 153 255 204 153 255 204 153 255 204 153\n");
}

TEST(CanvasTest, PPMFilesAreTerminatedByANewlineCharacter)
{
    Canvas c(5, 3);

    auto ppm = c.PPMPixelData();

    EXPECT_EQ(ppm.c_str()[ppm.length()-1], '\n');
}
