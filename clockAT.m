%% Clock American Time
function x=clockAT
x=zeros(20,20);
reset=x;
t=0; 
figure('color','black')
while t<10 %determines time program is executed in seconds
   z=clock; %check with n*ones(1,4)
   Mr=mod(z(5),10); %minute right
   Ml=(z(5)-mod(z(5),10))/10; %minute left
   x(8,10)=(((-1)^t)+1)/2; %Blinking ':'
   x(12,10)=(((-1)^t)+1)/2;
   
   %hours
   
   if z(4)==0 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:17,6)=1; %right zero hour
   x(3:4,7)=1;
   x(16:17,7)=1;
   x(3:17,8)=1;
   
   elseif z(4)==1 || z(4)==13 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:17,8)=1; %right one hour
   
   elseif z(4)==2 || z(4)==14 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:4,6:8)=1; %right two hour
   x(5:10,6)=1;
   x(10,6:8)=1;
   x(11:17,8)=1;
   x(16:17,6:8)=1;
   
   elseif z(4)==3 || z(4)==15 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:4,6:8)=1; %right three hour
   x(3:17,8)=1;
   x(10,6:8)=1;
   x(16:17,6:8)=1;
   
   elseif z(4)==4 || z(4)==16 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:17,8)=1; %right four hour
   x(10,7)=1;
   x(10:17,6)=1;
   
   elseif z(4)==5 || z(4)==17
    
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:4,6:8)=1; %right five hour
   x(5:10,8)=1;
   x(10,6:8)=1;
   x(11:17,6)=1;
   x(16:17,7:8)=1;
   
   elseif z(4)==6 || z(4)==18 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(17,6:8)=1; %right six hour
   x(10,7)=1;
   x(3:17,6)=1;
   x(3,6:8)=1;
   x(3:10,8)=1;
   
   elseif z(4)==7 || z(4)==19 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:17,8)=1; %right seven hour
   x(17,6:8)=1;
   
   elseif z(4)==8 || z(4)==20 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3:17,6)=1; %right eight hour
   x(3:4,7)=1;
   x(16:17,7)=1;
   x(3:17,8)=1;
   x(10,7)=1;
   
   elseif z(4)==9 || z(4)==21 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   x(3,6:8)=1; %right nine hour
   x(3:17,8)=1;
   x(17,6:8)=1;
   x(10:17,6)=1;
   x(10,7)=1;
   
   elseif z(4)==10 || z(4)==22 
   
   x(3:17,4)=1; %left one hpur
   
   x(3:17,6)=1; %right zero hour
   x(3:4,7)=1;
   x(16:17,7)=1;
   x(3:17,8)=1;
   
   elseif z(4)==11 || z(4)==23 
   
   x(3:17,4)=1; %left one hour
   
   x(3:17,8)=1; %right one hour
   
   elseif z(4)==12  
   
   x(3:17,4)=1; %left one hour
   
   x(3:4,6:8)=1; %right two hour
   x(5:10,6)=1;
   x(10,6:8)=1;
   x(11:17,8)=1;
   x(16:17,6:8)=1;
   end
   
   %Minutes
   
   if Ml==0
   
   x(3:17,12)=1; %left zero min
   x(3:4,13)=1;
   x(16:17,13)=1;
   x(3:17,14)=1;
   
   elseif Ml==1
   
   x(3:17,14)=1; %left one min    
       
   elseif Ml==2
    
   x(3:4,12:14)=1; %left two min
   x(5:10,12)=1;
   x(10,12:14)=1;
   x(11:17,14)=1;
   x(16:17,12:14)=1;    
      
   elseif Ml==3
   
   x(3:4,12:14)=1; %left three min
   x(3:17,14)=1;
   x(10,12:14)=1;
   x(16:17,12:14)=1;
   
   elseif Ml==4
   
   x(3:17,14)=1; %left four min
   x(10,13)=1;
   x(10:17,12)=1;
   
   elseif Ml==5
   
   x(3:4,12:14)=1; %left five min
   x(5:10,14)=1;
   x(10,12:14)=1;
   x(11:17,12)=1;
   x(16:17,13:14)=1;
   
   elseif Ml==6
   
   x(17,12:14)=1; %left six min
   x(10,13)=1;
   x(3:17,12)=1;
   x(3,12:14)=1;
   x(3:10,14)=1;
   
   elseif Ml==7
   
   x(3:17,14)=1; %left seven min
   x(17,12:14)=1;    
       
   elseif Ml==8
   
   x(3:17,12)=1; %left eight min
   x(3:4,13)=1;
   x(16:17,13)=1;
   x(3:17,14)=1;
   x(10,13)=1;    
       
   elseif Ml==9
   
   x(3,12:14)=1; %left nine min
   x(3:17,14)=1;
   x(17,12:14)=1;
   x(10:17,12)=1;
   x(10,13)=1;    
       
   end
   
   if Mr==0
   
   x(3:17,16)=1; %right zero min
   x(3:4,17)=1;
   x(16:17,17)=1;
   x(3:17,18)=1;
   
   elseif Mr==1 
     
   x(3:17,18)=1; %right one min   
       
   elseif Mr==2
    
   x(3:4,16:18)=1; %right two min
   x(5:10,16)=1;
   x(10,16:18)=1;
   x(11:17,18)=1;
   x(16:17,16:18)=1;    
       
   elseif Mr==3
       
   x(3:4,16:18)=1; %right three min
   x(3:17,18)=1;
   x(10,16:18)=1;
   x(16:17,16:18)=1;    
       
   elseif Mr==4
       
   x(3:17,18)=1; %right four min
   x(10,17)=1;
   x(10:17,16)=1;    
       
   elseif Mr==5
       
   x(3:4,16:18)=1; %right five min
   x(5:10,18)=1;
   x(10,16:18)=1;
   x(11:17,16)=1;
   x(16:17,17:18)=1;
       
   elseif Mr==6
    
   x(17,16:18)=1; %right six min
   x(10,17)=1;
   x(3:17,16)=1;
   x(3,16:18)=1;
   x(3:10,18)=1;    
       
   elseif Mr==7
       
   x(3:17,18)=1; %right seven min
   x(17,16:18)=1;    
       
   elseif Mr==8
       
   x(3:17,16)=1; %right eight min
   x(3:4,17)=1;
   x(16:17,17)=1;
   x(3:17,18)=1;
   x(10,17)=1;     
       
   elseif Mr==9
       
   x(3,16:18)=1; %right nine min
   x(3:17,18)=1;
   x(17,16:18)=1;
   x(10:17,16)=1;
   x(10,17)=1;      
       
   end

pcolor(x)
colormap copper %change color, for example 'gray','summer','spring','parula',...
axis off
pause(0.5) %refresh rate
x=reset;
t=t+1;

end
end