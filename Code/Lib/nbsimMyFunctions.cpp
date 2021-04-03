/*=============================================================================

  PHAS0100ASSIGNMENT2: PHAS0100 Assignment 2 Gravitational N-body Simulation

  Copyright (c) University College London (UCL). All rights reserved.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.

  See LICENSE.txt in the top level directory for details.

=============================================================================*/

#include "nbsimMyFunctions.h"
#include <iostream>

namespace nbsim {

//-----------------------------------------------------------------------------

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

void print_com_linearmomentum(int step, std::shared_ptr<Eigen::Vector3d> com, std::shared_ptr<Eigen::Vector3d> p_total) 
{
  std::cout << 
  "Step " << step <<
  " COM = " << " x: " << com->x() << " y: " << com->y() << " z: " << com->z() <<
  ", P  = "  << " x: " << p_total->x() << " y: " << p_total->y() << " z: " << p_total->z() << '\n';
}


std::shared_ptr<Eigen::Vector3d> calculateCOM(std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets) 
{
  Eigen::Vector3d numerator(0,0,0);
  double sigma_mu = 0;
  for (auto planet : planets) 
  {
    numerator += planet->getMu() * planet->getPosition();
    sigma_mu += planet->getMu();
  }
  std::shared_ptr<Eigen::Vector3d> com(new Eigen::Vector3d(0,0,0)); // pointer to mem allocated on stack
  *com = (1/sigma_mu) * numerator;
  return com;
}

std::shared_ptr<Eigen::Vector3d> calculateLinearMomentum(
  std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets, double G) 
{
  std::shared_ptr<Eigen::Vector3d> L_momentum(new Eigen::Vector3d(0,0,0));
  for (auto planet : planets) 
  {
    *L_momentum += planet->getMu() * planet->getVelocity();
  }
  *L_momentum /= G;
  return L_momentum;
}

} // end namespace
