#pragma once
#include <Eigen/Dense>
#include <string>
namespace nbsim {

class Particle 
{
    protected:
        std::string name; 
        Eigen::Vector3d position, velocity;
    public:
        Particle(const std::string name, const Eigen::Vector3d position,
         const Eigen::Vector3d velocity);
        std::string getName() const;
        Eigen::Vector3d getPosition() const;
        Eigen::Vector3d getVelocity() const;
        void integrateTimestep(const Eigen::Vector3d acceleration, const double timestep);
};

}
