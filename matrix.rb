class Matrix
  def initialize(input_string)
    @input_string = input_string
  end

  def rows
    @input_string.split("\n").map { |row| row.split.map(&:to_i) }
  end

  def columns
    row_count = rows.first.size
    column_count = rows.size
    result = Array.new(row_count) { Array.new(column_count) }
    (0...row_count).each do |r|
      (0...column_count).each do |c|
        result[r][c] = rows[c][r]
      end
    end
    result
  end
end
