#include "nbsimMassiveParticle.h"
#include <iostream>
using namespace nbsim;

MassiveParticle::MassiveParticle(const Eigen::Vector3d position, const Eigen::Vector3d velocity, double mu) 
: Particle::Particle(position, velocity), mu(mu)
{
    this->acceleration = Eigen::Vector3d(0,0,0); // assuming initial acc is zero
}

double MassiveParticle::getMu() 
{
    return this->mu;
}

void MassiveParticle::addAttractor(std::shared_ptr<MassiveParticle> attractor) 
{
    if (!this->attractors.count(attractor->name))
        this->attractors[attractor->name] = attractor;
}


void MassiveParticle::removeAttractor(std::shared_ptr<MassiveParticle> attractor)
{
    try
    {
        this->attractors.erase(attractor->name);
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }
    
}


void MassiveParticle::calculateAcceleration()
{
    for (auto i: this->attractors) 
    {
        double mu_i = i.second->getMu();
        double square_norm_position = (this->position - i.second->getPosition()).squaredNorm();
        Eigen::Vector3d relative_position = (this->position - i.second->getPosition()).normalized();
        this->acceleration = -1 * (mu_i/square_norm_position) * relative_position;
    }
}


void MassiveParticle::integrateTimestep(const double &timestep)
{
    this->velocity += this->acceleration * timestep;
    this->position += this->velocity * timestep;
}