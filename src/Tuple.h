#ifndef TUPLE_H
#define TUPLE_H

#include <string>

class Tuple
{
public:
    float x;
    float y;
    float z;
    float w;
public:
    Tuple(float x, float y, float z, float w);
    float Magnitude();
    Tuple Normalize();
    float Dot(const Tuple& other) const;
    Tuple Cross(const Tuple& other) const;
    Tuple Reflect(const Tuple& normal);
    bool operator== (const Tuple& other) const;
    Tuple operator+ (const Tuple& other) const;
    Tuple operator- (const Tuple& other) const;
    Tuple operator- () const;
    Tuple operator* (float multiplier) const;
    Tuple operator/ (float divisor) const;
    friend std::ostream& operator<< (std::ostream& output, const Tuple& T);
    Tuple Abs();
    ~Tuple() = default;
};

Tuple Vector(float x, float y, float z);
Tuple Point(float x, float y, float z);

#endif /* TUPLE_H */
