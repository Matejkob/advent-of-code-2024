import Algorithms

struct Day01: AdventDay {
    // Save your data in a corresponding text file in the `Data` directory.
    var data: String
    
    // Splits input data into its component parts and convert from string.
    var entities: [[Int]] {
        data.split(whereSeparator: \.isNewline)
            .map {
                $0.split(separator: " ")
                    .compactMap { Int($0) }
            }
    }
    
    // Replace this with your solution for the first part of the day's challenge.
    func part1() -> Int {
        let leftSide = entities.compactMap { $0.first }.sorted()
        let rightSide = entities.compactMap { $0.last }.sorted()
        
        return zip(leftSide, rightSide)
            .reduce(0) { partialResult, next in
                partialResult + abs(next.0 - next.1)
            }
    }
    
    // Replace this with your solution for the second part of the day's challenge.
    func part2() -> Any {
        // Sum the maximum entries in each set of data
//        entities.map { $0.max() ?? 0 }.reduce(0, +)
        ()
    }
}
