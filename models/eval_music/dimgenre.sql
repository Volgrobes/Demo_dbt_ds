with genre as (
    select * from {{ source('EVALUATION', 'GENRE') }}
),

final as (
    select * from genre
)

select GenreId,
       Name,
from final