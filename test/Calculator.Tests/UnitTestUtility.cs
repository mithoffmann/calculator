using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Text;

namespace UnitTestDemo.Tests
{
    public class UnitTestUtility
    {
        public static T GetModel<T>(IActionResult actionResult) where T : class
        {
            var asViewResult = actionResult as ViewResult;

            return asViewResult.Model as T;
        }
    }
}
