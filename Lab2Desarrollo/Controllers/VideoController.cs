using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            ViewData["video"] = BD.BaseHelper.ejecutarConsulta(
                "SELECT * FROM video",
                CommandType.Text);
            return View();
        }//Mostrar videos
        public ActionResult Create()
        {
            return View();
        }//crear 1
        [HttpPost]
        public ActionResult Create(int idVideo, string titulo, int repro, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BD.BaseHelper.ejecutarSentencia("sp_video_insert", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Video");
        }//Crear2
        public ActionResult Delete()
        {
            return View();
        }//Delete 1
        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            BD.BaseHelper.ejecutarSentencia("Delete from video Where idVideo=@idVideo", CommandType.Text, parametros);

            return RedirectToAction("Index", "Video");
        }//Delete 2
        public ActionResult Edit()
        {
            return View();
        }//Update 1
        [HttpPost]
        public ActionResult Edit(int idVideo, string titulo, int repro, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BD.BaseHelper.ejecutarSentencia("Update video Set idVideo = @idVideo, titulo = @titulo, repro= @repro, url = @url WHERE idVideo = @idVideo", CommandType.Text, parametros);

            return RedirectToAction("Index", "Video");
        }//Update 2

    }
}
