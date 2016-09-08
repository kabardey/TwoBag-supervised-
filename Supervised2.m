function [  ] = Supervised2(red1,red2)
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here

   bag1 = zeros(10); %for one hundred balls
   bag2 = zeros(10); %for one hundred balls
   
   %randomly generated bag1 with red balls
   while(red1 > 0)
       
       xAxis = randi(10,1);
       yAxis = randi(10,1);

        if (bag1(xAxis,yAxis) == 0)
            bag1(xAxis,yAxis) = 1;
            red1 = red1 - 1;
        end
   end
    
   disp(bag1);
   
   %randomly generated bag2 with red balls
   while(red2 > 0)
       
       xAxis = randi(10,1);
       yAxis = randi(10,1);
       
       if (bag2(xAxis,yAxis) == 0)
            bag2(xAxis,yAxis) = 1;
            red2 = red2 - 1;
       end
       
       
   end
   
   disp(bag2);
   
   tally = [0 0]; %for keeping the number of success
   
   random = randi(2,1); %for starting randomly with which one 
  
   if(random == 1) %select the first one
       x1 = randi(10,1);
       y1 = randi(10,1);
       
       disp('Bag1!');

       if(bag1(x1,y1) == 1) %if red
           tally(1) = tally(1) + 1;
       else
           tally(2) = tally(2) + 1;
       end
       
       
   else %select the second one
       x2 = randi(10,1);
       y2 = randi(10,1);
       
       disp('Bag2!');

       if(bag2(x2,y2) == 1)%if red
           tally(2) = tally(2) + 1;
       else
           tally(1) = tally(1) + 1;
       end
       
   end
   
   counter = 0;
   
   while(counter < 100)
       
       if(tally(1) > tally(2)) % select the first one
           
           x1 = randi(10,1);
           y1 = randi(10,1);
           hold on
           plot(counter,1,'rs');
           disp('Bag1!');

           if(bag1(x1,y1) == 1) %if red
                tally(1) = tally(1) + 1;
           else
                tally(2) = tally(2) + 1;
           end
           
       elseif (tally(1) == tally(2)) % select randomly
           
           %disp('Select randomly because tally is equal!');
          
           random = randi(2,1);
   
           if(random == 1) %select the first one
                x1 = randi(10,1);
                y1 = randi(10,1);
                hold on
                plot(counter,1,'rs');
                
                disp('Bag1!');
                
                if(bag1(x1,y1) == 1) %if red
                    tally(1) = tally(1) + 1;
                else
                    tally(2) = tally(2) + 1;
                end
           else %select the second one
                x2 = randi(10,1);
                y2 = randi(10,1);
                hold on
                plot(counter,2,'b*');
                
                disp('Bag2!');

                if(bag2(x2,y2) == 1)%if red
                    tally(2) = tally(2) + 1;
                else
                    tally(1) = tally(1) + 1;
                end
            end
     
       elseif (tally(2) > tally(1)) % select the second one
           
           x2 = randi(10,1);
           y2 = randi(10,1);
           hold on
           plot(counter,2,'b*');
           
           disp('Bag2!');
 
           if(bag2(x2,y2) == 1)%if red
                tally(2) = tally(2) + 1;
           else
                tally(1) = tally(1) + 1;
           end  
       else
           
       end
       
       counter = counter + 1 ;
        
   end

    

end

