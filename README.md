# Throwing-trajectories-dataset
Dataset used in the article 'Robot Skill Learning in Latent Space of Deep Autoencoders'

robot_throws
* .robot_data
    * .L,   lenghts of links  
    * .base,    robot base position
    * .dt,  time step
* .qPath{1,9824} 
    * array with [N,10] matrixes. N is the number of times samples with robot_data.dt timestep, 
    * [:,1] is time, 
    * [:,2:4] are joint positions, 
    * [:,5:7] are joint velocities, 
    * [:,8:10] are joint acelerations
* .targets[9824,3], targets of trajectorie generation, 
    * targets[:,1] are x positions, 
    * targets[:,2] are y positions, 
    * targets[:,3] are hit angle \alpha_2
* .DMP{1,9824} structures with DMP data for each exampel
    * .N
    * .dt
    * .a_z
    * .a_x
    * .c
    * .sigma_2
    * .w 
    * .tau,     time constant
    * .goal 
    * .y0
