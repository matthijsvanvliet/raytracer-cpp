#ifndef SHAPE_H
#define SHAPE_H

#include "Ray.h"
#include "Intersections.h"

class Intersections; // Uiteindelijk weg

class Shape
{
protected:
    Matrix4 transform;

    virtual Intersections LocalIntersect(const Ray& ray) const = 0;
public:
    Shape();
    Intersections Intersect(const Ray& ray) const;
    Matrix4 GetTransform() const;
    void SetTransform(const Matrix4& m);
    bool operator== (const Shape& other) const;
    ~Shape() = default;

};

#endif /* SHAPE_H */
