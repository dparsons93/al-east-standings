//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace assignment_two
{
    using System;
    using System.Collections.Generic;
    
    public partial class Team
    {
        public int TeamID { get; set; }
        public string TeamName { get; set; }
        public int Wins { get; set; }
        public int Losses { get; set; }
        public int RunsScored { get; set; }
        public int RunsAgainst { get; set; }
        public decimal ExpectedWinningPercentage { get; set; }
        public decimal RelativePowerIndex { get; set; }
    }
}
