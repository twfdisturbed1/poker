def w_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind of #{num1}" 
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1}s "
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind of #{num1}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1}s "
        $white_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1}s "
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}" 
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1}s "
        $white_rank << "#{num1}"
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind of #{num2}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num2}s "
        $white_rank << "#{num2}"
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House of #{num1} and #{num4}"
        $w_score += 6
        $white_hand = $white_hand + " Full House of #{num3}s and #{num1}s "
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House of #{num1} and #{num3}"
         $white_hand = $white_hand + " Full House of #{num1}s and #{num3}s "
        $w_score += 6
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House of #{num1} and #{num3}"
         $white_hand = $white_hand + " Full House of #{num1}s and #{num3}s "
        $w_score += 6
        $white_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1}s and #{num2}s "
        $w_score += 6
        $white_rank << "#{num1}"
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1}s and #{num2}s "
        $w_score += 6
        $white_rank << "#{num1}"
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1}s and #{num2}s "
        $w_score += 6
        $white_rank << "#{num1}"
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2}s and #{num1}s "
        $w_score += 6
        $white_rank << "#{num2}"
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2}s and #{num1}s "
        $w_score += 6
        $white_rank << "#{num2}"
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2}s and #{num1}s "
        $w_score += 6
        $white_rank << "#{num2}"
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House of #{num3} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num3}s and #{num1}s "
        $w_score += 6
        $white_rank << "#{num3}"
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1}s "
        $w_score += 4
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1}s "
        $w_score += 4
        $white_rank << "#{num1}"
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1}s "
        $w_score += 4
        $white_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_rank << "#{num1}"
        $white_hand = $white_hand + " 3 of a kind of #{num1}s "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_rank << "#{num1}"
        $white_hand = $white_hand + " 3 of a kind of #{num1}s "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_rank << "#{num1}"
        $white_hand = $white_hand + " 3 of a kind of #{num1}s "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " 3 of a kind of #{num2}s "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " 3 of a kind of #{num2}s "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " 3 of a kind of #{num3}s "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind of #{num3}"
        $w_score += 4
        $white_rank << "#{num3}"
        $white_hand = $white_hand + " 3 of a kind of #{num3}s "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num3}s   "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $w_score += 3 
        $white_rank << "#{num1}" << "#{num4}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num4}s   "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num4}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num4}s   "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num2}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_rank << "#{num1}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs of #{num2} and #{num4}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num4}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num4}s   "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs of #{num2} and #{num3}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num3}s   "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_rank << "#{num2}" << "#{num1}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs of #{num2} and #{num3} "
        $w_score += 3
        $white_rank << "#{num2}" << "#{num3}"
        $white_hand = $white_hand + " Two Pairs of #{num2}s and #{num3}s  "
    elsif num1 == num2 
         puts "A pair of #{num1}"
        $w_score += 2
        $white_rank << "#{num1}"
        $white_hand = $white_hand + " a pair of #{num1}s"
    elsif num1 == num3 
         puts "a pair of #{num1}"
         $white_hand = $white_hand + " a pair of #{num1}s "
        $w_score += 2
        $white_rank << "#{num1}"
    elsif num1 == num4
         puts "A pair of #{num1}"
         $white_hand = $white_hand + " a pair of #{num1}s "
        $w_score += 2
        $white_rank << "#{num1}"
    elsif num1 == num5
         puts "A pair of #{num1}"
        $w_score += 2
        $white_rank << "#{num1}"
        $white_hand = $white_hand + " a pair of #{num1}s "
    elsif num2 == num3
         puts "A pair of #{num2}"
        $w_score += 2
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " a pair of #{num2}s "
    elsif num2 == num4
         puts "A pair of #{num2}"
        $w_score += 2
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " a pair of #{num2}s "
    elsif num2 == num5
         puts "A pair of #{num2}"
        $w_score += 2
        $white_rank << "#{num2}"
        $white_hand = $white_hand + " a pair of #{num2}s "
    elsif num3 == num4
         puts "A pair of #{num3}"
        $w_score += 2
        $white_rank << "#{num3}"
        $white_hand = $white_hand + " a pair of #{num3}s "
    elsif num3 == num5
         puts "A pair of #{num3}"
        $w_score += 2
        $white_rank << "#{num3}"
        $white_hand = $white_hand + " a pair of #{num3}s "
    elsif num4 == num5
         puts "A pair of #{num4}"
        $w_score += 2
        $white_rank << "#{num4}"
        $white_hand = $white_hand + " a pair of #{num4}s "
    else
        puts "no matching cards"
    end
end

