define_constants;
mpc = loadcase('case30');
mpc.bus(2,PD) = 30;
runopf(mpc);


results = rundcopf('case118');
final_objective = results.f;
gen6_output = results.gen(6, PG); 
branch51_flow = results.branch(51,PF);
