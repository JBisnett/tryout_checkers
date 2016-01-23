#!/bin/ruby
require_relative "board"
INF = 1.0/0.0

class Node
    @player
    @board
    def initialize player, board
        @board = board
    end
    def children
        @board.moves(@player).map do |move|
            new Node -@player, move
        end
    end
    def heuristic
        @board.inject(0){|sum, arr| sum + arr.inject(0){|sum2, x| sum2 + x}}
    end
end


def ab_prune(node, depth, a, b, maxingPlayer)
    return heuristic(node), node if depth == 0 || terminal(node)
    if maxingPlayer == 1
        ret_child
        v = -INF
        node.children.each do |child|
            ab_val, child_val = ab_prune(child, depth-1, a, b, -1)
            if ab_val > v
                v = ab_val
                ret_child = child
            end
            a = [a,v].max
            break if b <= a
        end
        return v, ret_child
    else
        ret_child
        v = INF
        node.children.each do |child|
            ab_val, child_val = ab_prune(child, depth-1, a, b, 1)
            if ab_val < v
                v = ab_val
                ret_child = child
            end
            b = [b, v].min
            break if b <=a
        end
        return v, ret_child
    end
end


