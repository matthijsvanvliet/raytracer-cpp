#include "Matrix.h"
#include "Helper.h"
#include <iostream>
#include <stdexcept>

Matrix::Matrix(unsigned int size) : MaxLength(size), data(MaxLength * MaxLength, 0)
{

}

void Matrix::Print()
{
    std::cout << "{";
    for (int x = 0; x < MaxLength; x++)
    {
        std::cout << "[";
        for (int y = 0; y < MaxLength; y++)
        {
            if (y == MaxLength-1)
            {
                std::cout << (*this)(x, y);
            }
            else
            {
                std::cout << (*this)(x, y) << ", ";
            }
        }
        if (x == MaxLength-1)
        {
            std::cout << "]";
        }
        else
        {
            std::cout << "], ";
        }
    }

    std::cout  << "}" << std::endl;
}

void Matrix::PrintFormatted()
{
    for (int x = 0; x < MaxLength; x++)
    {
        std::cout << "[ ";
        for (int y = 0; y < MaxLength; y++)
        {
            if (y == MaxLength-1)
            {
                std::cout << (*this)(x, y);
            }
            else
            {
                std::cout << (*this)(x, y) << ", ";
            }
        }

        std::cout << " ]" << std::endl;
    }
    std::cout << std::endl;
}

int Matrix::GetLength() const
{
    return MaxLength;
}

void Matrix::Fill(std::vector<float>& values)
{
    if (values.size() > MaxLength * MaxLength)
    {
        throw std::invalid_argument("Too many values in vector container");
    }

    int i = 0;
    for (int x = 0; x < MaxLength; x++)
    {
        for (int y = 0; y < MaxLength; y++, i++)
        {
            if (i >= values.size())
            {
                return;
            }

            (*this)(x, y) = values[i];
        }
    }
}

float Matrix::operator() (unsigned int row, unsigned int column) const
{
    if (row >= MaxLength || column >= MaxLength)
    {
        throw std::invalid_argument("Matrix subscript out of bounds");
    }
    else
    {
        return data[MaxLength * row + column];
    }
}

float& Matrix::operator() (unsigned int row, unsigned int column)
{
    if (row >= MaxLength || column >= MaxLength)
    {
        throw std::invalid_argument("Matrix subscript out of bounds");
    }
    else
    {
        return data[MaxLength * row + column];
    }
}

bool Matrix::operator== (const Matrix& other) const
{
    for (int x = 0; x < MaxLength; x++)
    {
        for (int y = 0; y < MaxLength; y++)
        {
            if (!Helper::IsEqual((*this)(x, y), other(x, y)))
            {
                return false;
            }
        }
    }

    return true;
}

bool Matrix::operator!= (const Matrix &other) const
{
    for (int x = 0; x < MaxLength; x++)
    {
        for (int y = 0; y < MaxLength; y++)
        {
            if (!Helper::IsEqual((*this)(x, y), other(x, y)))
            {
                return true;
            }
        }
    }

    return false;
}
