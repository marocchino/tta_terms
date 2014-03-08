
describe "TtaTerms" do
  context "when find word" do
    let(:word) { "word" }
    it "make file" do
      `bundle exec ./tta_terms #{word}`
      expect(File.exists?("./tmp/list-#{word}")).to be_true
    end

    after do
      FileUtils.rm("./tmp/list-#{word}")
    end
  end
end
