#include "nbsimParticle.h"

nbsim::Particle::Particle(const std::string name, const Eigen::Vector3d position, const Eigen::Vector3d velocity) 
{
    this->velocity = velocity;
    this->position = position;
    this->name = name;
}

std::string nbsim::Particle::getName() const
{
    return this->name;
}

Eigen::Vector3d nbsim::Particle::getPosition() const 
{
    return this->position;
}

Eigen::Vector3d nbsim::Particle::getVelocity() const 
{
    return this->velocity;
}   

void nbsim::Particle::integrateTimestep(const Eigen::Vector3d acceleration, const double timestep)
{
    this->velocity = this->velocity + acceleration * timestep;
    this->position = this->position + this->velocity * timestep;
}