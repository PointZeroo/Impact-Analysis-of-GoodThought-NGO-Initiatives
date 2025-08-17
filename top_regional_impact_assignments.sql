-- CTE to calculate total donations per assignment
WITH assignment_donations AS (
    SELECT 
        assignment_id,
        COUNT(*) AS num_total_donations
    FROM donations
    GROUP BY assignment_id
    -- Implicitly ensures at least one donation (COUNT(*) >= 1)
),
-- CTE to rank assignments within regions by impact score
ranked_assignments AS (
    SELECT 
        a.assignment_name,
        a.region,
        a.impact_score,
        ad.num_total_donations,
        ROW_NUMBER() OVER (
            PARTITION BY a.region 
            ORDER BY a.impact_score DESC, a.assignment_id
        ) AS rank
    FROM assignments a
    JOIN assignment_donations ad 
        ON a.assignment_id = ad.assignment_id
)
-- Select top-ranked assignment per region
SELECT 
    assignment_name,
    region,
    impact_score,
    num_total_donations,
	rank
FROM ranked_assignments
WHERE rank = 1  -- Select only the highest-ranked per region
ORDER BY region ASC;  -- Sort regions alphabetically