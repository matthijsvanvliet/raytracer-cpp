#ifndef COLOR_H
#define COLOR_H

#include "Tuple.h"

class Color
{
public:
    float red;
    float green;
    float blue;
public:
    Color();
    Color(float red, float green, float blue);
    Color HadamardProduct(const Color& other) const;
    bool operator== (const Color& other) const;
    Color operator+ (const Color& other) const;
    Color operator- (const Color& other) const;
    Color operator* (const Color& other) const;
    Color operator/ (const Color& other) const;
    Color operator- () const;
    Color operator* (const float m) const;
    friend std::ostream& operator<< (std::ostream& output, const Color& T);
    ~Color() = default;
};

#endif /* COLOR_H */
