with playlist as (
    select plt.TrackId,
       plt.PlaylistId,
       pl.Name 
    from {{ source('EVALUATION', 'PLAYLISTTRACK') }} as plt
    LEFT JOIN {{ source('EVALUATION', 'PLAYLIST') }} as pl ON plt.PlaylistId = pl.PlaylistId
),

final as (
    select * from playlist
)

select *
from final