#ifndef MATRIX_H
#define MATRIX_H

#include <vector>

class Matrix
{
protected:
    unsigned int MaxLength = 1;
    std::vector<float> data;
public:
    Matrix(unsigned int size);

    virtual void Print();
    virtual void PrintFormatted();
    virtual int GetLength() const;
    virtual void Fill(std::vector<float>& values);
    virtual float operator() (unsigned int row, unsigned int column) const;
    virtual float& operator() (unsigned int row, unsigned int column);
    virtual bool operator== (const Matrix& other) const;
    virtual bool operator!= (const Matrix& other) const;
    ~Matrix() = default;
};

#endif /* MATRIX_H */
