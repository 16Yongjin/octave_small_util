function lt = lotto
    lt =zeros(5,6);
    pass = 0;
    for i = 1:5
        for j = 1:6
            while(pass == 0)
                t = floor(unifrnd(1,45));
                if (sum(any(lt(i, :)==t))==0)
                       lt(i,j) = t;
                       pass = 1;
                end
            end
          pass = 0;
        end
    end
    
    lt = sort(lt, 2);

endfunction

