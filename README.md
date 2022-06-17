# The API Stories

The Forest Service is considering a proposal to place in conservancy a forest of virgin Douglas fir just outside of Portland, Oregon. Before they give the go-ahead, they need to do an environmental impact study. They've asked you to build an API the rangers can use to report wildlife sightings.

Story: As a developer I can create an animal model in the database. An animal has the following information: common name, latin name, kingdom (mammal, insect, etc.).
[***DONE***]
Story: As the consumer of the API I can see all the animals in the database.
Hint: Make a few animals using Rails Console
[***DONE***]
Story: As the consumer of the API I can update an animal in the database.
[***DONE***]
Story: As the consumer of the API I can destroy an animal in the database.
[***DONE***]
Story: As the consumer of the API I can create a new animal in the database.
[***DONE***]
Story: As the consumer of the API I can create a sighting of an animal with date (use the datetime datatype), a latitude, and a longitude.
Hint: An animal has_many sightings. (rails g resource Sighting animal_id:integer ...)
Hint: Datetime is written in Rails as “year-month-day hr:min:sec" (“2022-01-28 05:40:30")

Story: As the consumer of the API I can update an animal sighting in the database.

Story: As the consumer of the API I can destroy an animal sighting in the database.

Story: As the consumer of the API, when I view a specific animal, I can also see a list sightings of that animal.
Hint: Checkout the Ruby on Rails API docs on how to include associations.

Story: As the consumer of the API, I can run a report to list all sightings during a given time period.
Hint: Your controller can look like this:

```
class SightingsController < ApplicationController
def index
sightings = Sighting.where(date: params[:start_date]..params[:end_date])
render json: sightings
end
end
```

Remember to add the start_date and end_date to what is permitted in your strong parameters method. In Postman, you will want to utilize the params section to get the correct data. Also see Routes with Params .

Stretch Challenges
Note: All of these stories should include the proper RSpec tests. Validations will require specs in spec/models, and the controller method will require specs in spec/requests.

Story: As the consumer of the API, I want to see validation errors if a sighting doesn't include: latitude, longitude, or a date.

Story: As the consumer of the API, I want to see validation errors if an animal doesn't include a common name, or a latin name.

Story: As the consumer of the API, I want to see a validation error if the animals latin name matches exactly the common name.

Story: As the consumer of the API, I want to see a validation error if the animals latin name or common name are not unique.

Story: As the consumer, I want to see a status code of 422 when a post request can not be completed because of validation errors.

Super Stretch Challenge
Story: As the consumer of the API, I can submit sighting data along with a new animal in a single API call.
Hint: Look into accepts_nested_attributes_for
