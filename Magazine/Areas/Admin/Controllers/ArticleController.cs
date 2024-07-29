using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;
using DataAccess.EntityFramework;
namespace Magazine.Areas.Admin.Controllers
{
    public class ArticleController : Controller
    {
        // GET: Admin/Article
        public ActionResult Index()
        {
            var iplArticles = new ArticleModel();
            var model = iplArticles.listAllArticles();
            return View(model);
        }

        // GET: Admin/Article/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Article/Create
        public ActionResult Create()
        {
            var artmodel = new CategoryModel();
            ViewBag.listCategories = artmodel.listAllCate();
            return View(new article());
        }

        // POST: Admin/Article/Create
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(article mdarti)
        {

            try
            {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {
                    var artmodel = new ArticleModel();
                    int iduser = 4;
                    int ress = artmodel.CreateArticle(mdarti.title, mdarti.textbody, mdarti.image, iduser, mdarti.cate_id);
                    if (ress > 0)
                    {
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm mới bài viết không thành công!");
                    }
                }
                return View(mdarti);

            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e + "Thêm mới bài viết không thành công!");
                return View(new article());
            }
        }

        // GET: Admin/Article/Edit/5
        public ActionResult Edit(int id)
        {
            var impArticle = new ArticleModel();
            var modell = impArticle.getByID(id);
            var artmodel = new CategoryModel();
            ViewBag.listCategories = artmodel.listAllCate();
            return View(modell);
        }

        // POST: Admin/Article/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(article kart)
        {

            if (ModelState.IsValid)
            {

                var model = new ArticleModel();
                model.Update(kart);
                return RedirectToAction("Index");

            }
            return View(kart);
        }

        // GET: Admin/Article/Delete/5
        public ActionResult Delete(int id)
        {
            ArticleModel catemd = new ArticleModel();
            catemd.DeleteArticle(id);
            return RedirectToAction("Index");
        }

        // POST: Admin/Article/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
