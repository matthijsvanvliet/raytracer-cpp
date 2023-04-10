#include "Intersections.h"

#include <utility>

Intersections::Intersections(std::vector<Intersection*> intersections) : intersections_(std::move(intersections))
{
    // nothing
}

unsigned int Intersections::Count() const
{
    return intersections_.size();
}

Intersection Intersections::operator() (unsigned int index) const
{
    return *intersections_[index];
}

Intersection& Intersections::operator() (unsigned int index)
{
    return *intersections_[index];
}

Intersection Intersections::operator[] (unsigned int index) const
{
    return *intersections_[index];
}

Intersection& Intersections::operator[] (unsigned int index)
{
    return *intersections_[index];
}

Intersection* Intersections::Hit() const
{
    if (intersections_.empty())
    {
        return nullptr;
    }

    Intersection* hit_intersection = nullptr;

    for (auto i : intersections_)
    {
        if (hit_intersection == nullptr)
        {
            if (i->GetTime() > 0)
            {
                hit_intersection = i;
            }
        }
        else
        {
            if (i->GetTime() < hit_intersection->GetTime() && i->GetTime() > 0)
            {
                hit_intersection = i;
            }
        }
    }

    return hit_intersection;
}

Intersections::~Intersections()
{
    for (auto i : intersections_)
    {
        delete i;
    }
}
