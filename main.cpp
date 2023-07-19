#include "src/Canvas.h"
#include "src/Sphere.h"

#include <thread>

const int canvas_pixels = 1000;
Canvas canvas = Canvas(canvas_pixels, canvas_pixels);

const float wall_z = 10;
const float half = wall_z / 2;
const Color red = Color(1, 0, 0);
const Color black = Color(0, 0, 0);
const float pixel_size = wall_z / canvas_pixels;

const Sphere s = Sphere();
const Tuple ray_origin = Point(0, 0, -5);

const int n_threads = 12;

void calculate_pixel(const int x_limit)
{
    for (int x = 0; x < x_limit; x++)
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
                canvas.WritePixel(x, y, red);
            }
            else
            {
                canvas.WritePixel(x, y, black);
            }
        }
    }
}

#include <iostream>

int main()
{
    std::vector<std::thread> v_threads(n_threads);
    int pixels[n_threads];

    for (int i = 0; i < n_threads; i++)
    {
        pixels[i] = (canvas_pixels / n_threads) * i;
    }
    pixels[n_threads-1] = canvas_pixels;

    for (int i = 0; i < n_threads; i++)
    {
        v_threads[i] = std::thread(calculate_pixel, pixels[i]);
    }

    for (auto& t : v_threads)
    {
        t.join();
    }

    canvas.Save("Circle.ppm");

    return 0;
}
