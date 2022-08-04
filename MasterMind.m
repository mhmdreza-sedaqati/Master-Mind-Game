clc;
rng('shuffle');

ANS = randi([1000 9999]);       %Generate a 4-digit random integer number
ANS = num2str(ANS);             %Casting integer number to string   



%Compare player's guess with answer
for count = 1:9
        
    Guess = input("enter your number : ","s");
    %Get the player's guess
    
    
    %Player wins if her guess was correct
    if ( ANS == Guess )
        clc;
        disp(" ***** YOU WIN ***** ");
        disp("Congratulation ! You could guess the answer correctly ...");
        break;
        
        
    else
        True_Place = 0;  
        True_Digit = 0;
        
        
        %Give appropriate hint to player about her guess and answer
        for x = 1:4
            for y = 1:4
                if (ANS(x) == Guess(y))
                    if ( x == y )
                        True_Place = True_Place + 1;
                    else
                        True_Digit = True_Digit + 1;
                    end
                end
            end
        end
        
        
        
        %Show messages to player if he don't guess the answer yet
        if (count ~= 8)
            disp("Oh no ! Your guess was wrong ...");
            disp(["True place :" , True_Place ; "True digit :" , True_Digit]);
            disp(["You have" ,8-count, "chance"]);
            
        
        %Show messages to playeer if he was losed...!
        else
            clc;
            disp(" --- YOU LOSE ---");
            disp("Oh no ! You couldn't guess answer");
            break;
        end
        
    end
end