FactoryGirl.define do

  factory :reservation do
    project_info_id 0

    factory :from0801 do
      start_date "2015-08-01"

      factory :a do
        end_date "2015-08-31"
      end

      factory :b do
        end_date "2015-09-30"
      end

      factory :c do
        end_date "2015-10-31"
      end
    end

    factory :from0901 do
      start_date "2015-09-01"

      factory :d do
        end_date "2015-09-30"
      end

      factory :e do
        end_date "2015-10-31"
      end
    end

    factory :from1001 do
      start_date "2015-10-01"

      factory :f do
        end_date "2015-10-31"
      end
    end

  end
end