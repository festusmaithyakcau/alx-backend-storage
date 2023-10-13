-- List all bands with glam rock as their style
-- rank by their longevity
-- If the split year is null swap it for the current year(2022)
SELECT band_name,
COALESCE(split, 2022) - formed AS lifespan
FROM metal_bands 
WHERE STYLE LIKE '%Glam rock%' 
ORDER BY lifespan DESC;
