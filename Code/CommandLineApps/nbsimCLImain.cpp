#include "../3rdParty/CLI11.hpp"
#include "nbsimSolarSystemData.ipp"
#include "nbsimMassiveParticle.h"
#include "nbsimMyFunctions.h"
#include <iostream>
#include <vector>
#include <memory>
#include <chrono>

using Clock=std::chrono::high_resolution_clock;

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
    std::cout << "\n******** RUNNING SIMULATION ***********\n";

    auto c_start = Clock::now();
    for (int step=1; step<=num_steps; step++) 
    {
        std::shared_ptr<Eigen::Vector3d> com = calculateCOM(planets);
        std::shared_ptr<Eigen::Vector3d> p_total = calculateLinearMomentum(planets, 6.6743); // G = 6.6743
        
        #ifdef DEBUG_ON // add -DCMAKE_CXX_FLAGS_DEBUG="-DDEBUG" in cmake command to log following
        nbsim::print_com_linearmomentum(step, com, p_total);
        #endif

        for (auto planet: planets)
        {
            planet->calculateAcceleration();
        }
        for (auto planet: planets)
        {
            planet->integrateTimestep(step_size);

        }
    }
    auto c_end = Clock::now();


    std::cout << "\n******** POST SIMULATION ***********\n";
    printPositions(planets);
    std::shared_ptr<Eigen::Vector3d> com = calculateCOM(planets);
    std::shared_ptr<Eigen::Vector3d> p_total = calculateLinearMomentum(planets, 6.6743); // G = 6.6743
    nbsim::print_com_linearmomentum(num_steps+1, com, p_total);

    std::cout << "\nTime (ms): " << std::chrono::duration<double, std::milli>(c_end-c_start).count() << '\n';
    return 0;
}