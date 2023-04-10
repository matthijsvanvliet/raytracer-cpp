#include "Intersection.h"

Intersection::Intersection(float t, const void* object) : t_(t), object_(object)
{
    // nothing
}

float Intersection::GetTime() const
{
    return t_;
}

const void* Intersection::GetObject() const
{
    return object_;
}
