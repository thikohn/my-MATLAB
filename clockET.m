%% Clock European Time
function x=clockET
x=zeros(20,20);
reset=x;
t=0; 
figure('color','black')
while t<600 %determines time program is executed in seconds, depends on pause (line 257)
   z=clock; %check with n*ones(1,4)
   Hr=mod(z(4),10); %hour right
   Hl=(z(4)-mod(z(4),10))/10; %hour left
   Mr=mod(z(5),10); %minute right
   Ml=(z(5)-mod(z(5),10))/10; %minute left
   x(8,10)=(((-1)^t)+1)/2; %Blinking ':'
   x(12,10)=(((-1)^t)+1)/2;
   
   %hours
   
   if Hl==0 
   
   x(3:17,2)=1; %left zero hour
   x(3:4,3)=1;
   x(16:17,3)=1;
   x(3:17,4)=1;
   
   elseif Hl==1 
   
   x(3:17,4)=1; %left one hour
   
   elseif Hl==2
   
   x(3:4,2:4)=1; %left two hour
   x(5:10,2)=1;
   x(10,2:4)=1;
   x(11:17,4)=1;
   x(16:17,2:4)=1;
   
   end
   
   if Hr==0
   
   x(3:17,6)=1; %right zero hour
   x(3:4,7)=1;
   x(16:17,7)=1;
   x(3:17,8)=1;
   
   elseif Hr==1
       
   x(3:17,8)=1; %right one hour
   
   elseif Hr==2
       
   x(3:4,6:8)=1; %right two hour
   x(5:10,6)=1;
   x(10,6:8)=1;
   x(11:17,8)=1;
   x(16:17,6:8)=1;
   
   elseif Hr==3
   
   x(3:4,6:8)=1; %right three hour
   x(3:17,8)=1;
   x(10,6:8)=1;
   x(16:17,6:8)=1;
   
   elseif Hr==4
       
   x(3:17,8)=1; %right four hour
   x(10,7)=1;
   x(10:17,6)=1;
   
   elseif Hr==5
       
   x(3:4,6:8)=1; %right five hour
   x(5:10,8)=1;
   x(10,6:8)=1;
   x(11:17,6)=1;
   x(16:17,7:8)=1;
   
   elseif Hr==6
       
   x(17,6:8)=1; %right six hour
   x(10,7)=1;
   x(3:17,6)=1;
   x(3,6:8)=1;
   x(3:10,8)=1;
   
   elseif Hr==7
       
   x(3:17,8)=1; %right seven hour
   x(17,6:8)=1;
   
   elseif Hr==8
   
   x(3:17,6)=1; %right eight hour
   x(3:4,7)=1;
   x(16:17,7)=1;
   x(3:17,8)=1;
   x(10,7)=1;
   
   elseif Hr==9
       
   x(3,6:8)=1; %right nine hour
   x(3:17,8)=1;
   x(17,6:8)=1;
   x(10:17,6)=1;
   x(10,7)=1;    
       
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