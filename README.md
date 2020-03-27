# Throwing-trajectories-dataset
Dataset used in the article 'Robot Skill Learning in Latent Space of Deep Autoencoders'

Throwing_trajectories.mat contains data structure:

robot_throws
* .robot_data (kinematical data for simulation)
    * .L------lenghts of links 
    * .base---robot base position
    * .dt-----time step of generated trajectories
* .qPath{1,9824}[:,10] (array of 9824 generated trajectories, each in [:,10] matrix)
    * [:,1] are time values <img src="https://render.githubusercontent.com/render/math?math=\Large t">,
    * [:,2:4] are joint positions <img src="https://render.githubusercontent.com/render/math?math=\large \textbf{y}(t)">, 
    * [:,5:7] are joint velocities <img src="https://render.githubusercontent.com/render/math?math=\large \dot{\textbf{y}}(t)">, 
    * [:,8:10] are joint accelerations <img src="https://render.githubusercontent.com/render/math?math=\large \ddot{\textbf{y}}(t)">, 
* .targets[9824,3] (targets of trajectory generation) 
    * targets[:,1] are x target positions <img src="https://render.githubusercontent.com/render/math?math=\large d">, 
    * targets[:,2] are y target positions <img src="https://render.githubusercontent.com/render/math?math=\large h">,  
    * targets[:,3] are hit angles <img src="https://render.githubusercontent.com/render/math?math=\alpha">
* .DMP{1,9824} (structures with DMP data for each generated trajectory - see Appendinx C)
    * .N       number of basis functions,
    * .dt      time step of DMP integration,
    * .a_z constant <img src="https://render.githubusercontent.com/render/math?math=\alpha_z">
    * .a_x constant <img src="https://render.githubusercontent.com/render/math?math=\alpha_x">
    * .c
    * .sigma_2 <img src="https://render.githubusercontent.com/render/math?math=\Large\sigma^2">
    * .w weights <img src="https://render.githubusercontent.com/render/math?math=w">
    * .tau, time constant <img src="https://render.githubusercontent.com/render/math?math=\tau">  
    * .goal <img src="https://render.githubusercontent.com/render/math?math=g">
    * .y0 <img src="https://render.githubusercontent.com/render/math?math=y_0">


