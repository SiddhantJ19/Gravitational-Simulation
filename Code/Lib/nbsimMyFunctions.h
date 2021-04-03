/*=============================================================================

  PHAS0100ASSIGNMENT2: PHAS0100 Assignment 2 Gravitational N-body Simulation

  Copyright (c) University College London (UCL). All rights reserved.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.

  See LICENSE.txt in the top level directory for details.

=============================================================================*/

#ifndef nbsimMyFunctions_h
#define nbsimMyFunctions_h

#include "nbsimWin32ExportHeader.h"
#include "nbsimMassiveParticle.h"
#include <vector>

/**
* \file nbsimMyFunctions.h
* \brief Various Utilities.
* \ingroup utilities
*/
namespace nbsim
{

/**
* \brief My first function, adds two integers.
*/
void printPositions(std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets);
void print_com_linearmomentum(int step, std::shared_ptr<Eigen::Vector3d> com, std::shared_ptr<Eigen::Vector3d> p_total);
std::shared_ptr<Eigen::Vector3d> calculateCOM(std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets);
std::shared_ptr<Eigen::Vector3d> calculateLinearMomentum(
  std::vector<std::shared_ptr<nbsim::MassiveParticle>> &planets, double G);
} // end namespace

#endif
