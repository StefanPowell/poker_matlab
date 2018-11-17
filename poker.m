deck = [2 3 4 5 6 7 8 9 10 11 12 13 14; 2 3 4 5 6 7 8 9 10 11 12 13 14; 2 3 4 5 6 7 8 9 10 11 12 13 14; 2 3 4 5 6 7 8 9 10 11 12 13 14]
check_deck = [0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
player1_amount = 0 % total coins
player2_amount = 0 % total coins
player3_amount = 0 % total coins
player4_amount = 0 % total coins
players_hand = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0] %stores each player hand
bets = [0 0 0 0] %stores bets of each player

%make sure value is not less than one and not greater than 5
for j=1:4,
   prompt = 'How much coins do you want to purchase ($1 - 5$)?';
   coins = input(prompt)
   if (j == 1)
    player1_amount = coins
   elseif (j == 2)
    player2_amount = coins
   elseif (j == 3)
    player3_amount = coins
   elseif (j == 4)
   player4_amount = coins
   end
end

%make sure same card not selected from deck twice
count = 1
for x=1:4,
    for y=1:2
        column_card_select = randi([1 4])
        row_card_select = randi([2 14])
        players_hand(count, 1) = column_card_select
        players_hand(count, 2) = row_card_select
        check_deck(column_card_select, row_card_select) = 1
        count = count + 1
    end
end

%place bets 
%player 1 and two should not be hard coded

prompt = 'What is the minimum bid';
player_1_bet = input(prompt)
if(player_1_bet < player1_amount)
    bets(1,1) = player_1_bet
    player1_amount = player1_amount - player_1_bet
end

prompt = 'What is the maximum bid';
player_2_bet = input(prompt)
if(player_2_bet < player2_amount)
    bets(1,2) = player_2_bet
    player2_amount = player2_amount - player_2_bet
end

% prompt = 'Do you wish to call - C, fold = F, raise R';
% player_3_bet = input(prompt)
% switch player_3_bet
%     case 'C'
%         if(player_3_bet >= (player2_amount))
%             bets(1,3) = player_3_bet
%             player3_amount = player3_amount - player_3_bet
%         else
%             fold
%         end
%     case 'R'
%         if(player_3_bet > (2*player2_amount))
%             bets(1,3) = player_3_bet
%             player3_amount = player3_amount - player_3_bet
%         else
%             call 
%             fold
%         end 
%     otherwise                           %Fold
%         
% end


%need to create function to change player each time


