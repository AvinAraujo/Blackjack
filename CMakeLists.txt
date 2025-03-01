cmake_minimum_required(VERSION 3.10.0)
project(BlackJack VERSION 0.1.0 LANGUAGES C CXX)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)

# Specify where to find Qt (adjust the path if needed)
set(CMAKE_PREFIX_PATH "C:/Qt/6.8.2/mingw_64/lib/cmake")

# Find Qt and required components
find_package(Qt6 REQUIRED COMPONENTS Core Widgets Gui)

# Add your executable
add_executable(BlackJack Main.cpp Gui.cpp)

# Link Qt libraries to your executable
target_link_libraries(BlackJack Qt6::Core Qt6::Widgets Qt6::Gui)

# Enable testing (Optional)
include(CTest)
enable_testing()

# CPack settings (Optional, for packaging)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
