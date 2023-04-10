#ifndef INTERSECTIONLIST_H
#define INTERSECTIONLIST_H

#include "Intersection.h"

#include <memory>

class Intersection; // Forward declaring moet uiteindelijk weg, moet er voor zorgen dat er geen circular dependencies zijn

class Intersections
{
private:
    std::vector<Intersection*> intersections_;
public:
    Intersections(std::vector<Intersection*> intersections);
    unsigned int Count() const;
    Intersection* Hit() const;
    Intersection operator() (unsigned int index) const;
    Intersection& operator() (unsigned int index);
    Intersection operator[] (unsigned int index) const;
    Intersection& operator[] (unsigned int index);
    ~Intersections();
};

#endif /* INTERSECTIONLIST_H */
