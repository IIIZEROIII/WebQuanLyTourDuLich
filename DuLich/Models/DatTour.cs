//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DuLich.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DatTour
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DatTour()
        {
            this.DatTourDetails = new HashSet<DatTourDetail>();
        }
    
        public int ID { get; set; }
        public string taiKhoan { get; set; }
        public string Ten { get; set; }
        public string Email { get; set; }
        public Nullable<int> SoDienThoai { get; set; }
        public string NgayKhoiHanh { get; set; }
        public string NgayTroVe { get; set; }
        public string DiaChiDon { get; set; }
        public string DiaChiTha { get; set; }
        public string TourTuyChinh { get; set; }
        public string LoaiXe { get; set; }
        public Nullable<int> SoLuongHanhKhach { get; set; }
        public string TinNhan { get; set; }
        public Nullable<bool> TrangThai { get; set; }
        public Nullable<int> SoLuongNguoiLon { get; set; }
        public Nullable<int> SoLuongTreEm { get; set; }
    
        public virtual TaiKhoan TaiKhoan1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DatTourDetail> DatTourDetails { get; set; }
    }
}
