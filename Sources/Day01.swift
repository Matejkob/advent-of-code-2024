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

  func part1() -> Int {
    let leftSide = entities.compactMap { $0.first }.sorted()
    let rightSide = entities.compactMap { $0.last }.sorted()

    return zip(leftSide, rightSide)
      .reduce(0) { partialResult, next in
        partialResult + abs(next.0 - next.1)
      }
  }

  func part2() -> Int {
    typealias Number = Int
    typealias Count = Int

    var rightNumbersFrequency: [Number: Count] = [:]

    for number in entities.compactMap(\.last) {
      rightNumbersFrequency[number, default: 0] += 1
    }

    return entities.compactMap(\.first)
      .reduce(0) { partialResult, next in
        partialResult + next * (rightNumbersFrequency[next] ?? 0)
      }
  }
}
