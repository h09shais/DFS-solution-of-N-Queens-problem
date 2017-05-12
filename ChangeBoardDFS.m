function boardArr = ChangeBoardDFS(boardArr, row, col, noOfQueen)
    for i = row : noOfQueen           
        for j = 1 : noOfQueen               
            if (CheckValidMove(boardArr, i, j, noOfQueen) == 1)                   
                boardArr(i, j) = 1;                
                boardArr = ChangeBoardDFS(boardArr, i + 1, j + 1, noOfQueen);
                if( length( boardArr( boardArr == 1)) == noOfQueen) 
                    break;
                end
                boardArr(i, j) = 0;                   
            end
        end
    end
end
