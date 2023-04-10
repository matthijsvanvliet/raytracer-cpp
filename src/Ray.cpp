#include "Ray.h"

Ray::Ray(Tuple origin, Tuple direction) : origin_(origin), direction_(direction)
{
    origin_.w = 1;
    direction_.w = 0;
}

Tuple Ray::GetOrigin() const
{
    return origin_;
}

Tuple Ray::GetDirection() const
{
    return direction_;
}

Tuple Ray::Position(float t) const
{
    return origin_ + direction_ * t;
}

Ray Ray::Transform(const Matrix4& matrix) const
{
    return Ray(matrix * origin_, matrix * direction_);
}
