#include "nbsimParticle.h"

nbsim::Particle::Particle(const Eigen::Vector3d position, const Eigen::Vector3d velocity) 
{
    this->velocity = velocity;
    this->position = position;
}

Eigen::Vector3d nbsim::Particle::getPosition() const 
{
    return this->position;
}

Eigen::Vector3d nbsim::Particle::getVelocity() const 
{
    return this->velocity;
}   

void nbsim::Particle::integrateTimeStamp(const Eigen::Vector3d acceleration, const double timestep)
{
    this->velocity = this->velocity + acceleration * timestep;
    this->position = this->position + this->velocity * timestep;
}