#include "src/Canvas.h"
#include "src/Sphere.h"

int main()
{
    int canvas_pixels = 1000;
    Canvas canvas = Canvas(canvas_pixels, canvas_pixels);

    float wall_z = 10;
    float half = wall_z / 2;
    Color color = Color(1, 0, 0);
    float pixel_size = wall_z / canvas_pixels;

    Sphere s = Sphere();
    Tuple ray_origin = Point(0, 0, -5);

    for (int x = 0; x < canvas_pixels; x++)
    {
        float world_x = -half + pixel_size * x;
        for (int y = 0; y < canvas_pixels; y++)
        {
            float world_y = half - pixel_size * y;
            Tuple position = Point(world_x, world_y, wall_z);
            Ray r = Ray(ray_origin, (position - ray_origin).Normalize());
            Intersections xs = s.Intersect(r);

            if (xs.Hit() != nullptr)
            {
                canvas.WritePixel(x, y, color);
            }
            else
            {
                canvas.WritePixel(x, y, Color(0, 0, 0));
            }
        }
    }

    canvas.Save("Circle.ppm");

    return 0;
}
