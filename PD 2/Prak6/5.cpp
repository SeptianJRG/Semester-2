#include <iostream>
using namespace std; 
class Box
{
    protected:
    double width;
};

class SmallBox:Box // SmallBox is the derived class.
{
    public:
    void setSmallWidth(double wid); 
    double getSmallWidth();
};

// Member functions of child class 
double SmallBox:: getSmallWidth()
{
    return width;
}

void SmallBox:: setSmallWidth(double wid)
{
    width = wid;
}

// Main function for the program 
int main()
{
    system("cls");
    SmallBox box;

    // set box width using member function 
    box. setSmallWidth(5.0);
    cout << "Width of box : " << box.getSmallWidth() << endl;

    return 0;
}
