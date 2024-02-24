SELECT costcenter5_.id AS col_0_0_,
       costcenter5_.code AS col_1_0_,
       costcenter5_.name AS col_2_0_,
       costcenter5_.locality AS col_3_0_,
       costcenter5_.parent_id AS col_4_0_,
       sum(billitem0_.displayed_value) AS col_5_0_
FROM bill_item billitem0_
INNER JOIN bill bill1_ ON billitem0_.bill_id=bill1_.id
INNER JOIN subscription subscripti7_ ON bill1_.subscription_id=subscripti7_.id
LEFT OUTER JOIN affiliate affiliate8_ ON subscripti7_.affiliate_id=affiliate8_.id
INNER JOIN LINE line2_ ON billitem0_.line_id=line2_.id
INNER JOIN validity validities4_ ON line2_.id=validities4_.line_id
LEFT OUTER JOIN validity validities5_ ON line2_.id=validities5_.line_id
LEFT OUTER JOIN employee employee6_ ON validities5_.employee_id=employee6_.id
LEFT OUTER JOIN cost_center costcenter5_ ON validities4_.cost_center_id=costcenter5_.id
INNER JOIN company company3_ ON billitem0_.company_id=company3_.id
WHERE (billitem0_.hide = 'false')
AND billitem0_.bill_id in (1019919, 1016591, 1016590, 1016589, 1016588, 1016587, 1016586, 1016585, 1016584, 1016583, 1016582, 1016581, 1016580, 1016579, 1016578, 1016577, 1016861, 1016860, 1016859, 1019162, 1019161, 1019160, 1019159, 1016597, 1019156, 1016596, 1019155, 1016595, 1016594, 1016593, 1016592, 1019920, 1020719, 1023273, 1018146, 1018431, 1018430, 1018429, 1018428, 1018427, 1018426, 1029945, 1018425, 1018424, 1029943, 1029942, 1020721, 1020720, 1018442, 1018441, 1018440, 1018439, 1018438, 1018437, 1018436, 1018435, 1018434, 1018433, 1018432, 1020507, 1020506, 1020505, 1020504, 1020503, 1020502, 1020501, 1020500, 1020499, 1020498, 1021801, 1021799, 1021798, 1021797, 1021796, 1021795, 1021794, 1021055, 1016447, 1021054, 1021053, 1021052, 1021051, 1021050, 1021049, 1021048, 1015925, 1015924, 1020019, 1015923, 1015922, 1015921, 1015920, 1023366, 1016964, 1016449, 1016448, 1021056, 1022111, 1018047, 1018046, 1018045, 1018044, 1022927, 1022926, 1022925, 1022924, 1019339, 1022923, 1022922, 1019338, 1022921, 1019337, 1022920, 1019336, 1022919, 1016261, 1016260, 1016258, 1016257, 1016256, 1017810, 1017809, 1022929, 1022928, 1017808, 1017577, 1016296, 1016294, 1016293, 1016292, 1016291, 1016290, 1016289, 1016570, 1016569, 1016568, 1016567, 1016566, 1016564, 1016563)
  AND billitem0_.company_id=792
  AND billitem0_.bill_cost_type='TELECOM'
  AND billitem0_.date>=validities4_.init_date
  AND billitem0_.date<validities4_.end_date
  AND validities4_.type=0
  AND validities5_.type=1
  AND validities5_.end_date>='2021-10-01'
  AND billitem0_.date>=validities5_.init_date
  AND billitem0_.date<validities5_.end_date
  AND line2_.id=billitem0_.line_id
  AND validities4_.cost_center_id in (90800, 90467, 160250, 90830)
  AND employee6_.id in (661912,1070691,669916,1103032,670083,659719,660023,1046369,914114)
GROUP BY costcenter5_.id, costcenter5_.code, costcenter5_.name;