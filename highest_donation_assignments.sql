WITH aggregated_donations AS (
    SELECT
        d.assignment_id,
        dn.donor_type,
        ROUND(SUM(d.amount), 2) AS rounded_total_donation_amount
    FROM
        donations as d
    JOIN
        donors as dn 
		ON d.donor_id = dn.donor_id
    GROUP BY
        d.assignment_id, dn.donor_type
)
SELECT
    a.assignment_name,
    a.region,
    ad.rounded_total_donation_amount,
    ad.donor_type
FROM
    aggregated_donations as ad
JOIN
    assignments as a 
	ON ad.assignment_id = a.assignment_id
ORDER BY
    ad.rounded_total_donation_amount DESC
LIMIT 5;