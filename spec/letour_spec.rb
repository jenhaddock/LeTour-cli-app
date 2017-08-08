require 'spec_helper'

RSpec.describe LeTour::Stage do
  context 'Class Methods' do
    LeTour::Scraper.scrape_page

    let(:stages){LeTour::Stage.all}

    describe '.all' do
      it 'returns an array of stages' do
        expect(stages).to be_an(Array)
        expect(stages.first).to be_a(LeTour::Stage)
      end
    end

      it 'correctly scrapes stage information' do
        expect(stages.first.stage).to eq("1")
        expect(stages.first.details).to eq("http://www.letour.com/le-tour/2017/us/stage-1.html")
        expect(stages.last.stage).to eq("21")
      end
    end

    describe '.find' do
      it 'returns the stage based on position in @@all' do
        expect(LeTour::Stage.find(1)).to eq(:stages[0])
      end
    end
end

  context 'Instance Methods' do
    stage_info = {:stage => "22",
                  :type => "Undulating",
                  :date => "Monday, July 24th",
                  :start => "Paris",
                  :finish => "Berlin",
                  :distance => "0km",
                  :details => "http://www.letour.com/le-tour/2017/us/stage-22.html"}
    subject{LeTour::Stage.new(stage_info)}

    describe '#stage' do
      it 'has a stage' do
        expect(subject.stage).to eq("22")
      end
    end

    describe '#type' do
      it 'has a type' do
        expect(subject.type).to eq("Undulating")
      end
    end

    describe '#date' do
      it 'has a date' do
        expect(subject.date).to eq("Monday, July 24th")
      end
    end

    describe '#start_line' do
      it 'has a start line' do
        expect(subject.start).to eq("Paris")
      end
    end

    describe '#finish_line' do
      it 'has a finish line' do
        expect(subject.finish).to eq("Berlin")
      end
    end

    describe '#distance' do
      it 'has a distance' do
        expect(subject.distance).to eq("0km")
      end
    end

    describe '#details' do
      it 'has a detail url' do
        expect(subject.details).to eq("http://www.letour.com/le-tour/2017/us/stage-22.html")
      end
    end
end
