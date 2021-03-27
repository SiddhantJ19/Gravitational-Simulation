#pragma once
#include<Eigen/Dense>

namespace nbsim {

class Particle 
{
    private:
        Eigen::Vector3d position, velocity;
    public:
        Particle(const Eigen::Vector3d position, const Eigen::Vector3d velocity);
        Eigen::Vector3d getPosition() const;
        Eigen::Vector3d getVelocity() const;
        void integrateTimeStamp(const Eigen::Vector3d acceleration, const double timestep);
};

}
