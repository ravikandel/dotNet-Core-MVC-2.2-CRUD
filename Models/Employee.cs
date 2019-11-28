using System;  
using System.ComponentModel.DataAnnotations;  
  
namespace coreMVC.Models  
{  
    public class Employee
    {  
 public int ID { get; set; }    
        [Required]    
        public string Name { get; set; }    
        [Required]    
        public string Gender { get; set; }    
        [Required]    
        public string Department { get; set; }    
        [Required]    
        public string City { get; set; }   
    }  
}
