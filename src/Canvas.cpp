#include "Canvas.h"
#include <sstream>
#include <cmath>
#include <iostream>
#include <fstream>

Canvas::Canvas(int width, int height) : width_(width), height_(height)
{
    pixel = std::vector<Color>(width_*height_);
}

int Canvas::GetWidth() const
{
    return width_;
}

int Canvas::GetHeight() const
{
    return height_;
}

Color Canvas::GetPixel(int x, int y) const
{
    return pixel[y * width_ + x];
}

void Canvas::WritePixel(int x, int y, const Color& c)
{
    pixel[y * width_ + x] = c;
}

std::string Canvas::PPMHeader() const
{
    std::ostringstream header;
    header << "P3\n" << width_ << " " << height_ << "\n" << maxColVal << "\n";
    return header.str();
}

void Canvas::PPMAddColor(const float value, std::string& data, int* index) const
{
    if ((data.length() + std::to_string((int)value).length() - *index) <= lineLength)
    {
        data.append(std::to_string((int)value));
        data.append(" ");
    }
    else
    {
        if (!data.empty())
        {
            data.erase(std::prev(data.end()));
        }
        data.append("\n");
        *index = data.length();
        data.append(std::to_string((int)value));
        data.append(" ");
    }
}

std::string Canvas::PPMPixelData() const
{
    std::string pixelData;
    int index = 0;

    for (int y = 0; y < height_; y++)
    {
        for (int x = 0; x < width_; x++)
        {
            PPMAddColor(Clamp(GetPixel(x, y).red, 0, 255), pixelData, &index);
            PPMAddColor(Clamp(GetPixel(x, y).green, 0, 255), pixelData, &index);
            PPMAddColor(Clamp(GetPixel(x, y).blue, 0, 255), pixelData, &index);

            if (x == width_ - 1)
            {
                if (!pixelData.empty())
                {
                    pixelData.erase(std::prev(pixelData.end()));
                }
                pixelData += '\n';
                index = pixelData.length();
            }
        }
    }

    return pixelData;
}

std::string Canvas::CanvasToPPM() const
{
    std::ostringstream ppmString;
    ppmString << PPMHeader() << PPMPixelData();

    return ppmString.str();
}

void Canvas::PrintCanvas() const
{
    for (int i = 0; i < pixel.size(); i++)
    {
        if (i % width_ == 0)
        {
            std::cout << std::endl;
        }

        std::cout << pixel[i] << " ";
    }

    std::cout << std::endl;
}

void Canvas::PrintCanvasAlt() const
{
    for (int y = 0; y < height_; y++)
    {
        for (int x = 0; x < width_; x++)
        {
            std::cout << GetPixel(x, y);
        }

        std::cout << std::endl;
    }

    std::cout << std::endl;
}

void Canvas::Save(const std::string filename)
{
    std::ofstream file;
    file.open(filename);
    file << CanvasToPPM();
    file.close();
}

int Canvas::Clamp(float n, float lower, float upper)
{
    int value = (int)std::round(n * upper);
    return value > upper ? upper : value < lower ? lower : value;
}