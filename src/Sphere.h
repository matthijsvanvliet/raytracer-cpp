#ifndef SPHERE_H
#define SPHERE_H

#include "Shape.h"

class Sphere : public Shape
{
protected:
    Intersections LocalIntersect(const Ray& ray) const override;
public:
    Sphere();
    ~Sphere() = default;
};

#endif /* SPHERE_H */
