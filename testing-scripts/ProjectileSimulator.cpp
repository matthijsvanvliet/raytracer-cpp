#include "src/Canvas.h"

struct Projectile
{
    Tuple position;
    Tuple velocity;
};

struct Environment
{
    Tuple gravity;
    Tuple wind;
};

Projectile Tick(Environment& env, Projectile& proj)
{
    Tuple position = proj.position + proj.velocity;
    Tuple velocity = proj.velocity + env.gravity + env.wind;
    return { position, velocity };
}

int main()
{
    Projectile p { Point(0, 1, 0), Vector(1, 1.8, 0).Normalize() * 11.25 };
    Environment e { Vector(0, -0.1, 0), Vector(-0.01, 0, 0) };

    Canvas c(900, 550);

    while(p.position.y > 0 && p.position.x < c.GetWidth())
    {
        p = Tick(e, p);
        c.WritePixel(p.position.x, c.GetHeight() - p.position.y - 3, Color(1, 0, 0));
    }

    c.Save("ProjectileSimulator.ppm");

    return 0;
}
