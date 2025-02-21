module Examples
    using Graphs
    using SimpleWeightedGraphs
    medium_pert = SimpleDiGraph(Edge.([
        1 => 2
        1 => 3
        1 => 4
        1 => 5
        4 => 6
        5 => 6
        2 => 7
        3 => 7
        6 => 7
        3 => 8
        6 => 8
        6 => 9
        7 => 10
        8 => 10
        9 => 10
    10 => 11
    ]))
    
    two_lines = SimpleDiGraph(Edge.([
        1 => 3, 3=>5, 5=>7, 7=>9,
        2 => 4, 4=>6, 6=>8,
    ]))

    loop = SimpleDiGraph(Edge.([
        1 .=> [2, 3];
        2 => 4; 4 => 6;
        3 => 5; 5 => 7;
        [6, 7] .=> 8 
    ]))

    cross = SimpleDiGraph(Edge.([
        1 .=> [2, 3];
        2 .=> [3, 4];
        3 => 4;
    ]))

    xcross = SimpleDiGraph(Edge.([
        1 .=> [2, 3, 4];
        2 .=> [3, 4];
        3 => 4;
    ]))

    sankey_3twos = SimpleWeightedDiGraph(6)
    add_edge!(sankey_3twos, 1, 3, 1.0)
    add_edge!(sankey_3twos, 1, 4, 2.0)
    add_edge!(sankey_3twos, 2, 3, 3.0)
    add_edge!(sankey_3twos, 2, 4, 8.0)
    add_edge!(sankey_3twos, 3, 5, 3.0)
    add_edge!(sankey_3twos, 3, 6, 1.0)
    add_edge!(sankey_3twos, 4, 5, 10.0)

    tree = SimpleDiGraph(Edge.([1 => 2, 2 => 3, 4 => 5, 4 => 6, 4 => 7, 4 => 8, 4 => 9, 4 => 10, 5 => 11, 5 => 12, 8 => 15, 8 => 16, 8 => 17, 8 => 18, 8 => 19, 9 => 20, 9 => 21, 10 => 22, 12 => 13, 13 => 14, 23 => 4, 23 => 24, 23 => 25, 23 => 26, 23 => 27, 23 => 28, 23 => 29, 23 => 30, 23 => 31, 28 => 32, 28 => 33, 29 => 35, 30 => 1, 30 => 38, 31 => 40, 33 => 34, 35 => 36, 35 => 37, 38 => 39, 40 => 41, 41 => 42]))

    tiny_depgraph = SimpleDiGraph(Edge.([
        1 => 2
        2 => 4
        2 => 5
        2 => 6
        3 => 2
        3 => 4
        3 => 7
        3 => 5
        3 => 8
        3 => 6
        4 => 9
        4 => 10
        4 => 11
    ]))


    large_depgraph = SimpleDiGraph(Edge.([
        1 => 2
        2 => 3
        3 => 4
        3 => 5
        5 => 6
        2 => 7
        2 => 5
        2 => 8
        8 => 9
        9 => 10
        9 => 11
        11 => 12
        12 => 13
        9 => 12
        8 => 14
        14 => 10
        8 => 15
        8 => 13
        8 => 16
        16 => 17
        17 => 13
        16 => 18
        16 => 19
        16 => 13
        16 => 20
        16 => 21
        8 => 22
        22 => 23
        22 => 24
        8 => 25
        25 => 18
        25 => 16
        25 => 26
        26 => 18
        26 => 19
        26 => 16
        26 => 20
        26 => 21
        25 => 21
        8 => 11
        2 => 27
        27 => 4
        27 => 11
        2 => 28
        28 => 29
        29 => 4
        28 => 8
        28 => 30
        30 => 11
        28 => 27
        28 => 31
        31 => 32
        31 => 33
        33 => 34
        28 => 33
        28 => 35
        35 => 8
        35 => 30
        35 => 33
        35 => 36
        36 => 37
        36 => 38
        35 => 11
        35 => 34
        28 => 4
        28 => 39
        39 => 3
        39 => 5
        39 => 8
        39 => 31
        39 => 33
        39 => 40
        40 => 41
        40 => 26
        28 => 40
        28 => 42
        42 => 8
        42 => 27
        42 => 31
        42 => 33
        42 => 35
        42 => 4
        42 => 43
        43 => 4
        43 => 44
        44 => 14
        44 => 32
        44 => 31
        44 => 22
        44 => 11
        44 => 45
        45 => 31
        45 => 11
        45 => 32
        43 => 31
        43 => 11
        43 => 34
        42 => 11
        28 => 11
        2 => 31
        2 => 33
        2 => 39
        2 => 4
        2 => 46
        46 => 8
        46 => 47
        46 => 31
        46 => 33
        46 => 48
        46 => 4
        46 => 44
        46 => 42
        46 => 11
        2 => 49
        49 => 8
        49 => 32
        49 => 31
        49 => 40
        49 => 44
        49 => 11
        49 => 45
        49 => 38
        2 => 40
        2 => 50
        2 => 44
        2 => 11
        2 => 45
        2 => 26
        2 => 38
    ]))

    extra_large_depgraph = SimpleDiGraph(Edge.([
        1 => 2
        2 => 3
        3 => 4
        3 => 5
        2 => 6
        6 => 7
        2 => 8
        8 => 9
        9 => 10
        10 => 11
        10 => 12
        12 => 13
        13 => 7
        10 => 13
        9 => 14
        14 => 10
        14 => 15
        15 => 11
        14 => 16
        14 => 7
        14 => 17
        17 => 18
        18 => 7
        17 => 19
        17 => 20
        17 => 7
        17 => 21
        17 => 22
        14 => 3
        14 => 23
        23 => 19
        23 => 17
        23 => 24
        24 => 19
        24 => 20
        24 => 17
        24 => 21
        24 => 22
        23 => 22
        14 => 12
        9 => 25
        25 => 26
        25 => 27
        27 => 28
        9 => 17
        9 => 24
        8 => 25
        8 => 14
        8 => 29
        2 => 14
        2 => 30
        30 => 31
        31 => 32
        32 => 33
        31 => 14
        31 => 34
        34 => 12
        31 => 35
        35 => 33
        35 => 12
        31 => 25
        31 => 27
        31 => 36
        36 => 14
        36 => 34
        36 => 27
        36 => 37
        37 => 38
        37 => 39
        36 => 12
        36 => 28
        31 => 33
        31 => 40
        40 => 41
        41 => 33
        41 => 42
        42 => 43
        40 => 42
        40 => 14
        40 => 25
        40 => 27
        40 => 44
        44 => 45
        44 => 24
        31 => 44
        31 => 46
        46 => 14
        46 => 35
        46 => 25
        46 => 27
        46 => 36
        46 => 33
        46 => 47
        47 => 33
        47 => 48
        48 => 15
        48 => 26
        48 => 25
        48 => 3
        48 => 12
        48 => 49
        49 => 25
        49 => 12
        49 => 26
        47 => 25
        47 => 12
        47 => 28
        46 => 12
        31 => 12
        30 => 50
        50 => 41
        50 => 51
        50 => 42
        50 => 14
        50 => 35
        50 => 31
        50 => 25
        50 => 27
        50 => 40
        50 => 33
        50 => 52
        52 => 14
        52 => 53
        52 => 25
        52 => 27
        52 => 54
        52 => 33
        52 => 48
        52 => 46
        52 => 12
        50 => 55
        55 => 14
        55 => 26
        55 => 25
        55 => 44
        55 => 48
        55 => 12
        55 => 49
        55 => 39
        50 => 44
        50 => 56
        50 => 48
        50 => 12
        50 => 49
        50 => 24
        50 => 39
        30 => 57
        57 => 41
        57 => 42
        57 => 14
        57 => 34
        57 => 35
        57 => 25
        57 => 58
        57 => 27
        57 => 36
        57 => 33
        57 => 40
        57 => 47
        57 => 59
        59 => 41
        59 => 60
        59 => 42
        57 => 46
        57 => 12
        30 => 51
        30 => 25
        30 => 40
        30 => 52
        30 => 61
        61 => 51
        61 => 42
        61 => 25
        61 => 62
        62 => 41
        62 => 59
        62 => 63
        62 => 42
        62 => 64
        62 => 65
        65 => 66
        61 => 44
        2 => 67
        2 => 68
        2 => 69
        69 => 25
        69 => 70
        69 => 12
        69 => 49
        2 => 71
        71 => 7
        71 => 72
        72 => 23
        72 => 17
        2 => 44
        2 => 17
        2 => 73
        73 => 17
        73 => 74
        74 => 17
        73 => 25
        2 => 75
        75 => 31
        75 => 50
        75 => 57
        75 => 51
        75 => 25
        75 => 76
        76 => 41
        76 => 42
        76 => 14
        76 => 25
        76 => 27
        76 => 77
        77 => 42
        77 => 78
        77 => 79
        79 => 43
        77 => 80
        80 => 41
        80 => 42
        80 => 81
        81 => 33
        81 => 42
        81 => 65
        80 => 60
        80 => 33
        80 => 65
        80 => 59
        77 => 12
        77 => 43
        76 => 36
        76 => 33
        76 => 40
        76 => 44
        76 => 46
        76 => 12
        75 => 52
        75 => 61
        2 => 39
        2 => 23
        2 => 25
        2 => 48
        2 => 82
        82 => 10
        82 => 50
        82 => 14
        82 => 45
        82 => 25
        82 => 7
        82 => 83
        83 => 84
        83 => 26
        83 => 80
        83 => 44
        83 => 12
        82 => 55
        82 => 80
        82 => 56
        82 => 12
        82 => 49
        82 => 39
        2 => 19
        2 => 50
        2 => 85
        85 => 6
        2 => 86
        86 => 10
        86 => 69
        86 => 25
        86 => 68
        86 => 17
        86 => 23
        86 => 24
        2 => 72
        2 => 7
        2 => 24
    ]))
end  # module


