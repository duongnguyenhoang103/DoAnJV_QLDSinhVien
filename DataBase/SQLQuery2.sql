SELECT *
  FROM tblDiem INNer Join tblSinhVien 
ON tblDiem.fldMaSV = tblSinhVien.fldMaSV and tblSinhVien.fldMaLop = 'CN2' 

select tblSinhVien.fldmasv, tblSinhVien.fldHoTen,tblLop.fldMaLop ,tblMonHoc.fldTenMH, tblDiem.fldLanThi, tblDiem.fldHeSo,
tblDiem.fldDiem, tblDiem.fldTrangThai from tblSinhVien inner join tblLop 
on tblSinhVien.fldMaLop = tblLop.fldMaLop
inner join tblDiem on tblSinhVien.fldmasv = tblDiem.fldmasv
inner join tblMonHoc on tblDiem.fldMaMH = tblMonHoc.fldMaMH