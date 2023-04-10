#ifndef INTERSECTION_H
#define INTERSECTION_H

#include "Shape.h"

class Intersection
{
private:
    float t_;
    const void* object_;
public:
    Intersection(float t, const void* object);
    float GetTime() const;
    const void* GetObject() const;
    ~Intersection() = default;
};

#endif /* INTERSECTION_H */
