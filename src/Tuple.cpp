#include <math.h>
#include <iostream>

#include "Tuple.h"
#include "Helper.h"

Tuple::Tuple(float x, float y, float z, float w)
{
    this->x = x;
    this->y = y;
    this->z = z;
    this->w = w;
}

float Tuple::Magnitude()
{
    return sqrt(x * x + y * y + z * z + w * w);
}

Tuple Tuple::Normalize()
{
    float magnitude = this->Magnitude();
    return Tuple(this->x / magnitude, this->y / magnitude, this->z / magnitude, this->w / magnitude);
}

float Tuple::Dot(const Tuple& other) const
{
    return (this->x * other.x + this->y * other.y + this->z * other.z + this->w * other.w);
}

Tuple Tuple::Cross(const Tuple& other) const
{
    return Vector(this->y * other.z - this->z * other.y,
                  this->z * other.x - this->x * other.z,
                  this->x * other.y - this->y * other.x);
}

Tuple Tuple::Reflect(const Tuple& normal)
{
    return Tuple(0, 0, 0, 0);
}

bool Tuple::operator== (const Tuple& other) const
{
    return (Helper::IsEqual(this->x, other.x) && Helper::IsEqual(this->y, other.y) && Helper::IsEqual(this->z, other.z) && Helper::IsEqual(this->w, other.w));
}

Tuple Tuple::operator+ (const Tuple& other) const
{
    return Tuple(this->x + other.x, this->y + other.y, this->z + other.z,this->w + other.w);
}

Tuple Tuple::operator- (const Tuple& other) const
{
    return Tuple(this->x - other.x, this->y - other.y, this->z - other.z,this->w - other.w);
}

Tuple Tuple::operator- () const
{
    return Tuple(-this->x, -this->y, -this->z, -this->w);
}

Tuple Tuple::operator* (const float multiplier) const
{
    return Tuple(this->x * multiplier, this->y * multiplier, this->z * multiplier,this->w * multiplier);
}

Tuple Tuple::operator/ (const float divisor) const
{
    return Tuple(this->x / divisor, this->y / divisor, this->z / divisor,this->w / divisor);
}

std::ostream& operator<< (std::ostream& output, const Tuple& T)
{
    return (output << "{" << T.x << ", " << T.y << ", " << T.z << ", " << T.w << "}" << std::endl);
}

Tuple Tuple::Abs()
{
    return Tuple(0, 0, 0, 0);
}

Tuple Vector(float x, float y, float z)
{
    return { x, y, z, 0 };
}

Tuple Point(float x, float y, float z)
{
    return { x, y, z, 1 };
}

//Vector::Vector(float x, float y, float z) : Tuple(x, y, z, 0)
//{
//}
//
//Point::Point(float x, float y, float z) : Tuple(x, y, z, 1)
//{
//}

