# Throwing-trajectories-dataset

#### Dataset used in the article 'Robot Skill Learning in Latent Space of Deep Autoencoders'

### Dataset

Throwing_trajectories.mat contains data structure:

robot_throws
* .robot_data (kinematical data for simulation - see Appendix D)
    * .L are lenghts of links, 
    * .base is robot base position,
    * .dt is time step of generated trajectories,
* .qPath{1,9824}[:,10] (array of 9824 generated trajectories, each in [:,10] matrix)
    * [:,1] are time values <img src="https://render.githubusercontent.com/render/math?math=\large t">,
    * [:,2:4] are joint positions <img src="https://render.githubusercontent.com/render/math?math=\textbf{y}(t)">, 
    * [:,5:7] are joint velocities <img src="https://render.githubusercontent.com/render/math?math=\dot{\textbf{y}}(t)">, 
    * [:,8:10] are joint accelerations <img src="https://render.githubusercontent.com/render/math?math=\ddot{\textbf{y}}(t)">, 
* .targets[9824,3] (targets of trajectory generation) 
    * targets[:,1] are target x positions <img src="https://render.githubusercontent.com/render/math?math=\large d">, 
    * targets[:,2] are target y positions <img src="https://render.githubusercontent.com/render/math?math=\large h">,  
    * targets[:,3] are hit angles <img src="https://render.githubusercontent.com/render/math?math=\large\alpha">,
* .DMP{1,9824} (structures with DMP data for each generated trajectory - see Appendix A)
    * .N is number of basis functions,
    * .dt is time step of DMP integration,
    * .a_z is constant <img src="https://render.githubusercontent.com/render/math?math=\alpha_z">,
    * .a_x is constant <img src="https://render.githubusercontent.com/render/math?math=\alpha_x">,
    * .c are center positions of basis functions,
    * .sigma_2 are squared variances of basis functions <img src="https://render.githubusercontent.com/render/math?math=\delta^2">,
    * .w is weight matrix <img src="https://render.githubusercontent.com/render/math?math=\textbf{ \omega }">,
    * .tau is time constant <img src="https://render.githubusercontent.com/render/math?math=\large \tau">,  
    * .goal is <img src="https://render.githubusercontent.com/render/math?math=\textbf{g}">,
    * .y0 is starting point <img src="https://render.githubusercontent.com/render/math?math=\textbf{y_0}">.

### Matlab support code for dataset  

kinematicsJacobian.m - calculates the end-effector position and the Jacobian matrix from the robot data in 'robot_throws.robot_data' and the selected joint position <img src="https://render.githubusercontent.com/render/math?math=\textbf{y}(t)">.


