using { golf } from '../db/schema';
service AdminService { 
    
  entity Rounds as projection on golf.Rounds;
  
}
