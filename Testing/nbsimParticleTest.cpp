#include "catch.hpp"
#include "nbsimParticle.h"
#include <iostream>

TEST_CASE("zero acceleration", "Particle Class Tests") {
    Eigen::Vector3d position(1,1,1);
    Eigen::Vector3d velocity(1,0,0);
    Eigen::Vector3d acceleration(0,0,0);
    nbsim::Particle particle(position, velocity);
    double timestep = 3;
    particle.integrateTimeStamp(acceleration, timestep);
    REQUIRE(particle.getPosition() == (position + velocity * timestep));
    REQUIRE(particle.getVelocity() == velocity);
}

TEST_CASE("Constant acceleration", "Particle Class Tests") {
    Eigen::Vector3d position(1,1,1);
    Eigen::Vector3d velocity(1,0,0);
    Eigen::Vector3d acceleration(1,2,3);
    nbsim::Particle particle(position, velocity);
    double timestep = 3;
    particle.integrateTimeStamp(acceleration, timestep);
    Eigen::Vector3d newVelocity = velocity + acceleration * timestep;
    Eigen::Vector3d newPosition = position + newVelocity * timestep;
    REQUIRE(particle.getVelocity() == newVelocity);
    REQUIRE(particle.getPosition() == newPosition);
}

TEST_CASE("centripetal acceleration", "Particle Class Tests") {
    Eigen::Vector3d position(1,0,0);
    Eigen::Vector3d velocity(0,1,0);
    Eigen::Vector3d acceleration(-1,0,0);
    nbsim::Particle particle(position, velocity);
    double timestep = 2*3.14;
    for (double i=0.01; i<=timestep; i+=0.01) {
        particle.integrateTimeStamp(acceleration, 0.01);
        acceleration = -1 * particle.getPosition();
    }
    REQUIRE(particle.getVelocity().isApprox(velocity, 0.01));
    REQUIRE(particle.getPosition().isApprox(position, 0.01));
}