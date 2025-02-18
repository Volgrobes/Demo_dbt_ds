with track as (
    select tr.TrackId,
       tr.Name,
       tr.AlbumId,
       al.ArtistId,
       tr.GenreId,
       tr.Composer,
       tr.Milliseconds,
       tr.Bytes
    from {{ source('EVALUATION', 'TRACK') }} as tr
    LEFT JOIN {{ source('EVALUATION', 'ALBUM') }} as al ON tr.AlbumId = al.AlbumId
),

final as (
    select * from track
)

select *
from final