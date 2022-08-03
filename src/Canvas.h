#ifndef CANVAS_H
#define CANVAS_H

#include "Color.h"
#include <vector>

class Canvas
{
private:
    const int lineLength = 70;
    const int maxColVal = 255;

    int width_;
    int height_;
    std::vector<Color> pixel;

    static int Clamp(float n, float lower, float upper) ;
    void PPMAddColor(const float value, std::string& data, int* index) const;
public:
    Canvas(int width, int height);
    int GetWidth() const;
    int GetHeight() const;
    Color GetPixel(int x, int y) const;
    void WritePixel(int x, int y, const Color& c);
    std::string PPMHeader() const;
    std::string PPMPixelData() const;
    std::string CanvasToPPM() const;
    void PrintCanvas() const;
    void PrintCanvasAlt() const;
    void Save(const std::string filename);
    ~Canvas() = default;
};

#endif /* CANVAS_H */
