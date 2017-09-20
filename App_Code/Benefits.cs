using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Benefits 的摘要说明
/// </summary>
public class Benefits
{
    public Benefits()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public struct BenefitInfo
    {
        public string benefitName;
        public string benefitPage;
    }
    public BenefitInfo[] GetBenefitsList()
    {
        HttpContext.Current.Trace.IsEnabled = true;
        HttpContext.Current.Trace.Warn("Benefit component","Beginning of GetBenefitsList");
        BenefitInfo[] benefitsArray = new BenefitInfo[4];
        benefitsArray[0].benefitName = "Dental";
        benefitsArray[0].benefitPage = "dental.aspx";
        benefitsArray[1].benefitName = "Medical";
        benefitsArray[1].benefitPage = "medical.aspx";
        benefitsArray[2].benefitName = "Life Insurance";
        benefitsArray[2].benefitPage = "life.aspx";
        benefitsArray[3].benefitName = "Retirement Account";
        benefitsArray[3].benefitPage = "retirement.aspx";
        HttpContext.Current.Trace.Warn("Benefit component", "Ending of GetBenefitsList");
        return benefitsArray;
    }

}