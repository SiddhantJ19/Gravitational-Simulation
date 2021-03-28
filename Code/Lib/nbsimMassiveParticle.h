#pragma once
#include "nbsimParticle.h"
#include <memory>
#include <string>
#include <unordered_map>

namespace nbsim {

class MassiveParticle : public nbsim::Particle 
{
    private:
        double mu;
        Eigen::Vector3d acceleration;
        std::string name;
        std::unordered_map<std::string, std::shared_ptr<MassiveParticle>> attractors;

    public:
        MassiveParticle(const Eigen::Vector3d position, const Eigen::Vector3d velocity, double mu);
        double getMu();
        void addAttractor(std::shared_ptr<MassiveParticle> attractor);
        void removeAttractor(std::shared_ptr<MassiveParticle> attractor);
        void calculateAcceleration();
        void integrateTimestep(const double &timestep);
};

}
