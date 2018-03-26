load dataset;

X = training_set(:, [1 2]);
y = training_set(:, [3]);

% the please comment these out for the first polt and comment the 
%last loop which is ploting the second figure 
% part 1
% for i=1:2000
%     if y(i)==0
%        plot(X(i,1),X(i,2), 'r*');
% 
%     else 
%         plot(X(i,1),X(i,2), 'b*');
%     end 
%     hold on;
%     
%     
% end 



A = [ones(2000,1),X];
beta=(A'*A)\(A'*y);


rss=(norm(y-A*beta,2))^2;

x2=ones(2000,1);
for i=1:2000
    x2(i)=(1/2-beta(1)-beta(2).*training_set(i))./beta(3);
    
end
plot(training_set(:,1),x2,'k');
hold on;
xlim([-10 10]);
ylim([-8 10])


%%part2
z = test_set(:, [3]);
B=[ones(400,1), test_set(:,[1,2])];

v=B*beta;
z_head=ones(400,1);
for i=1:400
    
    if v(i)>=1/2
        z_head(i)=1;
    else
        z_head(i)=0;
    end
        
end

%compare z and z_head 

totoal=0;
for i=1:400
    
    result=abs(z(i)-z_head(i));
    totoal=totoal+result;
    
end

erro=totoal/400;

for second figure
for i=1:400
     if z(i)==0
       plot(test_set(i,1),test_set(i,2), 'r*');

    else 
        plot(test_set(i,1),test_set(i,2), 'b*');
    end 
    hold on;
    
end