def b_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind of #{num1}" 
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1}s "
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind of #{num1}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1}s "
        $black_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1}s "
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}" 
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1}s "
        $black_rank << "#{num1}"
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind of #{num2}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num2}s "
        $black_rank << "#{num2}"
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House of #{num1} and #{num4}"
        $b_score += 6
        $black_hand = $black_hand + " Full House of #{num3}s and #{num1}s "
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House of #{num1} and #{num3}"
         $black_hand = $black_hand + " Full House of #{num1}s and #{num3}s "
        $b_score += 6
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House of #{num1} and #{num3}"
         $black_hand = $black_hand + " Full House of #{num1}s and #{num3}s "
        $b_score += 6
        $black_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1}s and #{num2}s "
        $b_score += 6
        $black_rank << "#{num1}"
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1}s and #{num2}s "
        $b_score += 6
        $black_rank << "#{num1}"
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1}s and #{num2}s "
        $b_score += 6
        $black_rank << "#{num1}"
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2}s and #{num1}s "
        $b_score += 6
        $black_rank << "#{num2}"
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2}s and #{num1}s "
        $b_score += 6
        $black_rank << "#{num2}"
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2}s and #{num1}s "
        $b_score += 6
        $black_rank << "#{num2}"
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House of #{num3} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num3}s and #{num1}s "
        $b_score += 6
        $black_rank << "#{num3}"
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1}s "
        $b_score += 4
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1}s "
        $b_score += 4
        $black_rank << "#{num1}"
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1}s "
        $b_score += 4
        $black_rank << "#{num1}"
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_rank << "#{num1}"
        $black_hand = $black_hand + " 3 of a kind of #{num1}s "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_rank << "#{num1}"
        $black_hand = $black_hand + " 3 of a kind of #{num1}s "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_rank << "#{num1}"
        $black_hand = $black_hand + " 3 of a kind of #{num1}s "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " 3 of a kind of #{num2}s "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " 3 of a kind of #{num2}s "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " 3 of a kind of #{num3}s "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind of #{num3}"
        $b_score += 4
        $black_rank << "#{num3}"
        $black_hand = $black_hand + " 3 of a kind of #{num3}s "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num3}s   "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $b_score += 3 
        $black_rank << "#{num1}" << "#{num4}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num4}s   "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num4}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num4}s   "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num2}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num2}s   "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_rank << "#{num1}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num1}s and #{num3}s   "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs of #{num2} and #{num4}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num4}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num4}s   "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs of #{num2} and #{num3}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num3}s   "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s   "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_rank << "#{num2}" << "#{num1}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num1}s  "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs of #{num2} and #{num3} "
        $b_score += 3
        $black_rank << "#{num2}" << "#{num3}"
        $black_hand = $black_hand + " Two Pairs of #{num2}s and #{num3}s  "
    elsif num1 == num2 
         puts "A pair of #{num1}"
        $b_score += 2
        $black_rank << "#{num1}"
        $black_hand = $black_hand + " a pair of #{num1}s"
    elsif num1 == num3 
         puts "a pair of #{num1}"
         $black_hand = $black_hand + " a pair of #{num1}s "
        $b_score += 2
        $black_rank << "#{num1}"
    elsif num1 == num4
         puts "A pair of #{num1}"
         $black_hand = $black_hand + " a pair of #{num1}s "
        $b_score += 2
        $black_rank << "#{num1}"
    elsif num1 == num5
         puts "A pair of #{num1}"
        $b_score += 2
        $black_rank << "#{num1}"
        $black_hand = $black_hand + " a pair of #{num1}s "
    elsif num2 == num3
         puts "A pair of #{num2}"
        $b_score += 2
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " a pair of #{num2}s "
    elsif num2 == num4
         puts "A pair of #{num2}"
        $b_score += 2
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " a pair of #{num2}s "
    elsif num2 == num5
         puts "A pair of #{num2}"
        $b_score += 2
        $black_rank << "#{num2}"
        $black_hand = $black_hand + " a pair of #{num2}s "
    elsif num3 == num4
         puts "A pair of #{num3}"
        $b_score += 2
        $black_rank << "#{num3}"
        $black_hand = $black_hand + " a pair of #{num3}s "
    elsif num3 == num5
         puts "A pair of #{num3}"
        $b_score += 2
        $black_rank << "#{num3}"
        $black_hand = $black_hand + " a pair of #{num3}s "
    elsif num4 == num5
         puts "A pair of #{num4}"
        $b_score += 2
        $black_rank << "#{num4}"
        $black_hand = $black_hand + " a pair of #{num4}s "
    else
        puts "no matching cards"
    end
end
