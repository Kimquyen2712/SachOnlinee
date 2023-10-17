using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SachOnline.Models;

namespace SachOnline.Controllers
{
    public class SachOnlineController : Controller
    {
        // GET: SachOnline
        //Tao đối tượng chứa csdl
        dbSachOnlineDataContext data = new dbSachOnlineDataContext();

        //Lấy ra sách cập nhật gần đây

            private List<Book> LaySachMoi(int count)
        {
            return data.Books.OrderByDescending(a => a.Published).Take(count).ToList();
        }
        public ActionResult Index()
        {
            var listSachMoi = LaySachMoi(6);
            return View(listSachMoi);
        }

        public ActionResult ChuDePartial()
        {
            var listChuDe = from CategoryID in data.Categories select CategoryID;
            return PartialView(listChuDe);
        }
        
        public ActionResult _NhaXuatBanPartial()
        {

            var listNXB = from NhaXuatBanID in data.NhaXuatBans select NhaXuatBanID;
            return PartialView(listNXB);
        }
        public ActionResult SachTheoChuDe(int? id)
        {
            var sach = from s in data.Books where s.CategoryID == id select s;
            return View(sach);
        }

        public ActionResult SachTheoNhaXuatBan(int? di)
        {
            var sach1 = from a in data.Books where a.NhaXuatBanID == di select a;
            return View(sach1);
        }
        private List<Book> LaySachBanNhieu(int count)
        {
            return data.Books.OrderByDescending(a => a.ViewCount).Take(count).ToList();
        }
        public ActionResult SachBanNhieuPartial()
        {
            var listSachBanNhieu = LaySachBanNhieu(5);
            return View(listSachBanNhieu);
        }
        public ActionResult ChiTietSach(int id)
        {
            var sach = from s in data.Books where s.BookID == id select s;
            return View(sach.Single());
        }
        
    }
}