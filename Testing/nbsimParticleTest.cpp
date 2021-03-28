#include "catch.hpp"
#include "nbsimParticle.h"
#include "nbsimMassiveParticle.h"
#include <iostream>

TEST_CASE("zero acceleration", "Particle Class Tests") {
    Eigen::Vector3d position(1,1,1);
    Eigen::Vector3d velocity(1,0,0);
    Eigen::Vector3d acceleration(0,0,0);
    nbsim::Particle particle(position, velocity);
    double timestep = 3;
    particle.integrateTimestep(acceleration, timestep);
    REQUIRE(particle.getPosition() == (position + velocity * timestep));
    REQUIRE(particle.getVelocity() == velocity);
}

TEST_CASE("Constant acceleration", "Particle Class Tests") {
    Eigen::Vector3d position(1,1,1);
    Eigen::Vector3d velocity(1,0,0);
    Eigen::Vector3d acceleration(1,2,3);
    nbsim::Particle particle(position, velocity);
    double timestep = 3;
    particle.integrateTimestep(acceleration, timestep);
    Eigen::Vector3d newVelocity = velocity + acceleration * timestep;
    Eigen::Vector3d newPosition = position + newVelocity * timestep;
    REQUIRE(particle.getVelocity() == newVelocity);
    REQUIRE(particle.getPosition() == newPosition);
}

TEST_CASE("centripetal acceleration", "[class: Particle]") 
{
    Eigen::Vector3d position(1,0,0);
    Eigen::Vector3d velocity(0,1,0);
    Eigen::Vector3d acceleration(-1,0,0);
    nbsim::Particle particle(position, velocity);
    double timestep = 2*3.14;
    for (double i=0.01; i<=timestep; i+=0.01) {
        particle.integrateTimestep(acceleration, 0.01);
        acceleration = -1 * particle.getPosition();
    }
    REQUIRE(particle.getVelocity().isApprox(velocity, 0.01));
    REQUIRE(particle.getPosition().isApprox(position, 0.01));
}

TEST_CASE("Constant Velocity", "[class: MassiveParticle]")
{
    Eigen::Vector3d position(1,0,0);
    Eigen::Vector3d velocity(0,1,0);
    double mu = 6.6156e-06;
    double timestep = 3;
    nbsim::MassiveParticle massiveParticle(position, velocity, mu);
    massiveParticle.calculateAcceleration();
    massiveParticle.integrateTimestep(timestep);
    REQUIRE(massiveParticle.getPosition() == (position + velocity * timestep));
    REQUIRE(massiveParticle.getVelocity() == velocity);
}

TEST_CASE("Gravitaional Acceleration", "[class: MassiveParticle]")
{
    Eigen::Vector3d position_1(1,0,0);
    Eigen::Vector3d velocity_1(0,0.5,0);
    double mu_1 = 1;
    
    Eigen::Vector3d position_2(-1,0,0);
    Eigen::Vector3d velocity_2(0,-0.5,0);
    double mu_2 = 1;

    std::shared_ptr<nbsim::MassiveParticle> shd_p1(new nbsim::MassiveParticle(position_1, velocity_1, mu_1)); 
    std::shared_ptr<nbsim::MassiveParticle> shd_p2(new nbsim::MassiveParticle(position_2, velocity_2, mu_2)); 

    shd_p1->addAttractor(shd_p2);
    shd_p2->addAttractor(shd_p1);

    double time = 3.14;
    for (double i = 0.01; i<=3.14; i+=0.01)
    {
        shd_p1->calculateAcceleration();
        shd_p1->integrateTimestep(0.01);

        shd_p2->calculateAcceleration();
        shd_p2->integrateTimestep(0.01);
    }
    REQUIRE(shd_p1->getPosition().isApprox(shd_p2->getPosition(), 2.1));
}

