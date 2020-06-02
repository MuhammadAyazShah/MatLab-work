matchsticks=21; n=0;
matchsticks=matchsticks-n;
while matchsticks>=1
    fprintf('Match sticks are %i\n',matchsticks)
    user=input('Enter your choise from 1,2,3, or 4; user=');
    fprintf('You picked %i\n',user)
    if user>=5|userr<=0
        fprintf('Invalid choise\n')
        continue
    end
    computer=5-user;
    fprintf('Computer picked %i\n',computer)
    matchsticks=matchsticks-computer-user;
    if matchsticks==1
        fprintf('Match sticks is %i\n',matchsticks)
        fprintf('You lose!!!:(:(:[\n')
        break
    end
end