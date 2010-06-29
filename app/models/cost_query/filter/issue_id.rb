class CostQuery::Filter::IssueId < CostQuery::Filter::Base
  def self.available_values
    Issue.all.map { |i| ["##{i.id} #{i.subject.length>24 ? i.subject.first(20)+'...': i.subject}", i.id] }
  end
end
