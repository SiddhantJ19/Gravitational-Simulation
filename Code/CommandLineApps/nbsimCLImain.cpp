#include "../3rdParty/CLI11.hpp"
#include "nbsimSolarSystemData.ipp"
#include "nbsimMassiveParticle.h"
#include <iostream>
#include <vector>
#include <memory>

void printPositions(std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets) 
{
    for(auto planet: planets)
    {
        auto pos = planet->getPosition() ;
        std::cout << planet->getName() <<
        "     Position: " <<
        "x: " << pos.x() << ' ' <<
        "y: " << pos.y() << ' ' <<
        "z: " << pos.z() << '\n';
    }
}


int main(int argc, char **argv) 
{
    CLI::App app("Gravitation Simulation");
    double step_size; int num_steps;
    app.add_option("--step", step_size, "Step size (1 time period)");
    app.add_option("--numsteps", num_steps, "Number of steps (total time period)");
    CLI11_PARSE(app, argc, argv);

    // instantiating Massive Paricle objects
    std::vector<std::shared_ptr<nbsim::MassiveParticle>> planets;
    for (int i=0; i<nbsim::NPLANETS; i++)
    {
        nbsim::Planet planet = nbsim::solarSystemData[i];
        std::shared_ptr<nbsim::MassiveParticle> planetptr(
            new nbsim::MassiveParticle(planet.name, planet.position, planet.velocity, planet.mu)
        );
        planets.push_back(planetptr);
    }
    std::cout << "\n******** PRE SIMULATION ***********\n";
    printPositions(planets);

    // adding attractors for all particles
    for (auto first: planets) 
    {
        for (auto second: planets) 
        {
            // avoiding adding attractor to self
            if (first->getName() != second->getName())
                first->addAttractor(second);
        }
    }

    // simulating solar system
    for (int step=1; step<num_steps; step++) 
    {
        for (auto planet: planets)
        {
            planet->calculateAcceleration();
        }
        for (auto planet: planets)
        {
            planet->integrateTimestep(step_size);

        }
    }

    std::cout << "\n******** POST SIMULATION ***********\n";
    printPositions(planets);

    
    return 0;
}