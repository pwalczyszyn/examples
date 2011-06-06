////////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2003-2006 Adobe Macromedia Software LLC and its licensors.
// All Rights Reserved.
// The following is Sample Code and is subject to all restrictions on such code
// as contained in the End User License Agreement accompanying this product.
// If you have received this file from a source other than Adobe,
// then your use, modification, or distribution of it requires
// the prior written permission of Adobe.
//
////////////////////////////////////////////////////////////////////////////////
package com.adobe.lcds.samples.common.utils
{

import mx.utils.ObjectUtil;

public class SortUtils
{
    //lookup the index based on month abbreviation
    static public var monthMap:Object = {
      Jan: 0,
      Feb: 1,
      Mar: 2,
      Apr: 3,
      May: 4,
      Jun: 5,
      Jul: 6,
      Aug: 7,
      Sep: 8,
      Oct: 9,
      Nov: 10,
      Dec: 11
    };

    public function SortUtils()
    {
        super();
    }

     static public function sortByDates(obj1:Object, obj2:Object, prop:String):Number
     {
         var month:String = obj1[prop].substr(0,3);
         var month1:Number = monthMap[month];
         var year1:String = "20" + obj1[prop].substr(4,2);
         month = obj2[prop].substr(0,3);
         var month2:Number = monthMap[month];
         var year2:String = "20" + obj2[prop].substr(4,2);
         var date1:Date = new Date(Number(year1), month1, 01);
         var date2:Date = new Date(Number(year2), month2, 01);

         return ObjectUtil.dateCompare(date1, date2);
    }

}

}
