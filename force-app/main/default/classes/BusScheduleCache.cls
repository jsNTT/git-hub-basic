public class BusScheduleCache {
    private Cache.OrgPartition part;
    
    public BusScheduleCache(){
        part = new Cache.OrgPartition('local.BusSchedule');
    }

    public void putSchedule(String busLine, Time[] schedule){
        part.put(busLine, schedule);
    }
    
    public Time[] getSchedule(String busLine){
        Time[] schedule = (Time[])part.get(busLine);
        if(schedule == null){
            schedule = new list<Time>{Time.newInstance(08, 0, 0, 0), Time.newInstance(17, 0, 0, 0)};
        }
        return schedule;
    }
}