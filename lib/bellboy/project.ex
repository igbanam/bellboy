defmodule Bellboy.Project do
  @derive [Poison.Encoder]
  defstruct [:id, :name]


    # {
    #     "archive_url": "https://api.letsfreckle.com/v2/projects/442962/archive",
    #     "billable": true,
    #     "billable_minutes": 23805,
    #     "billing_increment": 15,
    #     "budgeted_minutes": null,
    #     "color": "#d6c0fb",
    #     "created_at": "2017-05-31T10:07:44Z",
    #     "enabled": true,
    #     "entries": 99,
    #     "entries_url": "https://api.letsfreckle.com/v2/projects/442962/entries",
    #     "group": null,
    #     "id": 442962,
    #     "invoiced_minutes": 0,
    #     "merge_url": "https://api.letsfreckle.com/v2/projects/442962/merge",
    #     "minutes": 23805,
    #     "name": "Internal Products",
    #     "participants": [
    #         {
    #             "email": "damilola.akapo@andela.com",
    #             "first_name": "Damilola",
    #             "id": 65204,
    #             "last_name": "Akapo",
    #             "profile_image_url": "",
    #             "url": "https://api.letsfreckle.com/v2/users/65204"
    #         },
    #         {
    #             "email": "owajigbanam.ogbuluijah@andela.com",
    #             "first_name": "Owajigbanam",
    #             "id": 63363,
    #             "last_name": "Ogbuluijah",
    #             "profile_image_url": "",
    #             "url": "https://api.letsfreckle.com/v2/users/63363"
    #         }
    #     ],
    #     "remaining_minutes": null,
    #     "unarchive_url": "https://api.letsfreckle.com/v2/projects/442962/unarchive",
    #     "unbillable_minutes": 0,
    #     "uninvoiced_minutes": 23805,
    #     "updated_at": "2018-05-28T07:41:43Z",
    #     "url": "https://api.letsfreckle.com/v2/projects/442962"
    # },
end
