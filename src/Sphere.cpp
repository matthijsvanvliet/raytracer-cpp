#include "Sphere.h"

#include <cmath>
#include <algorithm>

Sphere::Sphere() : Shape()
{

}

Intersections Sphere::LocalIntersect(const Ray& ray) const
{
    Tuple sphere_to_ray = ray.GetOrigin() - Point(0, 0, 0);

    float a = ray.GetDirection().Dot(ray.GetDirection());
    float b = 2 * ray.GetDirection().Dot(sphere_to_ray);
    float c = sphere_to_ray.Dot(sphere_to_ray) - 1;

    float discriminant = b * b - 4 * a * c;

    if (discriminant < 0)
    {
        return Intersections({});
    }
    else
    {
        std::vector<float> v = { (-b - std::sqrt(discriminant)) / (2 * a), (-b + std::sqrt(discriminant)) / (2 * a) };
        std::sort(v.begin(), v.end());
        return Intersections({new Intersection(v[0], this), new Intersection(v[1], this)});
    }
}
