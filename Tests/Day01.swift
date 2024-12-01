import Testing

@testable import AdventOfCode

struct Day01Tests {
  let testData = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """

  @Test func testPart1() async throws {
    let result = Day01(data: testData).part1()
    
    #expect(result == 11)
  }

  @Test func testPart2() async throws {
    let challenge = Day00(data: testData)
    #expect(String(describing: challenge.part2()) == "32000")
  }
}
