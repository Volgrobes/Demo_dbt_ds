with artist as (
    select * from {{ source('EVALUATION', 'ARTIST') }}
),

final as (
    select * from artist
)

select ArtistId,
       Name,
       BirthYear,
       Country
from final