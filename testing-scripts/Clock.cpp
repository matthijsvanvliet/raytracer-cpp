#include "src/Canvas.h"
#include "src/Matrix4.h"

#include <cmath>

int main()
{

    Canvas c(100, 100);

    Tuple origin = Point(0, 0, 0);

    for (int i = 0; i < 12; i++)
    {
        Tuple position = Matrix4::IdentityMatrix().Translate(0, 30, 0).RotateZ(i * M_PI / 6) * origin;
        c.WritePixel(position.x + c.GetWidth()/2, position.y + c.GetHeight()/2, Color(1, 1, 1));
    }

    c.Save("Clock.ppm");

    return 0;
}
