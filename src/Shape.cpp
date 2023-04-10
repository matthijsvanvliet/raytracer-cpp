#include "Shape.h"

Shape::Shape()
{
    transform = Matrix4::IdentityMatrix();
}

Intersections Shape::Intersect(const Ray& ray) const
{
    Ray local_ray = ray.Transform(transform.Invert());
    return LocalIntersect(local_ray);
}

void Shape::SetTransform(const Matrix4 &m)
{
    transform = m;
}

Matrix4 Shape::GetTransform() const
{
    return transform;
}

bool Shape::operator== (const Shape &other) const
{
    return this == &other;
}

