RSpec.describe LongestShortest do
  it "has a version number" do
    expect(LongestShortest::VERSION).not_to be nil
  end

  it "provides longest" do
    sh = Halfshell.new
    expect(sh << "cat spec/fixtures/words | ./exe/longest").to eq <<-Output
the
ruby
eunoia
pneumonoultramicroscopicsilicovolcanoconiosis
Output
  end

  it "provides shortest" do
    sh = Halfshell.new
    expect(sh << "cat spec/fixtures/words | ./exe/shortest").to eq <<-Output
pneumonoultramicroscopicsilicovolcanoconiosis
eunoia
ruby
the
Output
  end
end
