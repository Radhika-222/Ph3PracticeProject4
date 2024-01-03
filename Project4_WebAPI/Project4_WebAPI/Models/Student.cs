using System;
using System.Collections.Generic;

namespace Project4_WebAPI.Models
{
    public partial class Student
    {
        public Student()
        {
            Marks = new HashSet<Mark>();
        }

        public int StudentId { get; set; }
        public int RollNo { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string Gender { get; set; } = null!;

        public virtual ICollection<Mark> Marks { get; set; }
    }
}
