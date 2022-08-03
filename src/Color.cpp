#include <iostream>

#include "Color.h"
#include "Helper.h"

Color::Color() : red(0), green(0), blue(0)
{
}

Color::Color(float red, float green, float blue) : red(red), green(green), blue(blue)
{
}

Color Color::HadamardProduct(const Color &other) const
{
    return { red * other.red, green * other.green, blue * other.blue };
}

bool Color::operator== (const Color &other) const
{
    return (Helper::IsEqual(red, other.red) && Helper::IsEqual(green, other.green) && Helper::IsEqual(blue, other.blue));
}

Color Color::operator+ (const Color &other) const
{
    return { red + other.red, green + other.green, blue + other.blue };
}

Color Color::operator- (const Color &other) const
{
    return { red - other.red, green - other.green, blue - other.blue };
}

Color Color::operator* (const Color &other) const
{
    return HadamardProduct(other);
}

Color Color::operator/ (const Color &other) const
{
    return { red / other.red, green / other.green, blue / other.blue };
}

Color Color::operator- () const
{
    return { -red, -green, -blue };
}

Color Color::operator* (const float m) const
{
    return { red * m, green * m, blue * m };
}

std::ostream& operator<< (std::ostream& output, const Color& T)
{
    return (output << "{" << T.red << ", " << T.green << ", " << T.blue << "}");
}