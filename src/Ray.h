#ifndef RAY_H
#define RAY_H

#include "Matrix4.h"

class Ray
{
private:
    Tuple origin_;
    Tuple direction_;
public:
    Ray(Tuple origin, Tuple direction);
    Tuple GetOrigin() const;
    Tuple GetDirection() const;
    Tuple Position(float t) const;
    Ray Transform(const Matrix4& matrix) const;
    ~Ray() = default;
};


#endif /* RAY_H */
