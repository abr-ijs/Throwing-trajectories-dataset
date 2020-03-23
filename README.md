# Throwing-trajectories-dataset
Dataset used in the article 'Robot Skill Learning in Latent Space of Deep Autoencoders'

Throwing_trajectories.mat contains data strocture:

robot_throws
* .robot_data (kinematical data for simulation)
    * .L   (lenghts of links) 
    * .base    (robot base position)
    * .dt  (time step of generated trajectories)
* .qPath{1,9824}[:,10] (array 9824 generated trajectories, each in [:,10] matrix)
    * [:,1] is time vector,
    * [:,2:4] are joint positions, 
    * [:,5:7] are joint velocities, 
    * [:,8:10] are joint acelerations
* .targets[9824,3] (targets of trajectorie generation) 
    * targets[:,1] are x positions, 
    * targets[:,2] are y positions, 
    * targets[:,3] are hit angle $\alpha_2$
* .DMP{1,9824} structures with DMP data for each exampel
    * .N
    * .dt
    * .a_z $\alpha_z$
    * .a_x
    * .c
    * .sigma_2
    * .w 
    * .tau,     time constant
    * .goal 
    * .y0
