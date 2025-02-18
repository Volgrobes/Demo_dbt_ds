with album as (
    select * from {{ source('EVALUATION', 'ALBUM') }}
),

final as (
    select * from album
)

select AlbumId,
       Title,
       ProdYear,
       CdNumber
from final