//
// Created by Matthijs on 22-12-2020.
//

#ifndef HELPER_H
#define HELPER_H

#include <math.h>

class Helper
{
private:
    static constexpr float EPSILON = 0.00001;
public:
    static bool IsEqual(float a, float b)
    {
        return abs(a - b) < EPSILON;
    }
};

#endif /* HELPER_H */
