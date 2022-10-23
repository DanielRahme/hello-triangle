/**
 * @file hello.cpp
 * @author Daniel Rahme
 * @date 2022-10-23
 * @brief A hello triangle program.
 */

#include <iostream>
#include <functions.hpp>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

int main()
{
  func::print_hello("World");

  constexpr auto f = []{ std::cout << "Just a lambda\n"; }; 
  f();

  std::cout << "Square of 3 == " << func::square(3) << '\n';
}
