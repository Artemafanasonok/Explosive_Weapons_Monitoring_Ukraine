with fact_events as (select
   case
     when Date < '2022-02-24' then 'OOS'
     else 'full_scale'
     end as war_period,
   `SiND Event ID` as SiND_event_id,
   Date as event_date,
   Country as country,
   case
      when `Admin 1` like '%district%' then 'Kyiv'
      when `Admin 1` = 'Pecherskyi' then 'Kyiv'
      when `Admin 1` like '%Crimea%' then 'Crimea'
      when `Admin 1` like '%Kharkiv%' then 'Kharkiv Oblast'
      when `Admin 1` is null then 'not_defined'
      when `Admin 1` = 'No Information' then 'not_defined'
      when `Admin 1` in ('Kherson Raion', 'Henichesk Raion', 'Beryslav Raion') then 'Kherson Oblast'
      when `Admin 1` = 'Zolochiv Raion' then 'Lviv Oblast'
      when `Admin 1` = 'Khust Raion' then 'Zakarpattia Oblast'
      else `Admin 1`
    end as admin_unit,
   `Sector Affected` as sector_affected,
   Provider as provider,
   `Launch Type` as launch_type,
   affected as affected,
   coalesce(`Food Systems Damaged_Destroyed`, 'no_effect') as food_systems_effect,
   coalesce(`Water Systems Damaged_Destroyed`, 'no_effect') as water_systems_effect,
   coalesce(
      `Aid Infrastructure Damaged_Destroyed`, 0) as aid_infrastucture_effect,
   coalesce(
      `Health Infrastructure Damaged_Destroyed`, 0) as health_infrastucture_effect,
   coalesce(
      `Education Infrastructure Damaged_Destroyed`, 0) as education_infrastucture_effect,
   coalesce(
      `IDP_Refugee Camp_Building`, 0) as civillian_shelter_effect,
   coalesce(
      `Aid Workers Killed`, 0) as aid_workers_killed,
   coalesce(
      `Health Workers Killed`, 0) as health_workers_killed,
   coalesce(
      `Aid Health Workers Killed`, 0) as aid_health_workers_killed,
   coalesce(
      `Educators Killed`, 0) as educators_killed,
   coalesce(
      `Students Killed`, 0) as students_killed
from `project-5b789320-5896-42d2-820.Explosives.Table1`
where Country = 'Ukraine'
)
select 
  war_period,
  SiND_event_id,
  event_date,
  country,
  admin_unit,
  sector_affected,
  provider,
  launch_type,
  affected,
  food_systems_effect,
  water_systems_effect,
  aid_infrastucture_effect,
  health_infrastucture_effect,
  education_infrastucture_effect,
  civillian_shelter_effect,
  aid_workers_killed,
  health_workers_killed,
  aid_health_workers_killed,
  educators_killed,
  students_killed,
  aid_workers_killed + health_workers_killed + aid_health_workers_killed + educators_killed + students_killed as total_killed
  from fact_events;
