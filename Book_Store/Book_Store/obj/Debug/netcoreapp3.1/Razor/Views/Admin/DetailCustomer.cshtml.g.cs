#pragma checksum "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "41f197db8b57247d13b11c28d7b84d1d643923b3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Admin_DetailCustomer), @"mvc.1.0.view", @"/Views/Admin/DetailCustomer.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\_ViewImports.cshtml"
using Book_Store;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\_ViewImports.cshtml"
using Book_Store.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"41f197db8b57247d13b11c28d7b84d1d643923b3", @"/Views/Admin/DetailCustomer.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4ebc6c3046f7a977f9a849bd20e64aeca0700b6b", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Admin_DetailCustomer : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Book_Store.Models.Customer>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Book", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 3 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
 if (User.Identity.IsAuthenticated && User.IsInRole("Administrator"))
{ 


#line default
#line hidden
#nullable disable
            WriteLiteral(@"<section style=""background-color: #eee;"">
    <div class=""container py-4"">
        <div>
            <h1 class=""text-center"">Customer's Information</h1><br />
        </div>
        <div class=""row"">
            <div class=""col-lg-4"">
                <div class=""card mb-4"">
                    <div class=""card-body text-center"">
                        <img class=""rounded-circle img-fluid"" style=""height: 200px; width: 200px;""");
            BeginWriteAttribute("src", " src=\"", 538, "\"", 559, 1);
#nullable restore
#line 15 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
WriteAttributeValue("", 544, Model.CPicture, 544, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\n                          <br>\n                        <h5 class=\"text-muted mb-4\">Customer Information</h5>\n                        <h5 class=\"my-3\">");
#nullable restore
#line 18 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                    Write(Model.CName);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h5>
                    </div>
                </div>
            </div>

            <div class=""col-lg-8"">
                <div class=""card mb-4"">
                    <div class=""card-body"">
                        <div class=""row"">
                            <div class=""col-sm-3"">
                                <p class=""mb-0"">Full Name</p>
                            </div>
                            <div class=""col-sm-9"">
                                <p class=""text-muted mb-0"">");
#nullable restore
#line 31 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                                      Write(Model.CName);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</p>
                            </div>
                        </div>
                        <hr>
                        <div class=""row"">
                            <div class=""col-sm-3"">
                                <p class=""mb-0"">Email</p>
                            </div>
                            <div class=""col-sm-9"">
                                <p class=""text-muted mb-0"">");
#nullable restore
#line 40 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                                      Write(Model.CEmail);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</p>
                            </div>
                        </div>
                        <hr>
                        <div class=""row"">
                            <div class=""col-sm-3"">
                                <p class=""mb-0"">Phone</p>
                            </div>
                            <div class=""col-sm-9"">
                                <p class=""text-muted mb-0"">");
#nullable restore
#line 49 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                                      Write(Model.CPhoneNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</p>
                            </div>
                        </div>
                        <hr>
                        <div class=""row"">
                            <div class=""col-sm-3"">
                                <p class=""mb-0"">Gender</p>
                            </div>
                            <div class=""col-sm-9"">
                                <p class=""text-muted mb-0"">
                                    
");
#nullable restore
#line 60 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                     if (@Model.CGender == 'F')
                                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        <p class=\"text-muted mb-0\">Female</p>\n");
#nullable restore
#line 63 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                    }
                                    else if (@Model.CGender == 'M')
                                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        <p class=\"text-muted mb-0\">Male</p>\n");
#nullable restore
#line 67 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                    }
                                    else
                                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        <p class=\"text-muted mb-0\">Other</p>\n");
#nullable restore
#line 71 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                    }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                            </div>
                        </div>
                        <hr>
                        <div class=""row"">
                            <div class=""col-sm-3"">
                                <p class=""mb-0"">Address</p>
                            </div>
                            <div class=""col-sm-9"">
                                <p class=""text-muted mb-0"">");
#nullable restore
#line 81 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
                                                      Write(Model.CAddress);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</section>\n");
#nullable restore
#line 90 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
} else {

#line default
#line hidden
#nullable disable
            WriteLiteral("    <html>\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "41f197db8b57247d13b11c28d7b84d1d643923b311128", async() => {
                WriteLiteral(@"
<meta name=""viewport"" content=""width=device-width, initial-scale=1"">
<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

.button-27 {
  appearance: none;
  background-color: #000000;
  border: 2px solid #1A1A1A;
  border-radius: 15px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Roobert,-apple-system,BlinkMacSystemFont,""Segoe UI"",Helvetica,Arial,sans-serif,""Apple Color Emoji"",""Segoe UI Emoji"",""Segoe UI Symbol"";
  font-size: 16px;
  font-weight: 600;
  line-height: normal;
  margin: 0;
  min-height: 60px;
  min-width: 0;
  outline: none;
  padding: 16px 24px;
  text-align: center;
  text-decoration: none;
  transition: all 300ms cubic-bezier(.23, 1, 0.32, 1);
  user-select: none;
  -webkit-user-select: none;
  touch-actio");
                WriteLiteral(@"n: manipulation;
  width: 20%;
  will-change: transform;
}

.button-27:disabled {
  pointer-events: none;
}

.button-27:hover {
  box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
  transform: translateY(-2px);
}

.button-27:active {
  box-shadow: none;
  transform: translateY(0);
}
</style>
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "41f197db8b57247d13b11c28d7b84d1d643923b313449", async() => {
                WriteLiteral(@"

<h1>Alert Messages</h1>

<p>Click on the ""x"" symbol to close the alert message.</p>
<div class=""alert"">
  <span class=""closebtn"" onclick=""this.parentElement.style.display='none';"">&times;</span> 
  <strong>Danger!</strong> <h2>You have no access to this section.</h2>
  </div>
  <div>
  <br>
  ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "41f197db8b57247d13b11c28d7b84d1d643923b314009", async() => {
                    WriteLiteral("<button class=\"button-27\" role=\"button\">Back To Home</button>");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n  </div>\n\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n</html>\n");
#nullable restore
#line 175 "D:\Data Cloud\OneDrive - PITVN Community\SourceCode\Apli-Dev\Book_Store\Book_Store\Views\Admin\DetailCustomer.cshtml"
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Book_Store.Models.Customer> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
