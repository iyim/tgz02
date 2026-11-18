"use strict";

function _typeof(obj) {
    if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
        _typeof = function _typeof(obj) {
            return typeof obj;
        };
    } else {
        _typeof = function _typeof(obj) {
            return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
        };
    }
    return _typeof(obj);
}

/**
 * Created by yuzhongli on 8/29/19.
 * JS脚本会在storedData中生成的具体数据集合。
 * storedData:{
 *  "pvIdPath2SkuId":{
 *    "1627207:881837000;20549:69326249":"3814883549629"
 *  },
 *  "descartesMap":{
 *    "1627207:881837000":true,
 *    "1627207:881837000;20549:69326249":true
 *  },
 *  "outOfStockDescartesMap":{
 *    "1627207:881837000;20549:69326300":true
 *  },
 *  "id_biz_bottom":{
 *      "replenishedMap":{
 *          "1627207:881837000;20549:69326300":true
 *      }
 *  },
 *  "id_biz_property":{
 *      "skuId":"3814883549629"(default: "0"),
 *      "checkedPropValue":{
 *          "1627207":"881837000",
 *          "20549":"69326249"
 *      }
 *  },
 *  "id_biz_buy_method":{
 *    "method":"normal | tmcreditbuy"
 *  },
 *  "id_biz_quantity": {
 *      "quantity":{
 *          "currentNum":"2",
 *          "unit":"1",
 *          "upperLimit":"20",
 *          "lowerLimit":"1"
 *      }
 *  },
 *  "id_biz_service":{
 *      "fixedServiceUnique":{
 *          "43946355833":"0",
 *        },
 *      "checkedServiceUnique":{
 *          "556954727323":"3448866977070"
 *      },
 *  },
 *  "id_biz_installment": {
 *      "checkedInstallment":{
 *          "6:0.045":true
 *      }
 *  }
 * end......
 */
var isEmpty = function isEmpty(data) {
    /**typeof 返回的是字符串，有六种可能：”number”、”string”、”boolean”、”object”、”function”、”undefined”*/
    var dataType = _typeof(data);

    switch (dataType) {
        case "number":
            /**数字*/
            if (isNaN(data)) {
                return true;
            }

            return false;

        case "string":
            /**字符串*/
            if (data.trim().length === 0) {
                /**为空*/
                return true;
            }

            return false;

        case "boolean":
            /**布尔值*/
            return false;

        case "object":
            /**对象*/
            if (data === null) {
                /**为null*/
                return true;
            } else {
                for (var key in data) {
                    /**非空对象*/
                    return false;
                }

                return true;
            }

        case "function":
            /**函数*/
            return false;

        case "undefined":
            /**undefined*/
            return true;

        default:
            /**默认是空*/
            return true;
    }
};

var parseNumberWithDefaultZero = function parseNumberWithDefaultZero(data) {
    if (isNumber(data)) {
        return data;
    } else {
        var num = parseFloat(data);

        if (isNaN(num)) {
            num = 0;
        }

        return num;
    }
};

var isNumberGreaterThan = function isNumberGreaterThan(left, right) {
    var leftNum = isNumber(left) ? left : parseFloat(left);
    var rightNum = isNumber(right) ? right : parseFloat(right);

    if (isNaN(leftNum) || isNaN(rightNum)) {
        return false;
    }

    return leftNum > rightNum;
};

var isNumberGreaterAndEquals = function isNumberGreaterAndEquals(left, right) {
    return isNumberGreaterThan(left, right) || isNumberEqualsTo(left, right);
};

var isNumberLessThan = function isNumberLessThan(left, right) {
    var leftNum = isNumber(left) ? left : parseFloat(left);
    var rightNum = isNumber(right) ? right : parseFloat(right);

    if (isNaN(leftNum) || isNaN(rightNum)) {
        return false;
    }

    return leftNum < rightNum;
};

var isNumberLessAndEquals = function isNumberLessAndEquals(left, right) {
    return isNumberLessThan(left, right) || isNumberEqualsTo(left, right);
};

var isNumberEqualsTo = function isNumberEqualsTo(left, right) {
    var leftNum = isNumber(left) ? left : parseFloat(left);
    var rightNum = isNumber(right) ? right : parseFloat(right);

    if (isNaN(leftNum) || isNaN(rightNum)) {
        return false;
    }

    /** 6个小数点的0。表示六六六 */
    return leftNum - rightNum <= 0.0000001;
};

var isString = function isString(data) {
    return typeof data === "string";
};

var isNumber = function isNumber(data) {
    return typeof data === "number";
};

var isBoolean = function isBoolean(data) {
    return typeof data === "boolean";
};

var isFunction = function isFunction(data) {
    return typeof data === "function";
};

var isUndefined = function isUndefined(data) {
    return typeof data === "undefined";
};

var isNull = function isNull(data) {
    return data === null;
};

var isObject = function isObject(data) {
    if (isNull(data)) {
        return false;
    }

    return _typeof(data) === "object";
};

var isArray = function isArray(data) {
    return _typeof(data) === "object" && Object.prototype.toString.call(data) === "[object Array]";
};

var isTrue = function isTrue(data) {
    if (isBoolean(data)) {
        return data;
    }

    if (isString(data)) {
        return "true" === data;
    }

    return false;
};

var ascendingOrderFunction = function ascendingOrderFunction(a, b) {
    /** 升序排列 */
    return a.split(":")[0] - b.split(":")[0];
};

var ascSortAndAppendPVIdList = function ascSortAndAppendPVIdList(pvIds) {
    if (isEmpty(pvIds) || !isArray(pvIds)) {
        return "";
    }

    pvIds.sort(ascendingOrderFunction);
    var pvPath = "";
    pvIds.forEach(function (pvId, index) {
        pvPath += ";" + pvId;
    });

    if (!isEmpty(pvPath)) {
        pvPath = pvPath.substring(1);
    }

    return pvPath;
};

/** 初始化一些全局基本信息 */
var initContext = function initContext(originalData, storedData, opData, bizData, extInput) {
    if (storedData.initialized) {
        return;
    }

    initExecutionOrder(originalData, storedData, extInput);

    /** 全局数据优先初始化 */
    initTransparentData(originalData, storedData, extInput);

    initDescartesMap(originalData, storedData);

    /** 开放化业务的初始化 */
    var cloneOriginalData = cloneGlobalInitialState;
    var cloneStoredData = JSON.parse(JSON.stringify(storedData));
    var cloneOpData = JSON.parse(JSON.stringify(opData));
    var cloneBaseBizData = JSON.parse(JSON.stringify(bizData));
    var cloneExtInput = JSON.parse(JSON.stringify(extInput));

    var bizContext = {
        originalData: cloneOriginalData,
        storedData: cloneStoredData,
        opData: cloneOpData,
        extInput: cloneExtInput,
        baseBizData: cloneBaseBizData
    };
    storedData.execution_order.forEach(function (bizId) {
        if (isEmpty(bizId)) {
            // continue
            skuSuper = undefined;
            return true;
        }

        var parent = undefined;
        var parentIndex = -1;

        var child = undefined;
        var childIndex = -1;
        for (var i = 0, size = __targetBizs__.length; i < size; i++) {
            try {
                var biz = __targetBizs__[i]();
                var parentBizId = biz.getComponentId(bizContext, __targetBizsStoredData__[i]);
                if (!isEmpty(parentBizId) && parentBizId === bizId) {
                    parentIndex = i;
                    parent = biz;
                    break;
                }
            } catch (e) {
                console.log("bizInitContextError: " + bizId + " -- " + e.toString());
            }
        }
        for (var j = 0, jSize = __targetSpecialBizs__.length; j < jSize; j++) {
            try {
                var jBiz = __targetSpecialBizs__[j]();
                var childBizId = jBiz.getComponentId(bizContext, __targetSpecialBizsStoredData__[j]);
                if (!isEmpty(childBizId) && childBizId === bizId) {
                    childIndex = j;
                    if (isEmpty(parent)) {
                        parent = jBiz;
                    } else {
                        child = jBiz;
                    }
                    break;
                }
            } catch (e) {
                console.log("bizInitContextError: " + bizId + " -- " + e.toString());
            }
        }
        try {
            var bizFun = undefined;
            var bizStoredData = undefined;
            if (!isEmpty(child)) {
                skuSuper = parent;
                bizFun = child;
                bizStoredData = __targetSpecialBizsStoredData__[childIndex];
            } else if (!isEmpty(parent)) {
                bizFun = parent;
                bizStoredData = __targetBizsStoredData__[parentIndex];
            }

            bizFun.initContext(bizContext, bizStoredData);
            var saveData = bizFun.saveStoredData(bizContext, bizStoredData);
            if (!isEmpty(saveData)) {
                var cloneSaveData = JSON.parse(JSON.stringify(saveData));

                storedData[bizId] = cloneSaveData;
                cloneStoredData[bizId] = saveData;
            }
        } catch (e) {
            console.log("bizInitContextError: " + bizId + " -- " + e.toString());
        }
        skuSuper = undefined;
    });

    /** 保证只初始化一次 */
    storedData.initialized = true;
};

var initExecutionOrder = function initExecutionOrder(originalData, storedData, extInput) {
    // update时会更新组件的执行顺序，一个JS环境只会初始化一次。除非storedData数据丢失
    if (!isEmpty(storedData.execution_order)) {
        return;
    }
    storedData.execution_order = makeExecutionOrder();
    if (!isEmpty(extInput.storedData) && isArray(extInput.storedData.execution_order)) {
        var executionOrder = extInput.storedData.execution_order;
        var execution_order = [];
        for (var i = 0, size = executionOrder.length; i < size; i++) {
            var exeStrId = executionOrder[i];
            if (isString(exeStrId)) {
                execution_order.push(exeStrId);
            }
        }
        storedData.execution_order = execution_order;
    }
};

var initTransparentData = function initTransparentData(originalData, storedData, extInput) {
    storedData.transparent_map = {};
    if (!isEmpty(extInput.storedData) && !isEmpty(extInput.storedData.transparent_map)) {
        var originalTransparentMap = extInput.storedData.transparent_map;
        var transparent_map = {};
        for (var key in originalTransparentMap) {
            transparent_map[key] = originalTransparentMap[key];
        }
        storedData.transparent_map = transparent_map;
    }
};

/** 生成有库存的属性组合 */
/** skuBase.skus */
/**{
 "skuId": "xxx(long)", (sku唯一标识)
 "propPath": "pid:vid;pid:vid", (属性分类:属性值)
 "selected": "false", （是否预选中）
 "itemId": "xxx(long)"（sku穿越使用）
}*/

/** skuCore.sku2info */
/**"skuId": {
   "price": {
     "priceText": "699",
     "priceTitle": "xxx(String)",
     "priceDesc": "xxx(String)",
     "priceMoney": "69900",
     "type": "xxx(int)",
     "lineThrough": "xxx(boolean)",
     "priceUnit": "xxx(default: 元)",
     "priceChar": "xxx(default: ¥)",
     "priceColor": "xxx(String)",
     "priceTitleColor": "xxx(String)",
     "bold": "xxx(boolean)",
     "priceTextSize": "xxx(String)"
   },
   "subPrice": {
     "priceText": "699",
     "priceTitle": "xxx(String)",
     "priceDesc": "xxx(String)",
     "priceMoney": "69900",
     "type": "xxx(int)",
     "lineThrough": "xxx(boolean)",
     "priceUnit": "xxx(default: 元)",
     "priceChar": "xxx(default: ¥)",
     "priceColor": "xxx(String)",
     "priceTitleColor": "xxx(String)",
     "bold": "xxx(boolean)",
     "priceTextSize": "xxx(String)"
   },
   "quantity": "1",
   "limit": "xxx(long)",
   "limitText": "xxx(String)",
   "asac": "xxx(String)",
   "quantityText": "xxx(String)",
   "showTag": "xxx(boolean)",
   "depositText": "xxx(String)",
   "depositTextColor": "xxx(String)",
   "logisticsTime": "xxx(String)",
   "skuPromTip": "xxx(String)",
   "itemApplyParams": "xxx(String)",
   "buyText": "xxx(String)",
}*/
var initDescartesMap = function initDescartesMap(originalData, storedData) {
    storedData.pvIdPath2SkuId = {};
    storedData.descartesMap = {};
    storedData.outOfStockDescartesMap = {};

    if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.skus)) {
        return;
    }

    originalData.skuBase.skus.forEach(function (sku, index) {
        var props = sku.propPath.split(";");
        var pvPath = ascSortAndAppendPVIdList(props);
        storedData.pvIdPath2SkuId[pvPath] = sku.skuId;
    });

    if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
        return;
    }

    var availablePropPathList = [];
    var outOfStockPropPathList = [];

    for (var key in storedData.pvIdPath2SkuId) {
        var skuIdInfo = originalData.skuCore.sku2info[storedData.pvIdPath2SkuId[key]];

        if (isEmpty(skuIdInfo)) {
            continue;
        }

        var count = parseInt(skuIdInfo.quantity);

        if (count > 0) {
            availablePropPathList.push(key);
        } else {
            outOfStockPropPathList.push(key);
        }
    }

    availablePropPathList.forEach(function (path, index) {
        var ps = path.split(";");
        var times = Math.pow(2, ps.length) - 1;

        for (var i = 1; i <= times; i++) {
            var sb = "";

            for (var j = 0; j < ps.length; j++) {
                if ((i & 1 << j) > 0) {
                    sb += ";" + ps[j];
                }
            }

            if (sb.length > 0) {
                storedData.descartesMap[sb.substring(1)] = true;
            }
        }
    });
    outOfStockPropPathList.forEach(function (path, index) {
        var ps = path.split(";");
        var times = Math.pow(2, ps.length) - 1;

        for (var i = 1; i <= times; i++) {
            var sb = "";

            for (var j = 0; j < ps.length; j++) {
                if ((i & 1 << j) > 0) {
                    sb += ";" + ps[j];
                }
            }

            /** 有值，并且当前的值没有descartesMap的组合时，才会进入无库存的笛卡尔集合。保证了descartesMap跟outOfStockDescartesMap的数据是不重合的 */
            if (sb.length > 0 && !storedData.descartesMap.hasOwnProperty(sb.substring(1))) {
                storedData.outOfStockDescartesMap[sb.substring(1)] = true;
            }
        }
    });
};

var getGlobalData = function getGlobalData(originalData, storedData, opData, bizData, extInput) {
    bizData.global_data = {};
    var globalData = {};

    if (!isEmpty(originalData.item)) {
        globalData.itemId = originalData.item.itemId;
    }

    if (!isEmpty(originalData.seller)) {
        globalData.sellerId = originalData.seller.userId;
    }

    globalData.spm = "";
    bizData.global_data = globalData;
};

var getDisplayData = function getDisplayData(originalData, storedData, opData, bizData, extInput) {
    /** 全局数据优先初始化 */
    getGlobalData(originalData, storedData, opData, bizData, extInput);

    /** 开放化业务的获取模型数据 */
    var cloneOriginalData = cloneGlobalInitialState;
    var cloneStoredData = JSON.parse(JSON.stringify(storedData));
    var cloneOpData = JSON.parse(JSON.stringify(opData));
    var cloneBaseBizData = JSON.parse(JSON.stringify(bizData));
    var cloneExtInput = JSON.parse(JSON.stringify(extInput));

    var bizContext = {
        originalData: cloneOriginalData,
        storedData: cloneStoredData,
        opData: cloneOpData,
        extInput: cloneExtInput,
        baseBizData: cloneBaseBizData
    };

    storedData.execution_order.forEach(function (bizId) {
        if (isEmpty(bizId)) {
            // continue
            skuSuper = undefined;
            return true;
        }

        var parent = undefined;
        var parentIndex = -1;

        var child = undefined;
        var childIndex = -1;
        for (var i = 0, size = __targetBizs__.length; i < size; i++) {
            try {
                var biz = __targetBizs__[i]();
                var parentBizId = biz.getComponentId(bizContext, __targetBizsStoredData__[i]);
                if (!isEmpty(parentBizId) && parentBizId === bizId) {
                    parentIndex = i;
                    parent = biz;
                    break;
                }
            } catch (e) {
                console.log("bizGetDisplayDataError: " + bizId + " -- " + e.toString());
            }
        }
        for (var j = 0, jSize = __targetSpecialBizs__.length; j < jSize; j++) {
            try {
                var jBiz = __targetSpecialBizs__[j]();
                var childBizId = jBiz.getComponentId(bizContext, __targetSpecialBizsStoredData__[j]);
                if (!isEmpty(childBizId) && childBizId === bizId) {
                    childIndex = j;
                    if (isEmpty(parent)) {
                        parent = jBiz;
                    } else {
                        child = jBiz;
                    }
                    break;
                }
            } catch (e) {
                console.log("bizGetDisplayDataError: " + bizId + " -- " + e.toString());
            }
        }

        try {
            var bizFun = undefined;
            var bizStoredData = undefined;
            if (!isEmpty(child)) {
                skuSuper = parent;
                bizFun = child;
                bizStoredData = __targetSpecialBizsStoredData__[childIndex];
            } else if (!isEmpty(parent)) {
                bizFun = parent;
                bizStoredData = __targetBizsStoredData__[parentIndex];
            }

            var bizDisplayData = bizFun.getDisplayData(bizContext, bizStoredData);
            var shouldShowBiz = (isEmpty(extInput[bizId]) || !isTrue(extInput[bizId].gone));
            if (!isEmpty(bizId) && !isEmpty(bizDisplayData) && shouldShowBiz) {
                bizData[bizId] = bizDisplayData;
            } else {
                console.log(bizId + ": bizDisplayData is empty");
            }
            var saveData = bizFun.saveStoredData(bizContext, bizStoredData);
            if (!isEmpty(saveData)) {
                var cloneSaveData = JSON.parse(JSON.stringify(saveData));

                storedData[bizId] = cloneSaveData;
                cloneStoredData[bizId] = saveData;
            }
        } catch (e) {
            console.log("bizGetDisplayDataError: " + bizId + " -- " + e.toString());
        }
        skuSuper = undefined;
    });

};

var hasSku = function hasSku(originalData, storedData) {
    if (!isEmpty(originalData.feature)) {
        return isTrue(originalData.feature.hasSku);
    }

    return false;
};

var getItemId = function getItemId(originalData) {
    if (!isEmpty(originalData.item)) {
        return originalData.item.itemId;
    }
};

var getSellerId = function getSellerId(originalData) {
    if (!isEmpty(originalData.seller)) {
        return originalData.seller.userId;
    }
};

var getSkuModuleColorInfo = function getSkuModuleColorInfo(canSelect, selected) {
    if (canSelect) {
        if (selected) {
            /** enabled checked color */
            return {
                titleColor: "#fc511e",
                borderColor: "#fc511e",
                backgroundColor: "#FFF9F9"
            };
        } else {
            /** enabled unchecked color */
            return {
                titleColor: "#333333",
                borderColor: "#f5f5f5",
                backgroundColor: "#f5f5f5"
            };
        }
    } else {
        if (selected) {
            /** disabled checked color */
            return {
                titleColor: "#fda884",
                borderColor: "#fda884",
                backgroundColor: "#fffcfc"
            };
        } else {
            /** disabled unchecked color */
            return {
                titleColor: "#a8a8a8",
                borderColor: "#f6f6f6",
                backgroundColor: "#f6f6f6"
            };
        }
    }
};

var getBottomBarMode = function getBottomBarMode(originalData, storedData, extInput) {
    /** 默认是左边："加入购物车"、右边："立即购买" */
    var mode = "ADDCART_AND_BUYNOW";

    if (!isEmpty(extInput.sku_bottom) && !isEmpty(extInput.sku_bottom.bottom_bar_mode)) {
        mode = extInput.sku_bottom.bottom_bar_mode;
    }

    return mode;
};

/**全局环境以及入口等代码块---Start to the final line---*/
/** 全局缓存参数，用于缓解多次序列化的性能问题 */
var globalInitialState;
var cloneGlobalInitialState;

/** 模拟面向对象的特性，子类可以调用父类的方法。[skuSuper.functionName(arg1, arg2)]。skuSuper会在运行时指向不同的父类，运行完之后便会设置成undefined。 */
var skuSuper;

var executionFirstOrder = [
    "id_biz_buy_method",
    "id_biz_buy_method_desc",
    "id_biz_property",
    "id_biz_quantity",
    "id_biz_service",
    "id_biz_installment"
];

var executionNoOrder = [
    "id_biz_relatedAuctions",
    "id_biz_maochao_cpu",
    "id_biz_size_chart",
    "id_biz_area"
];

var executionLastOrder = [
    "id_biz_head",
    "id_biz_bottom_tips",
    "id_biz_bottom"
];

var executionOrder = [];

/** 目前数据持久化都是通过Android或者iOS本地存储来保证的，如果JS中数据丢失了，需要从Native重新同步 */
var synchronizeNativeData = function synchronizeNativeData(key, type) {
    /** type : object/array/string */
    var nativeData = null;
    try {
        nativeData = getNativeData(key, type);
    } catch (e) {
        console.log("getNativeData: " + e.toString());
    }
    switch (type) {
        case "string":
            if (isEmpty(nativeData) || !isArray(nativeData)) {
                nativeData = "";
            }
            break;
        case "array":
            if (isEmpty(nativeData) || !isArray(nativeData)) {
                nativeData = [];
            }
            break;
        default:
        case "object":
            if (isEmpty(nativeData) || !isObject(nativeData)) {
                nativeData = {};
            }
            break;
    }
    return nativeData;
};

/** 修正入参 */
var makeInputParamsCorrect = function makeInputParamsCorrect(input) {
    var state = {
        originalData: {},
        storedData: {},
        extInput: {},
        opData: {},
        platform: "",
        bizData: {}
    };

    if (isEmpty(input)) {
        return state;
    }

    /** 设置外部传入的值 */
    if (!isEmpty(input.storedState)) {
        if (!isEmpty(input.storedState.initialState)) {
            globalInitialState = input.storedState.initialState;
            cloneGlobalInitialState = JSON.parse(JSON.stringify(globalInitialState));
            console.log("initialState use input");
        }

        state.originalData = globalInitialState;
        state.extInput = input.storedState.extInput;
        state.storedData = input.storedState;

        __targetBizsStoredData__ = input.storedState.bizsStoredData;

        if (isEmpty(__targetBizsStoredData__)) {
            __targetBizsStoredData__ = [];
        }

        __targetSpecialBizsStoredData__ = input.storedState.bizsSpecialStoredData;

        if (isEmpty(__targetSpecialBizsStoredData__)) {
            __targetSpecialBizsStoredData__ = [];
        }
    }

    if (!isEmpty(input.opState)) {
        state.opData = input.opState;
    }

    if (!isEmpty(input.platform)) {
        state.platform = input.platform;
    }

    /** 再次检查值的有效性 */
    if (isEmpty(state.originalData)) {
        globalInitialState = synchronizeNativeData("originalData", "object");
        cloneGlobalInitialState = JSON.parse(JSON.stringify(globalInitialState));
        state.originalData = globalInitialState;
    }

    if (isEmpty(state.storedData)) {
        state.storedData = {};
    }

    if (isEmpty(state.extInput)) {
        state.extInput = {};
    }

    if (isEmpty(state.opData)) {
        state.opData = {};
    }

    if (isEmpty(state.platform)) {
        state.platform = synchronizeNativeData("platform", "string");
    }

    if (isEmpty(state.bizData)) {
        state.bizData = {};
    }

    if (__targetBizsStoredData__.length !== __targetBizs__.length) {
        for (var i = 0, size = (__targetBizs__.length - __targetBizsStoredData__.length); i < size; i++) {
            __targetBizsStoredData__.push({});
        }
    }

    if (__targetSpecialBizsStoredData__.length !== __targetSpecialBizs__.length) {
        for (var i = 0, size = (__targetSpecialBizs__.length - __targetSpecialBizsStoredData__.length); i < size; i++) {
            __targetSpecialBizsStoredData__.push({});
        }
    }

    return state;
};

/** 修正出参 */
var makeOutputParamsCorrect = function makeOutputParamsCorrect(output) {
    var result = {
        storedState: {},
        bizState: {}
    };

    if (isEmpty(output)) {
        return result;
    }

    /** 设置内部生成的值 */
    if (!isEmpty(output.storedData)) {
        result.storedState = output.storedData;
    }

    if (!isEmpty(output.bizData)) {
        result.bizState = output.bizData;
    }

    /** 再次检查值的有效性 */
    if (isEmpty(result.storedState)) {
        result.storedState = {};
    }

    if (isEmpty(result.bizState)) {
        result.bizState = {};
    }

    if (!isEmpty(__targetBizsStoredData__)) {
        result.storedState.bizsStoredData = __targetBizsStoredData__;
    }

    if (!isEmpty(__targetSpecialBizsStoredData__)) {
        result.storedState.bizsSpecialStoredData = __targetSpecialBizsStoredData__;
    }

    return result;
};

/** 制定执行顺序 */
var makeExecutionOrder = function makeExecutionOrder() {
    executionOrder = [];

    // __targetSpecialBizs__添加到executionNoOrder。
    var bizContext = {
        originalData: {},
        storedData: {},
        opData: {},
        extInput: {},
        baseBizData: {}
    };
    for (var i = 0, size = __targetSpecialBizs__.length; i < size; i++) {
        var bizId = "unknownBizId";
        try {
            var specialBiz = __targetSpecialBizs__[i]();
            bizId = specialBiz.getComponentId(bizContext, __targetSpecialBizsStoredData__[i]);
            if (isEmpty(bizId) || !isString(bizId)) {
                continue;
            }
            var findSame = false;
            executionFirstOrder.forEach(function (item) {
                if (bizId === item) {
                    findSame = true;
                }
            });
            executionLastOrder.forEach(function (item) {
                if (bizId === item) {
                    findSame = true;
                }
            });
            executionNoOrder.forEach(function (item) {
                if (bizId === item) {
                    findSame = true;
                }
            });
            if (!findSame) {
                executionNoOrder.push(bizId);
            }
        } catch (e) {
            console.log("makeExecutionOrderError: " + bizId + " -- " + e.toString());
        }
    }

    executionFirstOrder.forEach(function (item) {
        executionOrder.push(item);
    });
    executionNoOrder.forEach(function (item) {
        executionOrder.push(item);
    });
    executionLastOrder.forEach(function (item) {
        executionOrder.push(item);
    });

    return executionOrder;
};

/** 入口函数 */
var main = function main(data) {
    var input = isString(data) ? JSON.parse(data) : data;

    /**console.log("input: " + JSON.stringify(input));*/
    var state = makeInputParamsCorrect(input);

    /** 初始化 */
    initContext(state.originalData, state.storedData, state.opData, state.bizData, state.extInput);

    /** 显示模型 */
    getDisplayData(state.originalData, state.storedData, state.opData, state.bizData, state.extInput);

    var result = makeOutputParamsCorrect(state);
    /**let retStr = JSON.stringify(result);*/
    var retStr = JSON.stringify({
        method: 'main',
        methodReturn: result
    });
    /**console.log("retStr: " + retStr);*/
    if (state.platform === 'Android') {
        /** android 返回 string */
        jsCallback(retStr);
        /**return retStr;*/
    } else {
        return result;
    }
};

/** 开放化业务to end... */
/**命名中前后都加了下划线是为了设定特殊标记。防止跟skuCore.js内的变量冲突*/
/** __targetBizsStoredData__在入参矫正时会设置成跟__targetBizs__长度一样的数组空间 */
var __targetBizsStoredData__ = [];

var __targetBizs__ = [
    /** 每个业务是一个闭包，内部变量的命名。不会影响外部主文件（skuCore.js） */
    /** 购买方式 */
    (function () {

        /** 购买方式 */
        var buyMethod = {
            method: "normal"
        };

        var synchronizeBuyMethodData = function synchronizeBuyMethodData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            buyMethod = (componentSpace || {method: "normal"});
        };

        /** 初始化购买方式 */
        var initBuyMethod = function initBuyMethod(originalData, storedData) {
            buyMethod = {
                /** default value */
                method: "normal"
            };

            if (isEmpty(originalData.feature) || !isTrue(originalData.feature.creditBuy)) {
                return;
            }

            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];

                if (isTrue(type.selected)) {
                    buyMethod.method = type.bizId;
                    break;
                }
            }
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initBuyMethod(context.originalData, context.storedData);
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_buy_method";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return buyMethod;
        };

        var shouldShowBuyTypes = function shouldShowBuyTypes(originalData, storedData, extInput) {
            var mode = getBottomBarMode(originalData, storedData, extInput);

            switch (mode) {
                case "CONFIRM_BUYNOW":
                    return true;
                default:
                    return false;
            }
        };

        var isNormalBuyMethod = function isNormalBuyMethod(originalData, storedData) {
            if (isEmpty(buyMethod.method)) {
                /** 默认是常规购买 */
                return true;
            }

            return "normal" === buyMethod.method;
        };

        /** 每次调用的预处理 */
        var preDealData = function preDealData(originalData, storedData, extInput) {
            /** 如果不是立即购买进来的话，强制将购买方式设置成normal。否则不管 */
            if (!shouldShowBuyTypes(originalData, storedData, extInput)) {
                if (!isNormalBuyMethod(originalData, storedData)) {
                    buyMethod.method = "normal";
                }
            }
        };

        var dealChangeBuyTypesEvent = function dealChangeBuyTypesEvent(originalData, storedData, opData) {
            if (opData.type !== "change_buy_types") {
                return;
            }
            if (isEmpty(opData.extraParams) || !isArray(opData.extraParams)) {
                return;
            }

            var params = opData.extraParams[0];

            if (!isEmpty(params.bizId)) {
                buyMethod.method = params.bizId;
            }
        };

        var getBuyTypeInfo = function getBuyTypeInfo(originalData, storedData, extInput) {
            var buy_types = {};

            if (isEmpty(originalData.feature) || !isTrue(originalData.feature.creditBuy)) {
                return buy_types;
            }

            if (!shouldShowBuyTypes(originalData, storedData, extInput)) {
                return buy_types;
            }

            var title = "";
            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                title = originalData.skuCore.skuBuy.buyPattern.title;
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                title = originalData.skuCore.skuBuy.skuPattern.title;
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            /** types 为空的情况下直接返回 */
            if (isEmpty(types)) {
                return buy_types;
            }

            var value = [];

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];
                var method = {};

                if (buyMethod.method === type.bizId) {
                    method = {
                        "title": type.desc,
                        "titleColor": "#fc511e",
                        "borderColor": "#fc511e",
                        "backgroundColor": "#FFF9F9",
                        "bizId": type.bizId
                    };
                } else {
                    method = {
                        "title": type.desc,
                        "titleColor": "#333333",
                        "borderColor": "#f5f5f5",
                        "backgroundColor": "#f5f5f5",
                        "bizId": type.bizId
                    };
                }

                value.push(method);
            }

            if (!isEmpty(value)) {
                buy_types["title"] = title;
                buy_types["value"] = value;
            }

            return buy_types;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizeBuyMethodData(context, bizStoredData);
            preDealData(context.originalData, context.storedData, context.extInput);
            dealChangeBuyTypesEvent(context.originalData, context.storedData, context.opData);

            return getBuyTypeInfo(context.originalData, context.storedData, context.extInput);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 购买方式描述 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_buy_method_desc";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        var shouldShowBuyTypes = function shouldShowBuyTypes(originalData, storedData, extInput) {
            var mode = getBottomBarMode(originalData, storedData, extInput);

            switch (mode) {
                case "CONFIRM_BUYNOW":
                    return true;
                default:
                    return false;
            }
        };

        var getCurrentBuyMethod = function getCurrentBuyMethod(originalData, storedData) {
            var componentSpace = storedData["id_biz_buy_method"];
            if (isEmpty(componentSpace)) {
                return {};
            }

            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];

                if (componentSpace.method === type.bizId) {
                    return type;
                }
            }

            return {};
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            var originalData = context.originalData;
            var storedData = context.storedData;
            var extInput = context.extInput;

            if (!shouldShowBuyTypes(originalData, storedData, extInput)) {
                return {};
            }

            var type = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(type) && !isEmpty(type.introduce)) {
                switch (type.bizId) {
                    case "tmcreditbuy":
                        var buy_types_desc_credit = {
                            "image": type.introduce.icon,
                            "tips": type.introduce.name,
                            "desc": type.introduce.writing,
                            "link": type.introduce.linkUrl
                        };
                        return {
                            buy_types_desc_credit: buy_types_desc_credit
                        };

                    case "ziti":
                        var buy_types_desc_shop = {
                            "title": "选择提货门店(请在购买后 30 天内到店取货)",
                            "image": type.introduce.icon,
                            "tips": type.introduce.name,
                            "desc": type.introduce.writing,
                            "link": type.introduce.linkUrl
                        };
                        return {
                            buy_types_desc_shop: buy_types_desc_shop
                        };
                }
            }

            return {};
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 属性 */
    (function () {

        /** skuId */
        var skuId = "0";
        /** 选中的属性 */
        var checkedPropValue = {};
        /** 是否为大图模式 */
        var bigImageMode = false;

        var synchronizePropertyData = function synchronizePropertyData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            skuId = (componentSpace.skuId || "0");
            checkedPropValue = (componentSpace.checkedPropValue || {});
            bigImageMode = (componentSpace.bigImageMode || false);
        };

        var updateNewSkuIdWithStoredData = function updateNewSkuIdWithStoredData(originalData, storedData) {
            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                skuId = "0";
                return;
            }

            /** 所有的sku属性都选择全了 */
            var checkedProps = Object.keys(checkedPropValue);

            if (originalData.skuBase.props.length === checkedProps.length) {
                checkedProps.sort(ascendingOrderFunction);
                var pvPath = "";
                checkedProps.forEach(function (prop, index) {
                    pvPath += ";" + prop + ":" + checkedPropValue[prop];
                });

                if (!isEmpty(pvPath)) {
                    pvPath = pvPath.substring(1);
                }

                var currentSkuId = storedData.pvIdPath2SkuId[pvPath];

                if (!isEmpty(currentSkuId)) {
                    skuId = currentSkuId;
                }
            } else {
                skuId = "0";
            }
        };

        /** 预选中的skuId。或者特定情况下的属性（如果某个属性下面只有一个Value值，在库存不为0的情况下。则默认选中。） */
        var initPropValue = function initPropValue(originalData, storedData, selectedSkuId) {
            skuId = "0";
            checkedPropValue = {};
            bigImageMode = false;

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.skus)) {
                return;
            }

            for (var i = 0, size = originalData.skuBase.skus.length; i < size; i++) {
                var sku = originalData.skuBase.skus[i];

                /** 预选中skuId */
                if ((isTrue(sku.selected) || selectedSkuId === sku.skuId) && !isEmpty(sku.skuId) && !isEmpty(sku.propPath)) {
                    var pvIds = sku.propPath.split(";");
                    var pvPath = ascSortAndAppendPVIdList(pvIds);

                    if (isEmpty(pvPath)) {
                        continue;
                    }

                    /** 表明当前默认选中的skuId是有库存的 */
                    if (storedData.descartesMap[pvPath] === true) {
                        /** 选中所有的属性 */
                        pvIds.forEach(function (pvId, index) {
                            var pv = pvId.split(":");
                            checkedPropValue[pv[0]] = pv[1];
                        });

                        /** 选中当前的skuId */
                        skuId = sku.skuId;

                        /** 跳出当前的循环，因为selected的skuId只能有一个。所以这里取遇到的第一个 */
                        break;
                    }
                }
            }

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return;
            }

            originalData.skuBase.props.forEach(function (sku, index) {
                var pid = sku.pid;

                /** 某个属性中只有一个value的情况，默认会选中当前的prop-value值 */
                if (!isEmpty(sku.values) && isArray(sku.values) && sku.values.length === 1) {
                    var vid = sku.values[0].vid;
                    checkedPropValue[pid] = vid;
                }
            });
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initPropValue(context.originalData, context.storedData, context.extInput.skuId);
            updateNewSkuIdWithStoredData(context.originalData, context.storedData);
            initSkuPropertyMatchBigImage(context.originalData, context.storedData);
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_property";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {
                skuId: skuId,
                bigImageMode: bigImageMode,
                checkedPropValue: checkedPropValue
            };
        };

        var dealChangePropEvent = function dealChangePropEvent(originalData, storedData, opData) {
            if (opData.type !== "change_prop") {
                return;
            }
            if (isEmpty(opData.extraParams) || !isArray(opData.extraParams)) {
                return;
            }

            var params = opData.extraParams[0];

            if (!params.canSelect) {
                return;
            }

            var pvId = params.pvId.split(":");
            var pId = pvId[0];
            var vId = pvId[1];
            params.selected = !params.selected;

            if (params.selected) {
                /** 选中 */
                checkedPropValue[pId] = vId;
            } else {
                /** 取消 */
                if (checkedPropValue.hasOwnProperty(pId)) {
                    delete checkedPropValue[pId];
                }
            }

            /** 更新skuId */
            updateNewSkuIdWithStoredData(originalData, storedData);
        };

        var initSkuPropertyMatchBigImage = function initSkuPropertyMatchBigImage(originalData, storedData) {
            if (isEmpty(originalData.feature)
                || !isTrue(originalData.feature.bigImageSkuProp)
                || isEmpty(originalData.skuBase)
                || isEmpty(originalData.skuBase.props)) {
                return;
            }

            for (var i = 0, size = originalData.skuBase.props.length; i < size; i++) {
                var prop = originalData.skuBase.props[i];

                if (!isEmpty(prop) && !isEmpty(prop.values) && isArray(prop.values) && (prop.values.length > 0)) {
                    var matchBigImage = true;

                    for (var j = 0, jsize = prop.values.length; j < jsize; j++) {
                        var value = prop.values[j];
                        if (!isEmpty(value) && !isEmpty(value.image)) {
                            matchBigImage &= true;
                        } else {
                            matchBigImage &= false;
                        }
                    }

                    if (matchBigImage) {
                        /**表明values有值，并且全部都是带图片的。*/
                        bigImageMode = matchBigImage;
                        break
                    }
                }
            }
        };

        var isPVIdCanCheck = function isPVIdCanCheck(originalData, storedData, pvId) {
            if (isEmpty(pvId) || isEmpty(storedData.descartesMap)) {
                return false;
            }

            var pvIds = [];
            var pId = pvId.split(":")[0];

            for (var key in checkedPropValue) {
                if (!(pId === key)) {
                    pvIds.push(key + ":" + checkedPropValue[key]);
                }
            }

            pvIds.push(pvId);
            var pvPath = ascSortAndAppendPVIdList(pvIds);

            if (isEmpty(pvPath)) {
                return false;
            }

            if (storedData.descartesMap[pvPath] === true) {
                return true;
            }

            return false;
        };

        /** 补货中是否可选择 */
        var isPVIdCanCheckWithReplenishment = function isPVIdCanCheckWithReplenishment(originalData, storedData, pvId) {
            /** 是否开启了补货提醒 */
            if (isEmpty(originalData) || isEmpty(originalData.feature) || !isTrue(originalData.feature.buhuo)) {
                return false;
            }

            if (isEmpty(pvId) || isEmpty(storedData.outOfStockDescartesMap)) {
                return false;
            }

            var pvIds = [];
            var pId = pvId.split(":")[0];

            for (var key in checkedPropValue) {
                if (!(pId === key)) {
                    pvIds.push(key + ":" + checkedPropValue[key]);
                }
            }

            pvIds.push(pvId);
            var pvPath = ascSortAndAppendPVIdList(pvIds);

            if (isEmpty(pvPath)) {
                return false;
            }

            if (storedData.outOfStockDescartesMap[pvPath] === true) {
                return true;
            }

            return false;
        };

        /**uncheckedPVIds:{
            "1627207:881837000":true,
            "20549:69326249":true
        }*/
        /** 包括了补货升级的开关。如果库存为零，但是开启了补货，也是可选的。 */
        var getUncheckablePVIdMap = function getUncheckablePVIdMap(originalData, storedData) {
            var uncheckablePVIds = {};

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return uncheckablePVIds;
            }

            originalData.skuBase.props.forEach(function (sku, index) {
                var pid = sku.pid;

                if (!isEmpty(sku.values)) {
                    sku.values.forEach(function (value, index) {
                        var pvId = pid + ":" + value.vid;

                        if (!isPVIdCanCheck(originalData, storedData, pvId) && !isPVIdCanCheckWithReplenishment(originalData, storedData, pvId)) {
                            uncheckablePVIds[pvId] = true;
                        }
                    });
                }
            });
            return uncheckablePVIds;
        };

        var isPVIdChecked = function isPVIdChecked(originalData, pvId) {
            if (isEmpty(checkedPropValue) || isEmpty(pvId) || pvId.split(":").length < 2) {
                return false;
            }

            var pvEntry = pvId.split(":");

            /** vid === vid */
            return checkedPropValue[pvEntry[0]] === pvEntry[1];
        };

        var getSkuPropertyBigImg = function getSkuPropertyBigImg(originalData, storedData) {
            var sku_property_big_img = [];

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return {
                    sku_property_big_img: sku_property_big_img
                };
            }

            var uncheckablePVIdsMap = getUncheckablePVIdMap(originalData, storedData);
            originalData.skuBase.props.forEach(function (sku, index) {
                var pid = sku.pid;
                var title = isString(sku.name) ? sku.name : "";
                var isBlock = false;
                var propertyValueArray = [];
                var sixBlock = [];

                if (!isEmpty(sku.values)) {
                    for (var i = 0, size = sku.values.length; i < size; i++) {
                        var value = sku.values[i];
                        if (!isEmpty(value) && !isEmpty(value.image)) {
                            isBlock = true;
                            title = title + "(" + sku.values.length + ")";
                            break;
                        }
                    }
                    sku.values.forEach(function (value, index) {
                        var valueInfo = {
                            title: isString(value.name) ? value.name : "",
                            pvId: pid + ":" + value.vid
                        };

                        if (isPVIdChecked(originalData, valueInfo.pvId)) {
                            if (isPVIdCanCheck(originalData, storedData, valueInfo.pvId)) {
                                /** enabled normal checked color */
                                valueInfo.titleColor = "#fc511e";
                                valueInfo.borderColor = "#fc511e";
                                valueInfo.borderType = "normal";
                                valueInfo.outOfStockTag = false;
                                valueInfo.backgroundColor = "#FFF9F9";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = true;
                            } else {
                                /** enabled outOfStock checked color */
                                valueInfo.titleColor = "#fc511e";
                                valueInfo.borderColor = "#fc511e";
                                valueInfo.borderType = "dash";
                                valueInfo.outOfStockTag = true;
                                valueInfo.outofStockTagBackgroundColor = "#ff5000";
                                valueInfo.backgroundColor = "#FFF9F9";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = true;
                            }
                        } else {
                            if (uncheckablePVIdsMap[valueInfo.pvId]) {
                                /** disabled unchecked color, no skuId for the property */
                                valueInfo.titleColor = "#a8a8a8";
                                valueInfo.borderColor = "#ffffff";
                                valueInfo.borderType = "normal";
                                valueInfo.outOfStockTag = false;
                                valueInfo.backgroundColor = "#f6f6f6";
                                valueInfo.notExist = true;
                                valueInfo.canSelect = false;
                                valueInfo.selected = false;
                            } else if (isPVIdCanCheck(originalData, storedData, valueInfo.pvId)) {
                                /** enabled normal unchecked color */
                                valueInfo.titleColor = "#333333";
                                valueInfo.borderColor = "#ffffff";
                                valueInfo.borderType = "normal";
                                valueInfo.outOfStockTag = false;
                                valueInfo.backgroundColor = "#f5f5f5";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = false;
                            } else {
                                /** enabled outOfStock unchecked color */
                                valueInfo.titleColor = "#333333";
                                valueInfo.borderColor = "#ffffff";
                                valueInfo.borderType = "dash";
                                valueInfo.outOfStockTag = true;
                                valueInfo.outofStockTagBackgroundColor = "#cccccc";
                                valueInfo.backgroundColor = "#f5f5f5";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = false;
                            }
                        }

                        if (!isEmpty(value.image)) {
                            valueInfo.icon = value.image;
                        } else {
                            valueInfo.icon = "";
                        }

                        if (isBlock) {
                            if (index % 6 === 0) {
                                if (!isEmpty(sixBlock)) {
                                    sixBlock = [];
                                }
                                /** 6个一组，归类 */
                                propertyValueArray.push(sixBlock);
                            }
                            /** 6个一组，push */
                            sixBlock.push(valueInfo);
                        } else {
                            propertyValueArray.push(valueInfo);
                        }
                    });
                }

                if (!isEmpty(propertyValueArray)) {
                    sku_property_big_img.push({
                        title: title,
                        isBlock: isBlock,
                        viewId: ("property_" + index),
                        value: propertyValueArray
                    });
                }
            });

            return {
                sku_property_big_img: sku_property_big_img
            };
        };

        var getSkuPropertySmallImg = function getSkuPropertySmallImg(originalData, storedData) {
            var sku_property = [];

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return {
                    sku_property: sku_property
                };
            }

            var uncheckablePVIdsMap = getUncheckablePVIdMap(originalData, storedData);
            originalData.skuBase.props.forEach(function (sku, index) {
                var pid = sku.pid;
                var title = isString(sku.name) ? sku.name : "";
                var propertyValueArray = [];

                if (!isEmpty(sku.values)) {
                    sku.values.forEach(function (value, index) {
                        var valueInfo = {
                            title: isString(value.name) ? value.name : "",
                            pvId: pid + ":" + value.vid
                        };

                        if (isPVIdChecked(originalData, valueInfo.pvId)) {
                            if (isPVIdCanCheck(originalData, storedData, valueInfo.pvId)) {
                                /** enabled normal checked color */
                                valueInfo.titleColor = "#fc511e";
                                valueInfo.borderColor = "#fc511e";
                                valueInfo.borderType = "normal";
                                valueInfo.backgroundColor = "#FFF9F9";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = true;
                            } else {
                                /** enabled outOfStock checked color */
                                valueInfo.titleColor = "#fc511e";
                                valueInfo.borderColor = "#fc511e";
                                valueInfo.borderType = "dash";
                                valueInfo.backgroundColor = "#FFF9F9";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = true;
                            }
                        } else {
                            if (uncheckablePVIdsMap[valueInfo.pvId]) {
                                /** disabled unchecked color, no skuId for the property */
                                valueInfo.titleColor = "#a8a8a8";
                                valueInfo.borderColor = "#f6f6f6";
                                valueInfo.borderType = "normal";
                                valueInfo.backgroundColor = "#f6f6f6";
                                valueInfo.notExist = true;
                                valueInfo.canSelect = false;
                                valueInfo.selected = false;
                            } else if (isPVIdCanCheck(originalData, storedData, valueInfo.pvId)) {
                                /** enabled normal unchecked color */
                                valueInfo.titleColor = "#333333";
                                valueInfo.borderColor = "#f5f5f5";
                                valueInfo.borderType = "normal";
                                valueInfo.backgroundColor = "#f5f5f5";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = false;
                            } else {
                                /** enabled outOfStock unchecked color */
                                valueInfo.titleColor = "#333333";
                                valueInfo.borderColor = "#d6d6d6";
                                valueInfo.borderType = "dash";
                                valueInfo.backgroundColor = "#f5f5f5";
                                valueInfo.notExist = false;
                                valueInfo.canSelect = true;
                                valueInfo.selected = false;
                            }
                        }

                        if (!isEmpty(value.image)) {
                            valueInfo.icon = value.image;
                        }

                        propertyValueArray.push(valueInfo);
                    });
                }

                if (!isEmpty(propertyValueArray)) {
                    sku_property.push({
                        title: title,
                        value: propertyValueArray
                    });
                }
            });
            return {
                sku_property: sku_property
            };
        };

        /** skuBase.props.values */
        /**{
         "price": {
           "vid": "881837000",
           "name": "1号黑色/亮白/浅猩红",
           "image": "//gw.alicdn.com/bao/uploaded/i1/446338500/O1CN01ozUbuu2Cf36skrF2M-446338500.jpg",
           "alias": "xxx(String)",
           "desc": "xxx(String)",
           "tagHighlight": "xxx(String)",
           "tag": "xxx(String)",
           "colorValue": "xxx(String)",
           "colorSeries": "xxx(String)",
           "colorMaterialImg": "xxx(String)",
           "colorMaterial": "xxx(String)",
           "colorHotNew": "xxx(String)"
         }
        }*/
        var getSkuProperty = function getSkuProperty(originalData, storedData) {
            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return {};
            }

            if (bigImageMode) {
                /**属性图片为大图*/
                return getSkuPropertyBigImg(originalData, storedData);
            } else {
                /**属性图片为小图*/
                return getSkuPropertySmallImg(originalData, storedData);
            }
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizePropertyData(context, bizStoredData);
            dealChangePropEvent(context.originalData, context.storedData, context.opData);

            return getSkuProperty(context.originalData, context.storedData);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 数量 */
    (function () {

        /** 数量的基本信息 */
        var quantity = {};

        var synchronizeQuantityData = function synchronizeQuantityData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            quantity = (componentSpace.quantity || {});
        };

        var getCurrentSkuQuantity = function getCurrentSkuQuantity(originalData, storedData) {
            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return 0;
            }

            var quantity = parseInt(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].quantity);

            if (isEmpty(quantity)) {
                quantity = 0;
            }

            return quantity;
        };

        var getCurrentBuyMethod = function getCurrentBuyMethod(originalData, storedData) {
            var buyMethod = storedData["id_biz_buy_method"];
            if (isEmpty(buyMethod)) {
                return {};
            }

            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];

                if (buyMethod.method === type.bizId) {
                    return type;
                }
            }

            return {};
        };

        var getCurrentSkuLimitBuy = function getCurrentSkuLimitBuy(originalData, storedData) {
            var limit = Number.MAX_VALUE;

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info)) {
                var infoLimit = parseInt(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].limit);

                if (!isEmpty(infoLimit)) {
                    limit = infoLimit;
                }
            }

            var buyMethod = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(buyMethod)) {
                var buyLimit = parseInt(buyMethod.limit);

                if (!isEmpty(buyLimit)) {
                    limit = Math.min(limit, buyLimit);
                }
            }

            return limit;
        };

        var initQuantity = function initQuantity(originalData, storedData) {
            quantity = {};

            /** 库存跟每人限购取最小值 */
            var upperLimit = Math.min(getCurrentSkuQuantity(originalData, storedData), getCurrentSkuLimitBuy(originalData, storedData));
            var unit = getUnitBuy(originalData, storedData);
            var lowerLimit = unit;
            var currentNum = Math.min(unit, upperLimit);
            quantity = {
                currentNum: currentNum + "",
                unit: unit + "",
                upperLimit: upperLimit + "",
                lowerLimit: lowerLimit + ""
            };
        };

        var observeBuyMethod = function observeBuyMethod(context, bizStoredData) {
            bizStoredData.buyMethod = context.storedData["id_biz_buy_method"].method;
        };

        var observeSkuId = function observeSkuId(context, bizStoredData) {
            bizStoredData.skuId = context.storedData["id_biz_property"].skuId;
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initQuantity(context.originalData, context.storedData);
            observeBuyMethod(context, bizStoredData);
            observeSkuId(context, bizStoredData);
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_quantity";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {
                quantity: quantity
            };
        };

        var dealIncreaseCurrentBuyNum = function dealIncreaseCurrentBuyNum(originalData, storedData, opData) {
            if (opData.type !== "increase_num") {
                return;
            }
            if (isEmpty(opData.eventData)) {
                return;
            }

            var selBuy = parseInt(opData.eventData.selBuy);
            var upperLimit = parseInt(opData.eventData.upperLimit);
            var unitBuy = parseInt(opData.eventData.unitBuy);

            if (isNaN(selBuy) || isNaN(upperLimit)) {
                return;
            }

            if (selBuy > upperLimit) {
                return;
            }

            if (selBuy + unitBuy <= upperLimit) {
                selBuy = selBuy + unitBuy;
            }

            quantity.currentNum = selBuy + "";
        };

        var dealDecreaseCurrentBuyNum = function dealDecreaseCurrentBuyNum(originalData, storedData, opData) {
            if (opData.type !== "decrease_num") {
                return;
            }
            if (isEmpty(opData.eventData)) {
                return;
            }

            var selBuy = parseInt(opData.eventData.selBuy);
            var lowerLimit = parseInt(opData.eventData.lowerLimit);
            var unitBuy = parseInt(opData.eventData.unitBuy);

            if (isNaN(selBuy) || isNaN(lowerLimit)) {
                return;
            }

            if (selBuy < lowerLimit) {
                return;
            }

            if (selBuy - unitBuy >= lowerLimit) {
                selBuy = selBuy - unitBuy;
            }

            quantity.currentNum = selBuy + "";
        };

        var getCurrentSkuLimitBuyText = function getCurrentSkuLimitBuyText(originalData, storedData) {
            var limitBuyText = "";
            var unit = getUnitBuy(originalData, storedData);
            var limit = getCurrentSkuLimitBuy(originalData, storedData);

            if (unit > 1 || limit !== Number.MAX_VALUE) {
                limitBuyText += "(";

                if (unit > 1) {
                    limitBuyText += "仅支持" + unit + "倍购买";
                }

                if (limit !== Number.MAX_VALUE) {
                    limitBuyText += "限购" + limit + "件";
                }

                limitBuyText += ")";
            }

            /** 服务端的字段拥有最高优先级 */
            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info) && !isEmpty(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].limitText)) {
                limitBuyText = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].limitText;
            }

            return limitBuyText;
        };

        var getUnitBuy = function getUnitBuy(originalData, storedData) {
            var unitBuy = 1;

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.skuItem) || isEmpty(originalData.skuCore.skuItem.unitBuy)) {
                return unitBuy;
            }

            unitBuy = parseInt(originalData.skuCore.skuItem.unitBuy);

            if (isEmpty(unitBuy) || unitBuy <= 0) {
                unitBuy = 1;
            }

            return unitBuy;
        };

        var getSkuQuantityInfo = function getSkuQuantityInfo(originalData, storedData) {
            var limitBuy = getCurrentSkuLimitBuyText(originalData, storedData);
            var unitBuy = quantity.unit;
            var selBuy = quantity.currentNum;

            /** 当前已经达到边界值，或者进行一次步长操作时超过边界值。都表示不可再操作了 */
            var enableIncrease = parseInt(selBuy) >= parseInt(quantity.upperLimit) || parseInt(selBuy) + parseInt(unitBuy) > parseInt(quantity.upperLimit) ? "false" : "true";
            var enableDecrease = parseInt(selBuy) <= parseInt(quantity.lowerLimit) || parseInt(selBuy) - parseInt(unitBuy) < parseInt(quantity.lowerLimit) ? "false" : "true";
            var sku_quantity = {
                title: "购买数量",
                upperLimit: quantity.upperLimit,
                lowerLimit: quantity.lowerLimit,
                limitBuy: limitBuy,
                unitBuy: unitBuy,
                selBuy: selBuy,
                enableIncrease: enableIncrease,
                enableDecrease: enableDecrease
            };

            return sku_quantity;
        };

        var updateQuantityData = function updateQuantityData(context, bizStoredData) {
            if (bizStoredData.buyMethod !== context.storedData["id_biz_buy_method"].method) {
                observeBuyMethod(context, bizStoredData);
                initQuantity(context.originalData, context.storedData);
            }
            if (bizStoredData.skuId !== context.storedData["id_biz_property"].skuId) {
                observeSkuId(context, bizStoredData);
                initQuantity(context.originalData, context.storedData);
            }
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizeQuantityData(context, bizStoredData);
            dealIncreaseCurrentBuyNum(context.originalData, context.storedData, context.opData);
            dealDecreaseCurrentBuyNum(context.originalData, context.storedData, context.opData);

            /** 当影响数量的组件信息变更时，需要重置数量信息 */
            updateQuantityData(context, bizStoredData);

            return getSkuQuantityInfo(context.originalData, context.storedData);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 特色服务 */
    (function () {

        /** 全局固定的服务，不管可选|不可选，都不可改变状态 */
        var fixedServiceUnique = {};
        /** 可选|可取消的服务 */
        var checkedServiceUnique = {};

        var synchronizeServiceData = function synchronizeServiceData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            fixedServiceUnique = (componentSpace.fixedServiceUnique || {});
            checkedServiceUnique = (componentSpace.checkedServiceUnique || {});
        };

        var addServiceSafely = function addServiceSafely(originalData, key, value, isFixed) {
            if (isEmpty(originalData.services) || isEmpty(key) || isEmpty(value)) {
                return;
            }

            var multiSelect = isTrue(originalData.services.multiSelect);

            if (isTrue(isFixed)) {
                if (!multiSelect && !isEmpty(fixedServiceUnique)) {
                    return;
                }

                /** 添加服务 */
                if (!multiSelect && !isEmpty(checkedServiceUnique)) {
                    /** 重置服务 */
                    checkedServiceUnique = {};
                }

                fixedServiceUnique[key] = value;
            } else {
                if (!multiSelect && !isEmpty(fixedServiceUnique)) {
                    return;
                }

                /** 添加服务 */
                if (!multiSelect && !isEmpty(checkedServiceUnique)) {
                    /** 重置服务 */
                    checkedServiceUnique = {};
                }

                checkedServiceUnique[key] = value;
            }
        };

        /** services.allServices 所有服务的数据节点 */
        /**
         {
           "serviceId": "43946355833",
           "name": "全国联保",
           "autoSelect": "true",
           "mustSelect": "true"
         },
         {
           "serviceId": "556954727323",
           "name": "延长保修",
           "isvService": "false",
           "autoSelect": "false",
           "mustSelect": "false",
           "uniqueServices": [
             {
               "uniqueId": "3448866977070",
               "name": "1年",
               "autoSelect": "false"
             },
             {
               "uniqueId": "3448866977069",
               "name": "2年",
               "autoSelect": "false"
             },
             {
               "uniqueId": "3448866977068",
               "name": "3年",
               "autoSelect": "false"
             }
           ]
         }

         /** 转换之后的样式 */
        /**"43946355833":{
           "serviceId": "43946355833",
           "name": "全国联保",
           "autoSelect": "true",
           "mustSelect": "true"
         },
         "556954727323":{
           "serviceId": "556954727323",
           "name": "延长保修",
           "isvService": "false",
           "autoSelect": "false",
           "mustSelect": "false",
           "uniqueServices": [
             {
               "uniqueId": "3448866977070",
               "name": "1年",
               "autoSelect": "false"
             },
             {
               "uniqueId": "3448866977069",
               "name": "2年",
               "autoSelect": "false"
             },
             {
               "uniqueId": "3448866977068",
               "name": "3年",
               "autoSelect": "false"
             }
           ],
           "children":{
             "3448866977070":{
               "uniqueId": "3448866977070",
               "name": "1年",
               "autoSelect": "false"
             },
             "3448866977069":{
               "uniqueId": "3448866977069",
               "name": "2年",
               "autoSelect": "false"
             },
             "3448866977068":{
               "uniqueId": "3448866977068",
               "name": "3年",
               "autoSelect": "false"
             }
           }
         }
         */
        var convertSkuAllServices2Map = function convertSkuAllServices2Map(originalData) {
            if (isEmpty(originalData.services) || isEmpty(originalData.services.allServices)) {
                return {};
            }

            var allServicesMap = {};
            originalData.services.allServices.forEach(function (allService, index) {
                var uniqueServices = allService.uniqueServices;

                if (!isEmpty(uniqueServices)) {
                    /** 包含子服务 */
                    var children = {};
                    uniqueServices.forEach(function (uniqueService, index) {
                        children[uniqueService.uniqueId] = uniqueService;
                    });

                    /** 添加children的map结构，方便取子服务的数据结构 */
                    allService["children"] = children;
                }

                allServicesMap[allService.serviceId] = allService;
            });
            return allServicesMap;
        };

        /** 初始化某些预选中的服务 */
        var initService = function initService(originalData, storedData) {
            fixedServiceUnique = {};
            checkedServiceUnique = {};

            if (isEmpty(originalData.services) || isEmpty(originalData.services.sku2serviceMap)) {
                return;
            }

            var allServicesMap = convertSkuAllServices2Map(originalData);

            var skuIdService = originalData.services.sku2serviceMap[storedData["id_biz_property"].skuId];
            if (isEmpty(skuIdService) || !isArray(skuIdService)) {
                return;
            }
            skuIdService.forEach(function (service, index) {
                var serviceData = allServicesMap[service.serviceId];
                var subServices = service.serviceSkuPrices;
                var mustSelect = isTrue(serviceData.mustSelect);
                var autoSelect = isTrue(serviceData.autoSelect);

                if (isEmpty(subServices)) {
                    /** 没有子服务时，如果是mustSelect，则表示为一直选中。 */
                    if (mustSelect) {
                        /** 没有子服务的话，子服务的id为0 */
                        addServiceSafely(originalData, serviceData.serviceId, "0", true);
                    } else {
                        /** 没有子服务时，是否要默认选中 */
                        if (autoSelect) {
                            /** 没有子服务的话，子服务的id为0 */
                            addServiceSafely(originalData, serviceData.serviceId, "0", false);
                        }
                    }
                } else {
                    /** 包含子服务 */
                    var subServicesSize = subServices.length;
                    subServices.forEach(function (subService, index) {
                        /** 一定会有对应的子服务数据结构 */
                        var subServiceData = serviceData.children[subService.uniqueId];

                        /** 子服务只有一个时，如果是mustSelect，则表示为一直选中。 */
                        var autoSelect = isTrue(subServiceData.autoSelect);

                        if (mustSelect) {
                            if (subServicesSize === 1) {
                                addServiceSafely(originalData, serviceData.serviceId, subServiceData.uniqueId, true);
                            } else {
                                if (autoSelect) {
                                    addServiceSafely(originalData, serviceData.serviceId, subServiceData.uniqueId, false);
                                }
                            }
                        } else {
                            if (autoSelect) {
                                addServiceSafely(originalData, serviceData.serviceId, subServiceData.uniqueId, false);
                            }
                        }
                    });
                }
            });
        };

        var observeSkuId = function observeSkuId(context, bizStoredData) {
            bizStoredData.skuId = context.storedData["id_biz_property"].skuId;
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initService(context.originalData, context.storedData);
            observeSkuId(context, bizStoredData);
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_service";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {
                fixedServiceUnique: fixedServiceUnique,
                checkedServiceUnique: checkedServiceUnique
            };
        };

        var updateServiceData = function updateServiceData(context, bizStoredData) {
            if (bizStoredData.skuId !== context.storedData["id_biz_property"].skuId) {
                observeSkuId(context, bizStoredData);
                initService(context.originalData, context.storedData);
            }
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizeServiceData(context, bizStoredData);
            dealChangeServiceEvent(context.originalData, context.opData);
            updateServiceData(context, bizStoredData);

            var originalData = context.originalData;
            var storedData = context.storedData;
            var sku_service = [];

            if (isEmpty(originalData.services) || isEmpty(originalData.services.sku2serviceMap)) {
                return sku_service;
            }

            var allServicesMap = convertSkuAllServices2Map(originalData, storedData);
            var currentService = originalData.services.sku2serviceMap[storedData["id_biz_property"].skuId];
            if (isEmpty(currentService) || !isArray(currentService)) {
                return sku_service;
            }
            currentService.forEach(function (service, index) {
                var serviceData = allServicesMap[service.serviceId];
                var subServices = service.serviceSkuPrices;

                if (isEmpty(subServices)) {
                    /** 没有子服务 */
                    var isFree = !isNumberGreaterThan(service.price, 0);
                    var desc = !isEmpty(service.extraDisplayText) ? service.extraDisplayText : "[商家赠送]";
                    var name = serviceData.name;
                    var priceText = !isFree ? "￥" + (service.price / 100.0).toFixed(2) : desc;

                    /** 保留两位小数 */
                    var suId = service.serviceId + ":" + "0";

                    /** 没有子服务的话，子服务的id为0 */
                    /** 自动选择，或者用户手动选择 */
                    var selected = isServiceChecked(serviceData.serviceId, "0");

                    /** 没有子服务，是否可选根据，初始化状态是否在fixed中来决定 */
                    var canSelect = isServiceFixedChecked(serviceData.serviceId, "0") ? false : storedData["id_biz_property"].skuId === "0" ? false : true;
                    sku_service.push({
                        title: name,
                        value: [{
                            name: name,
                            desc: priceText,
                            titleColor: getSkuModuleColorInfo(canSelect, selected).titleColor,
                            borderColor: getSkuModuleColorInfo(canSelect, selected).borderColor,
                            backgroundColor: getSkuModuleColorInfo(canSelect, selected).backgroundColor,
                            suId: suId,
                            canSelect: canSelect,
                            selected: selected
                        }]
                    });
                } else {
                    /** 包含子服务 */
                    var values = [];
                    var _name = serviceData.name;
                    subServices.forEach(function (subService, index) {
                        /** 一定会有对应的子服务数据结构 */
                        var subServiceData = serviceData.children[subService.uniqueId];
                        var isFree = !isNumberGreaterThan(subService.price, 0);
                        var desc = !isEmpty(subService.extraDisplayText) ? subService.extraDisplayText : "[商家赠送]";
                        var priceText = !isFree ? "￥" + (subService.price / 100.0).toFixed(2) : desc;

                        /** 保留两位小数 */
                        var suId = service.serviceId + ":" + subService.uniqueId;
                        var subName = !isEmpty(subServiceData.name) ? subServiceData.name : serviceData.name;

                        /** 自动选择，或者用户手动选择 */
                        var selected = isServiceChecked(service.serviceId, subService.uniqueId);

                        /** 有子服务时，并且没在fixed中，则表示并非只有一个子服务。多子服务时，一定可以切换服务类型 */
                        var canSelect = isServiceFixedChecked(serviceData.serviceId, subService.uniqueId) ? false : storedData["id_biz_property"].skuId === "0" ? false : true;
                        values.push({
                            name: subName,
                            desc: priceText,
                            titleColor: getSkuModuleColorInfo(canSelect, selected).titleColor,
                            borderColor: getSkuModuleColorInfo(canSelect, selected).borderColor,
                            backgroundColor: getSkuModuleColorInfo(canSelect, selected).backgroundColor,
                            suId: suId,
                            canSelect: canSelect,
                            selected: selected
                        });
                    });
                    if (!isEmpty(values)) {
                        sku_service.push({
                            title: _name,
                            value: values
                        });
                    }
                }
            });
            return sku_service;
        };

        var isServiceFixedChecked = function isServiceFixedChecked(serviceId, uniqueId) {
            if (isEmpty(uniqueId)) {
                return !isEmpty(fixedServiceUnique[serviceId]);
            } else {
                return fixedServiceUnique[serviceId] === uniqueId;
            }
        };

        var isServiceChecked = function isServiceChecked(serviceId, uniqueId) {
            if (isEmpty(uniqueId)) {
                return !isEmpty(fixedServiceUnique[serviceId] || !isEmpty(checkedServiceUnique[serviceId]));
            } else {
                return fixedServiceUnique[serviceId] === uniqueId || checkedServiceUnique[serviceId] === uniqueId;
            }
        };

        var dealChangeServiceEvent = function dealChangeServiceEvent(originalData, opData) {
            if ("change_service" !== opData.type) {
                return;
            }
            if (isEmpty(opData.extraParams) || !isArray(opData.extraParams)) {
                return;
            }

            var params = opData.extraParams[0];

            if (!params.canSelect) {
                /** storedData.fixedServiceUnique中的服务走到这就停止了 */
                return;
            }

            var suId = params.suId.split(":");
            var sId = suId[0];
            var uId = suId[1];
            params.selected = !params.selected;

            if (params.selected) {
                /** 选中 */
                addServiceSafely(originalData, sId, uId, false);
            } else {
                /** 取消 */
                if (checkedServiceUnique.hasOwnProperty(sId)) {
                    delete checkedServiceUnique[sId];
                }
            }
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 花呗分期 */
    (function () {

        /** 已选的花呗期数 */
        var checkedInstallment = {};

        var synchronizeInstallmentData = function synchronizeInstallmentData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            checkedInstallment = (componentSpace.checkedInstallment || {});
        };

        /** 初始化花呗服务，一般花呗没有默认选中 */
        var initInstallment = function initInstallment(originalData, storedData) {
            checkedInstallment = {};
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initInstallment(context.originalData, context.storedData);
            observeSkuId(context, bizStoredData);
        };

        var observeSkuId = function observeSkuId(context, bizStoredData) {
            bizStoredData.skuId = context.storedData["id_biz_property"].skuId;
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_installment";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {
                checkedInstallment: checkedInstallment
            };
        };

        var dealChangeInstallmentEvent = function dealChangeInstallmentEvent(originalData, opData) {
            if (opData.type !== "change_installment") {
                return;
            }

            if (isEmpty(opData.extraParams) || !isArray(opData.extraParams)) {
                return;
            }

            var params = opData.extraParams[0];

            if (!params.canSelect) {
                return;
            }

            params.selected = !params.selected;

            if (params.selected) {
                /** 选中时取消原有的分期。目前花呗分期是单选 */
                if (!isEmpty(checkedInstallment)) {
                    checkedInstallment = {};
                }

                checkedInstallment[params.crId] = true;
            } else {
                /** 取消 */
                if (checkedInstallment.hasOwnProperty(params.crId)) {
                    delete checkedInstallment[params.crId];
                }
            }
        };

        /** 获取当前SKU id尾款的价格 */
        var getInstallmentBalanceDue = function getInstallmentBalanceDue(originalData, storedData) {
            /** 没有尾款默认是-1 */
            var balanceDue = -1;

            if (isEmpty(originalData.skuVertical) || isEmpty(originalData.skuVertical.installment) || isEmpty(originalData.skuVertical.installment.sku2Installment)) {
                return balanceDue;
            }

            var balanceDuePriceStr = originalData.skuVertical.installment.sku2Installment[storedData["id_biz_property"].skuId];
            balanceDue = balanceDuePriceStr / 100.0;

            /** string -> number throw exception */
            if (isNaN(balanceDue)) {
                balanceDue = -1;
            }

            return balanceDue;
        };

        var getSkuId2ServicesMap = function getSkuId2ServicesMap(originalData, storedData) {
            if (isEmpty(originalData.services) || isEmpty(originalData.services.sku2serviceMap)) {
                return {};
            }

            var skuId2ServicesMap = {};
            var currentService = originalData.services.sku2serviceMap[storedData["id_biz_property"].skuId];
            if (isEmpty(currentService) || !isArray(currentService)) {
                return {};
            }
            currentService.forEach(function (service, index) {
                var serviceSkuPrices = service.serviceSkuPrices;

                if (!isEmpty(serviceSkuPrices)) {
                    /** 包含子价格 */
                    var children = {};
                    serviceSkuPrices.forEach(function (serviceSkuPrice, index) {
                        children[serviceSkuPrice.uniqueId] = serviceSkuPrice;
                    });

                    /** 添加children的map结构，方便取子服务的数据结构 */
                    service["children"] = children;
                }

                skuId2ServicesMap[service.serviceId] = service;
            });
            return skuId2ServicesMap;
        };

        /** 单位是 元 */
        var calcCurrentServicePrice = function calcCurrentServicePrice(originalData, storedData) {
            var servicePrice = 0.00;
            var skuIdServicesMap = getSkuId2ServicesMap(originalData, storedData);

            if (!isEmpty(storedData["id_biz_service"])) {
                /** 固定的服务 */
                if (!isEmpty(storedData["id_biz_service"].fixedServiceUnique)) {
                    var fixedServiceUnique = storedData["id_biz_service"].fixedServiceUnique;
                    for (var serviceId in fixedServiceUnique) {
                        var uniqueId = fixedServiceUnique[serviceId];

                        if (uniqueId === "0") {
                            /** 没有子服务 */
                            servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[serviceId].price / 100.0);
                        } else {
                            /** 含有子服务 */
                            servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[serviceId].children[uniqueId].price / 100.0);
                        }
                    }
                }

                /** 可选的服务 */
                if (!isEmpty(storedData["id_biz_service"].checkedServiceUnique)) {
                    var checkedServiceUnique = storedData["id_biz_service"].checkedServiceUnique;
                    for (var _serviceId in checkedServiceUnique) {
                        var _uniqueId = checkedServiceUnique[_serviceId];

                        if (_uniqueId === "0") {
                            /** 没有子服务 */
                            servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[_serviceId].price / 100.0);
                        } else {
                            /** 含有子服务 */
                            servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[_serviceId].children[_uniqueId].price / 100.0);
                        }
                    }
                }
            }

            return servicePrice;
        };

        /** 单位是 元 */
        var calcTotalPrice = function calcTotalPrice(originalData, storedData, extInput) {
            /** 动态计算总价格 */
            var totalPrice = 0.00;

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return totalPrice;
            }

            var mode = getBottomBarMode(originalData, storedData, extInput);

            var sku2info = originalData.skuCore.sku2info;

            /** 主价格 */
            var mainPrice = sku2info[storedData["id_biz_property"].skuId].price;

            /** 副价格 */
            var subPrice = null;
            switch (mode) {
                case "CONFIRM_BUYNOW":
                    subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    break;
                default:
                    if (!isEmpty(sku2info[storedData["id_biz_property"].skuId].cart)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].cart.subPrice;
                    }
                    if (isEmpty(subPrice)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    }
            }

            if (!isEmpty(subPrice)) {
                totalPrice = subPrice.priceMoney / 100.0;
            } else if (!isEmpty(mainPrice)) {
                totalPrice = mainPrice.priceMoney / 100.0;
            }

            if (isNaN(totalPrice)) {
                totalPrice = 0.00;
            }

            totalPrice += calcCurrentServicePrice(originalData, storedData);
            return totalPrice;
        };

        var isSkuPropComplete = function isSkuPropComplete(originalData, storedData) {
            if (hasSku(originalData, storedData)) {
                return storedData["id_biz_property"].skuId !== "0"/**非默认值*/;
            }

            return true;
        };

        var getCurrentBuyMethod = function getCurrentBuyMethod(originalData, storedData) {
            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];

                if (storedData["id_biz_buy_method"].method === type.bizId) {
                    return type;
                }
            }

            return {};
        };

        /** 当前的购买方式是否要隐藏花呗分期（天猫信用购） */
        var isCurrentBuyMethodHideInstallment = function isCurrentBuyMethodHideInstallment(originalData, storedData) {
            var buyMethod = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(buyMethod) && isTrue(buyMethod.hideInstallment)) {
                return true;
            }

            return false;
        };

        var getSkuInstallmentInfo = function getSkuInstallmentInfo(originalData, storedData, extInput) {
            var sku_installment = {};

            if (isEmpty(originalData.skuVertical) || isEmpty(originalData.skuVertical.installment) || isEmpty(originalData.skuVertical.installment.period)) {
                return sku_installment;
            }

            var installmentUnitPrice = getInstallmentBalanceDue(originalData, storedData);

            if (isNumberLessThan(installmentUnitPrice, 0)) {
                /** 非尾款 */
                installmentUnitPrice = calcTotalPrice(originalData, storedData, extInput);
            } else {
                /** 有尾款 */
                installmentUnitPrice = calcCurrentServicePrice(originalData, storedData);
            }

            var installTotalPrice = installmentUnitPrice * storedData["id_biz_quantity"].quantity.currentNum;
            var canSelect = isTrue(originalData.skuVertical.installment.enable) && isSkuPropComplete(originalData, storedData);
            var normalTitle = originalData.skuVertical.installment.title.substring(0, 4);
            var smallTitle = originalData.skuVertical.installment.title.length > 4 ? originalData.skuVertical.installment.title.substring(4) : "";
            var installmentTitle = [{
                "text": normalTitle,
                "style": {
                    "size": "1.0",
                    "bold": "false",
                    "italic": "false",
                    "strikeThrough": "false"
                },
                "event": {}
            }, {
                "text": smallTitle,
                "style": {
                    "size": "0.857",
                    "color": "#ffaaaaaa",
                    "bold": "false",
                    "italic": "false",
                    "strikeThrough": "false"
                },
                "event": {}
            }];

            var periodArray = [];
            originalData.skuVertical.installment.period.forEach(function (periodInfo, index) {
                var crId = periodInfo.count + ":" + periodInfo.ratio;
                var selected = isTrue(checkedInstallment[crId]);
                periodArray.push({
                    "name": "分" + periodInfo.count + "期 (" + (periodInfo.ratio / 1 > 0 ? "含" : "0") + "手续费)",
                    "desc": "￥" + (installTotalPrice * (1 + periodInfo.ratio / 1) / periodInfo.count).toFixed(2) + "/期",
                    "titleColor": getSkuModuleColorInfo(canSelect, selected).titleColor,
                    "borderColor": getSkuModuleColorInfo(canSelect, selected).borderColor,
                    "backgroundColor": getSkuModuleColorInfo(canSelect, selected).backgroundColor,
                    "crId": crId,
                    "extra": isNumberLessAndEquals(installTotalPrice * periodInfo.ratio * 100, periodInfo.couponPrice) ? periodInfo.coupon : "",
                    "canSelect": canSelect,
                    "selected": selected
                });
            });

            if (!isEmpty(periodArray)) {
                sku_installment["title"] = installmentTitle;
                sku_installment["subTitle"] = originalData.skuVertical.installment.subTitle;
                sku_installment["viewId"] = "installment";
                sku_installment["period"] = periodArray;
            }

            /** 非常规购买时（目前是信用购），隐藏花呗分期。 */
            if (isCurrentBuyMethodHideInstallment(originalData, storedData)) {
                sku_installment = {};
            }

            return sku_installment;
        };

        var updateInstallmentData = function updateInstallmentData(context, bizStoredData) {
            observeSkuId(context, bizStoredData);
            if ("0" === context.storedData["id_biz_property"].skuId) {
                initInstallment(context.originalData, context.storedData);
            }
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizeInstallmentData(context, bizStoredData);
            dealChangeInstallmentEvent(context.originalData, context.opData);
            updateInstallmentData(context, bizStoredData);

            return getSkuInstallmentInfo(context.originalData, context.storedData, context.extInput);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 尺码助手 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_size_chart";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        var getSkuSizeChart = function getSkuSizeChart(originalData) {
            var size_chart = {};

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.skuItem)) {
                return size_chart;
            }

            var skuItem = originalData.skuCore.skuItem;
            var sizeChart = {};

            if (!isEmpty(skuItem.recommendSize)) {
                sizeChart.recommendSize = originalData.skuCore.skuItem.recommendSize;
            }

            if (!isEmpty(skuItem.recommendTip)) {
                sizeChart.recommendTip = originalData.skuCore.skuItem.recommendTip;
            }

            if (!isEmpty(skuItem.buttonText)) {
                sizeChart.buttonText = originalData.skuCore.skuItem.buttonText;
            }

            if (!isEmpty(originalData.item)) {
                sizeChart.itemId = originalData.item.itemId;
            }

            if (!isEmpty(originalData.seller)) {
                sizeChart.sellerId = originalData.seller.userId;
            }

            if (isEmpty(sizeChart.recommendSize) && isEmpty(sizeChart.recommendTip) && isEmpty(sizeChart.buttonText)) {
                // 都为空时，不设置当前组件信息。
            } else {
                size_chart = sizeChart;
            }

            return size_chart;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            return getSkuSizeChart(context.originalData);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 配送区域 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_area";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        /** 获取配送地址的物流发货时间 */
        var getAreaLogisticsTime = function getAreaLogisticsTime(originalData, storedData) {
            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuItem) && (isTrue(originalData.skuCore.skuItem.showAddress) || isTrue(originalData.skuCore.skuItem.showAddressTaobao))) {
                /** 展示配送地址的物流发货时间 */
                if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                    return "";
                }

                var logisticsTime = "";
                var skuIdInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuIdInfo)) {
                    logisticsTime = skuIdInfo.logisticsTime;
                }

                if (isEmpty(logisticsTime)) {
                    if (!isEmpty(originalData.delivery) && !isEmpty(originalData.delivery.extras) && !isEmpty(originalData.delivery.extras.PostTime)) {
                        logisticsTime = originalData.delivery.extras.PostTime.text;
                    }
                }

                return logisticsTime;
            } else {
                /** 展示头部的物流发货时间 */
            }

            return "";
        };

        var getSkuAreaInfo = function getSkuAreaInfo(originalData, storedData) {
            var sku_area = {};

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.skuItem)) {
                return sku_area;
            }

            if (!isEmpty(originalData.skuCore.skuItem) && (isTrue(originalData.skuCore.skuItem.showAddress) || isTrue(originalData.skuCore.skuItem.showAddressTaobao))) {
                var location = "请配送配送区域";
                var info = getAreaLogisticsTime(originalData, storedData);

                if (!isEmpty(originalData.delivery)) {
                    location = originalData.delivery.completedTo || originalData.delivery.to || "请配送配送区域";
                }

                var loadUrl = "//market.m.taobao.com/apps/market/detailrax/address-picker.html?spm=a2116h.app.0.0.16d957e9nDYOzv&wh_weex=true";

                if (!isEmpty(originalData.delivery)) {
                    loadUrl = originalData.delivery.addressWeexUrl || loadUrl;
                }

                var sellerId = "";
                var itemId = "";
                var areaId = "";
                var itemType = "tmall";

                if (!isEmpty(originalData.seller)) {
                    sellerId = originalData.seller.userId || "";
                }

                if (!isEmpty(originalData.item)) {
                    itemId = originalData.item.itemId || "";
                }

                if (!isEmpty(originalData.delivery)) {
                    areaId = originalData.delivery.areaId || "";
                }

                if (!isEmpty(originalData.skuCore.skuItem) && isTrue(originalData.skuCore.skuItem.showAddressTaobao)) {
                    itemType = "taobao";
                }

                if (loadUrl.indexOf("?") === -1) {
                    loadUrl += "?";
                } else {
                    loadUrl += "&";
                }

                loadUrl += "currentAddress=" + encodeURIComponent(location) + "&seller_id=" + sellerId + "@&item_id=" + itemId;
                sku_area = {
                    title: [{
                        "text": "配送区域",
                        "style": {
                            "size": "1.0",
                            "bold": "false",
                            "italic": "false",
                            "strikeThrough": "false"
                        },
                        "event": {}
                    }, {
                        "text": "(配送地可能会影响库存,请正确选择)",
                        "style": {
                            "size": "0.857",
                            "color": "#ffaaaaaa",
                            "bold": "false",
                            "italic": "false",
                            "strikeThrough": "false"
                        },
                        "event": {}
                    }],
                    location: location,
                    info: info,
                    itemId: itemId,
                    areaId: areaId,
                    itemType: itemType,
                    loadUrl: encodeURIComponent(loadUrl),
                    wrapperUrl: "https://arealocation.taobao.com/home.htm"
                };
            }

            return sku_area;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            return getSkuAreaInfo(context.originalData, context.storedData);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 商品穿越 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_relatedAuctions";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        var getSkuRelatedAuctions = function getSkuRelatedAuctions(originalData, storedData, extInput) {
            if (isEmpty(originalData.resource) || isEmpty(originalData.resource.relatedAuctions) || isEmpty(originalData.resource.relatedAuctions.items)) {
                return;
            }
            var sku_relatedAuctions = {};
            sku_relatedAuctions["title"] = originalData.resource.relatedAuctions.title;
            var originItems = originalData.resource.relatedAuctions.items;
            var extRAD = extInput[getComponentId()];
            var newItems = [];
            originItems.forEach(function (item, index) {
                var price = undefined;
                if (!isEmpty(extRAD)) {
                    var relatedAuction = extRAD.relatedAuction;
                    if (!isEmpty(relatedAuction)) {
                        var priceNode = relatedAuction[item.itemId];
                        if (!isEmpty(priceNode)) {
                            price = priceNode.price;
                        }
                    }
                }
                newItems.push({
                    itemId: item.itemId,
                    title: item.itemNameList.join(' '),
                    price: (price || ""),
                    current: item.current,
                    titleColor: getSkuModuleColorInfo(true, isTrue(item.current)).titleColor,
                    borderColor: getSkuModuleColorInfo(true, isTrue(item.current)).borderColor,
                    backgroundColor: getSkuModuleColorInfo(true, isTrue(item.current)).backgroundColor,
                    priceColor: getSkuModuleColorInfo(true, isTrue(item.current)).titleColor
                });
            });
            if (!isEmpty(newItems)) {
                sku_relatedAuctions["items"] = newItems;
            }
            return sku_relatedAuctions;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            return getSkuRelatedAuctions(context.originalData, context.storedData, context.extInput);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 猫超CPU */
    (function () {
        /** 猫超CPU */
        var parseTmallMarketCpuData = function parseTmallMarketCpuData(data) {
            var cpuData = {};

            if (!isEmpty(data) && !isEmpty(data.relatedActionsData) && !isEmpty(data.relatedActionsData.skuRelatedDOs)) {
                cpuData = data.relatedActionsData;
            }

            return cpuData;
        };

        var getCurrentSelectedSkuItem = function getCurrentSelectedSkuItem(data) {
            var skuItem = {};

            if (isEmpty(data) || isEmpty(data.skuRelatedDOs)) {
                return skuItem;
            }

            var skuItemDOs = data.skuRelatedDOs;

            if (isEmpty(skuItemDOs)) {
                return skuItem;
            }

            for (var index = 0; index < skuItemDOs.length; index++) {
                var skuItemDO = skuItemDOs[index];

                if (!isEmpty(skuItemDO)) {
                    var skuItems = skuItemDO.items;

                    if (!isEmpty(skuItems)) {
                        for (var i = 0; i < skuItems.length; i++) {
                            skuItem = skuItems[i];

                            if (isTrue(skuItem.current)) {
                                try {
                                    var groupId = skuItemDO.params.groupId;
                                    skuItem.groupId = groupId;
                                } catch (error) {//ignore.
                                }

                                return skuItem;
                            }
                        }
                    }
                }
            }

            return skuItem;
        };

        var wrapperDisplayData = function wrapperDisplayData(data) {
            var displayData = {};

            if (isEmpty(data) || isEmpty(data.skuRelatedDOs)) {
                return displayData;
            }

            var skuItemDOs = data.skuRelatedDOs;

            if (isEmpty(skuItemDOs)) {
                return displayData;
            }

            displayData.skuItemBeans = [];

            for (var index = 0; index < skuItemDOs.length; index++) {
                var skuItemDO = skuItemDOs[index];

                if (isEmpty(skuItemDO)) {
                    continue;
                }

                displayData.skuItemBeans[index] = {};
                displayData.skuItemBeans[index].img = skuItemDO.img;
                displayData.skuItemBeans[index].title = skuItemDO.title;
                var skuItems = skuItemDO.items;

                if (!isEmpty(skuItems)) {
                    var skuTmpItems = [];

                    for (var i = 0; i < skuItems.length; i++) {
                        var skuItem = skuItems[i];
                        skuTmpItems[i] = {};
                        skuTmpItems[i].current = skuItem.current;
                        skuTmpItems[i].itemId = skuItem.itemId;
                        skuTmpItems[i].groupId = skuItemDO.params.groupId;
                        skuTmpItems[i].price = skuItem.price;
                        skuTmpItems[i].itemNameList = {};
                        skuTmpItems[i].itemNameList = skuItem.itemNameList;
                        skuTmpItems[i].params = {};

                        if (!isEmpty(skuItem.requestParams)) {
                            if (isTrue(skuItem.requestParams.canBuy) && !isTrue(skuItem.requestParams.isSellout)) {
                                skuTmpItems[i].disabled = "false";
                            } else {
                                skuTmpItems[i].disabled = "true";
                            }

                            skuTmpItems[i].params.locType = skuItem.requestParams.locType;
                        } else {
                            skuTmpItems[i].disabled = "true";
                        }
                    }

                    displayData.skuItemBeans[index].skuItems = [];
                    displayData.skuItemBeans[index].skuItems = skuTmpItems;
                }
            }

            return displayData;
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_maochao_cpu";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {

            var displayData = {};
            var originalData = context.originalData;
            if (isEmpty(originalData)) {
                return displayData;
            }
            var skuCoreData = originalData.skuCore;
            if (isEmpty(skuCoreData) || isEmpty(skuCoreData.relatedActionsData) || isEmpty(skuCoreData.relatedActionsData.skuRelatedDOs)) {
                return displayData;
            }

            try {
                var cpuData = parseTmallMarketCpuData(skuCoreData);
                displayData.skuBeans = wrapperDisplayData(cpuData);
                displayData.currentItem = getCurrentSelectedSkuItem(cpuData);
            } catch (error) {
            }

            return displayData;
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 头部信息 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_head";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        var isPVIdCanCheck = function isPVIdCanCheck(originalData, storedData, pvId) {
            if (isEmpty(pvId) || isEmpty(storedData.descartesMap)) {
                return false;
            }

            var pvIds = [];
            var pId = pvId.split(":")[0];

            for (var key in storedData["id_biz_property"].checkedPropValue) {
                if (!(pId === key)) {
                    pvIds.push(key + ":" + storedData["id_biz_property"].checkedPropValue[key]);
                }
            }

            pvIds.push(pvId);
            var pvPath = ascSortAndAppendPVIdList(pvIds);

            if (isEmpty(pvPath)) {
                return false;
            }

            if (storedData.descartesMap[pvPath] === true) {
                return true;
            }

            return false;
        };

        /** 补货中是否可选择 */
        var isPVIdCanCheckWithReplenishment = function isPVIdCanCheckWithReplenishment(originalData, storedData, pvId) {
            /** 是否开启了补货提醒 */
            if (isEmpty(originalData) || isEmpty(originalData.feature) || !isTrue(originalData.feature.buhuo)) {
                return false;
            }

            if (isEmpty(pvId) || isEmpty(storedData.outOfStockDescartesMap)) {
                return false;
            }

            var pvIds = [];
            var pId = pvId.split(":")[0];

            for (var key in storedData["id_biz_property"].checkedPropValue) {
                if (!(pId === key)) {
                    pvIds.push(key + ":" + storedData["id_biz_property"].checkedPropValue[key]);
                }
            }

            pvIds.push(pvId);
            var pvPath = ascSortAndAppendPVIdList(pvIds);

            if (isEmpty(pvPath)) {
                return false;
            }

            if (storedData.outOfStockDescartesMap[pvPath] === true) {
                return true;
            }

            return false;
        };

        /**uncheckedPVIds:{
         "1627207:881837000":true,
         "20549:69326249":true
        }*/
        /** 包括了补货升级的开关。如果库存为零，但是开启了补货，也是可选的。 */
        var getUncheckablePVIdMap = function getUncheckablePVIdMap(originalData, storedData) {
            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return;
            }

            var uncheckablePVIds = {};
            originalData.skuBase.props.forEach(function (sku, index) {
                var pid = sku.pid;

                if (!isEmpty(sku.values)) {
                    sku.values.forEach(function (value, index) {
                        var pvId = pid + ":" + value.vid;

                        if (!isPVIdCanCheck(originalData, storedData, pvId) && !isPVIdCanCheckWithReplenishment(originalData, storedData, pvId)) {
                            uncheckablePVIds[pvId] = true;
                        }
                    });
                }
            });
            return uncheckablePVIds;
        };

        var getHeadImagesMap = function getHeadImagesMap(originalData, storedData) {
            var imageInfoMap = [];

            if (!storedData["id_biz_property"].bigImageMode && !isEmpty(originalData.item) && !isEmpty(originalData.item.images)) {
                imageInfoMap.push({
                    url: originalData.item.images[0],
                    desc: "商品款式"
                });
            }

            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.skus || isEmpty(originalData.skuBase.props))) {
                return imageInfoMap;
            }

            var defaultUrl = !isEmpty(imageInfoMap[0]) ? imageInfoMap[0].url : "";
            var uncheckablePVIdsMap = getUncheckablePVIdMap(originalData, storedData);

            for (var i = 0, size = originalData.skuBase.props.length; i < size; i++) {
                var prop = originalData.skuBase.props[i];

                var hasImage = false;
                if (!isEmpty(prop) && !isEmpty(prop.values)) {
                    for (var j = 0, jsize = prop.values.length; j < jsize; j++) {
                        var value = prop.values[j];
                        if (!isEmpty(value) && !isEmpty(value.image)) {
                            hasImage = true;
                            break;
                        }
                    }
                }
                /** 找到了values[?]中有图片的一个prop-value值，然后将所有的p-v提取出来成一个[]值放到imageInfoMap中 */
                if (hasImage) {
                    var pid = prop.pid;

                    prop.values.forEach(function (value, index) {
                        var valueInfo = {
                            url: !isEmpty(value.image) ? value.image : defaultUrl,
                            desc: value.name,
                            pvId: pid + ":" + value.vid,
                            viewId: ("property_" + i)
                        };
                        if (uncheckablePVIdsMap[valueInfo.pvId]) {
                            /** canSelect = false */
                            valueInfo.canSelect = false;
                            valueInfo.selected = false;
                        } else {
                            /** canSelect = true */
                            valueInfo.canSelect = true;
                            valueInfo.selected = false;
                        }
                        imageInfoMap.push(valueInfo);
                    });
                    break;
                }
            }

            return imageInfoMap;
        };

        var getHeadMainImageInfo = function getHeadMainImageInfo(originalData, storedData) {
            var imageInfo = {
                mainPic: "",
                mainDesc: ""
            };

            /** 没有属性选中时，使用默认图 */
            for (var key in storedData["id_biz_property"].checkedPropValue) {
                if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                    break;
                }

                for (var i = 0, size = originalData.skuBase.props.length; i < size; i++) {
                    var prop = originalData.skuBase.props[i];

                    if (key !== prop.pid) {
                        continue;
                    }

                    if (isEmpty(prop.values)) {
                        continue;
                    }

                    for (var j = 0, length = prop.values.length; j < length; j++) {
                        var value = prop.values[j];

                        if (!isEmpty(value.image) && storedData["id_biz_property"].checkedPropValue[key] === value.vid) {
                            /** 找到了有图片的属性值，直接返回 */
                            imageInfo.mainPic = value.image;
                            imageInfo.mainDesc = value.name;
                            return imageInfo;
                        }
                    }
                }
            }

            if (!isEmpty(originalData.item) && !isEmpty(originalData.item.images)) {
                imageInfo.mainPic = originalData.item.images[0];
                imageInfo.mainDesc = "商品款式";
            }

            return imageInfo;
        };

        var getCurrentSkuQuantityDisplay = function getCurrentSkuQuantityDisplay(originalData, storedData) {
            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuItem) && isTrue(originalData.skuCore.skuItem.hideQuantity)) {
                return "";
            }
            var quantityText = getCurrentSkuQuantityText(originalData, storedData);
            if (!isEmpty(quantityText)) {
                return quantityText;
            } else {
                return "库存" + getCurrentSkuQuantity(originalData, storedData) + "件";
            }
        };

        var getCurrentSkuQuantity = function getCurrentSkuQuantity(originalData, storedData) {
            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return 0;
            }

            var quantity = parseInt(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].quantity);

            if (isEmpty(quantity)) {
                quantity = 0;
            }

            return quantity;
        };

        var getCurrentSkuQuantityText = function getCurrentSkuQuantityText(originalData, storedData) {
            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return "";
            }

            return originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].quantityText;
        };

        var getSkuAllServicesMap = function getSkuAllServicesMap(originalData, storedData) {
            if (isEmpty(originalData.services) || isEmpty(originalData.services.allServices)) {
                return {};
            }

            var allServicesMap = {};
            originalData.services.allServices.forEach(function (allService, index) {
                var uniqueServices = allService.uniqueServices;

                if (!isEmpty(uniqueServices)) {
                    /** 包含子服务 */
                    var children = {};
                    uniqueServices.forEach(function (uniqueService, index) {
                        children[uniqueService.uniqueId] = uniqueService;
                    });

                    /** 添加children的map结构，方便取子服务的数据结构 */
                    allService["children"] = children;
                }

                allServicesMap[allService.serviceId] = allService;
            });
            return allServicesMap;
        };

        var getSelectedPVText = function getSelectedPVText(originalData, storedData) {
            var selectedPVText = "";

            /** 不显示文本 */
            if (isEmpty(originalData.skuBase) || isEmpty(originalData.skuBase.props)) {
                return selectedPVText;
            }

            // TODO 配送地址还需要在头图中完善
            /** 表明有完整属性选择 */
            if (!isEmpty(storedData["id_biz_property"].skuId) && storedData["id_biz_property"].skuId !== "0") {
                selectedPVText = "已选:";
                originalData.skuBase.props.forEach(function (prop, index) {
                    var vid = storedData["id_biz_property"].checkedPropValue[prop.pid];

                    if (!isEmpty(prop.values)) {
                        prop.values.forEach(function (value, index) {
                            if (value.vid === vid) {
                                var selectedStr = !isEmpty(value.alias) ? value.alias : value.name;

                                if (!isEmpty(value.colorSeries) && !isEmpty(value.colorMaterial)) {
                                    selectedStr += "(色系为" + value.colorSeries + ", 质地为)" + value.colorMaterial;
                                } else if (!isEmpty(value.colorSeries)) {
                                    selectedStr += "(色系为" + value.colorSeries + ")";
                                } else if (!isEmpty(value.colorMaterial)) {
                                    selectedStr += "(质地为" + value.colorMaterial + ")";
                                }

                                selectedPVText += " \"" + selectedStr + "\"";
                            }
                        });
                    }
                });
                var allSelectedServiceStr = "";

                if (!isEmpty(storedData["id_biz_service"])) {
                    var allServicesMap = getSkuAllServicesMap(originalData, storedData);
                    /** 固定的服务 */
                    if (!isEmpty(storedData["id_biz_service"].fixedServiceUnique)) {
                        var fixedServiceUnique = storedData["id_biz_service"].fixedServiceUnique;
                        for (var serviceId in fixedServiceUnique) {
                            allSelectedServiceStr += " " + allServicesMap[serviceId].name;
                            var uniqueId = fixedServiceUnique[serviceId];

                            if (uniqueId !== "0") {
                                /** 含有子服务 */
                                allSelectedServiceStr += ":" + allServicesMap[serviceId].children[uniqueId].name;
                            }
                        }
                    }

                    /** 可选的服务 */
                    if (!isEmpty(storedData["id_biz_service"].checkedServiceUnique)) {
                        var checkedServiceUnique = storedData["id_biz_service"].checkedServiceUnique;
                        for (var _serviceId2 in checkedServiceUnique) {
                            allSelectedServiceStr += " " + allServicesMap[_serviceId2].name;
                            var _uniqueId2 = checkedServiceUnique[_serviceId2];

                            if (_uniqueId2 !== "0") {
                                /** 含有子服务 */
                                allSelectedServiceStr += ":" + allServicesMap[_serviceId2].children[_uniqueId2].name;
                            }
                        }
                    }
                }

                selectedPVText += allSelectedServiceStr;
            } else {
                selectedPVText = "请选择";
                originalData.skuBase.props.forEach(function (prop, index) {
                    if (!storedData["id_biz_property"].checkedPropValue.hasOwnProperty(prop.pid)) {
                        selectedPVText += " " + prop.name;
                    }
                });
            }

            return selectedPVText;
        };

        /** 获取头部的物流发货时间 */
        var getHeadLogisticsTime = function getHeadLogisticsTime(originalData, storedData) {
            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuItem) && (isTrue(originalData.skuCore.skuItem.showAddress) || isTrue(originalData.skuCore.skuItem.showAddressTaobao))) {
                /** 展示配送地址的物流发货时间 */
            } else {
                /** 展示头部的物流发货时间 */
                if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                    return "";
                }

                var skuIdInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuIdInfo)) {
                    return skuIdInfo.logisticsTime || "";
                }
            }

            return "";
        };

        /** services.sku2serviceMap 某个skuId对应的服务节点数据 */
        /**
         {
            "serviceId": "43946355833",
            "price": "0",
            "extraDisplayText": "xxx(String)",
            "free": "true"
          }
         {
            "serviceId": "556954727323",
            "serviceSkuPrices": [
              {
                "uniqueId": "3448866977070",
                "price": "11880",
                "extraDisplayText": "xxx(String)",
                "free": "false"
              },
              {
                "uniqueId": "3448866977069",
                "price": "17580",
                "extraDisplayText": "xxx(String)",
                "free": "false"
              },
              {
                "uniqueId": "3448866977068",
                "price": "26080",
                "extraDisplayText": "xxx(String)",
                "free": "false"
              }
            ]
          }
         */
        var getSkuId2ServicesMap = function getSkuId2ServicesMap(originalData, storedData) {
            if (isEmpty(originalData.services) || isEmpty(originalData.services.sku2serviceMap)) {
                return {};
            }

            var skuId2ServicesMap = {};
            var currentService = originalData.services.sku2serviceMap[storedData["id_biz_property"].skuId];
            if (isEmpty(currentService) || !isArray(currentService)) {
                return {};
            }
            currentService.forEach(function (service, index) {
                var serviceSkuPrices = service.serviceSkuPrices;

                if (!isEmpty(serviceSkuPrices)) {
                    /** 包含子价格 */
                    var children = {};
                    serviceSkuPrices.forEach(function (serviceSkuPrice, index) {
                        children[serviceSkuPrice.uniqueId] = serviceSkuPrice;
                    });

                    /** 添加children的map结构，方便取子服务的数据结构 */
                    service["children"] = children;
                }

                skuId2ServicesMap[service.serviceId] = service;
            });
            return skuId2ServicesMap;
        };

        /** 单位是 元 */
        var calcCurrentServicePrice = function calcCurrentServicePrice(originalData, storedData) {
            var servicePrice = 0.00;
            var skuIdServicesMap = getSkuId2ServicesMap(originalData, storedData);

            /** 固定的服务 */
            for (var serviceId in storedData["id_biz_service"].fixedServiceUnique) {
                var uniqueId = storedData["id_biz_service"].fixedServiceUnique[serviceId];

                if (uniqueId === "0") {
                    /** 没有子服务 */
                    servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[serviceId].price / 100.0);
                } else {
                    /** 含有子服务 */
                    servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[serviceId].children[uniqueId].price / 100.0);
                }
            }

            /** 可选的服务 */
            for (var _serviceId in storedData["id_biz_service"].checkedServiceUnique) {
                var _uniqueId = storedData["id_biz_service"].checkedServiceUnique[_serviceId];

                if (_uniqueId === "0") {
                    /** 没有子服务 */
                    servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[_serviceId].price / 100.0);
                } else {
                    /** 含有子服务 */
                    servicePrice += parseNumberWithDefaultZero(skuIdServicesMap[_serviceId].children[_uniqueId].price / 100.0);
                }
            }

            return servicePrice;
        };

        /** 单位是 元 */
        var calcTotalPrice = function calcTotalPrice(originalData, storedData, extInput) {
            /** 动态计算总价格 */
            var totalPrice = 0.00;

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return totalPrice;
            }

            var mode = getBottomBarMode(originalData, storedData, extInput);

            var sku2info = originalData.skuCore.sku2info;

            /** 主价格 */
            var mainPrice = sku2info[storedData["id_biz_property"].skuId].price;

            /** 副价格 */
            var subPrice = null;
            switch (mode) {
                case "CONFIRM_BUYNOW":
                    subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    break;
                default:
                    if (!isEmpty(sku2info[storedData["id_biz_property"].skuId].cart)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].cart.subPrice;
                    }
                    if (isEmpty(subPrice)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    }
            }

            if (!isEmpty(subPrice)) {
                totalPrice = subPrice.priceMoney / 100.0;
            } else if (!isEmpty(mainPrice)) {
                totalPrice = mainPrice.priceMoney / 100.0;
            }

            if (isNaN(totalPrice)) {
                totalPrice = 0.00;
            }

            totalPrice += calcCurrentServicePrice(originalData, storedData);
            return totalPrice;
        };

        var isSkuPropComplete = function isSkuPropComplete(originalData, storedData) {
            if (hasSku(originalData, storedData)) {
                return storedData["id_biz_property"].skuId !== "0"/**非默认值*/;
            }

            return true;
        };

        var getPriceNode = function getPriceNode(originalData, storedData, extInput) {
            var price = {
                priceText: "",
                priceTitle: "",
                priceSymbol: "￥",
                subPriceText: "",
                subPriceTitle: "",
                subPriceSymbol: "￥"
            };

            if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info)) {
                return price;
            }

            var mode = getBottomBarMode(originalData, storedData, extInput);

            // TODO childrenBundleItem类型有个特殊的逻辑待处理
            var sku2info = originalData.skuCore.sku2info;

            /** 主价格 */
            var mainPrice = sku2info[storedData["id_biz_property"].skuId].price;

            /** 副价格 */
            var subPrice = null;
            switch (mode) {
                case "CONFIRM_BUYNOW":
                    subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    break;
                default:
                    if (!isEmpty(sku2info[storedData["id_biz_property"].skuId].cart)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].cart.subPrice;
                    }
                    if (isEmpty(subPrice)) {
                        subPrice = sku2info[storedData["id_biz_property"].skuId].subPrice;
                    }
            }

            /** 动态计算总价格 */
            var totalPrice = calcTotalPrice(originalData, storedData, extInput);

            if (!isEmpty(mainPrice)) {
                var priceTitle = mainPrice.priceTitle || "";
                var priceSymbol = mainPrice.priceChar || "￥";
                var priceText = "";

                if (isSkuPropComplete(originalData, storedData)) {
                    if (!isEmpty(subPrice) && !isEmpty(subPrice.priceText)) {
                        priceText = mainPrice.priceText || "";
                    } else {
                        priceText = totalPrice.toFixed(2);
                    }
                } else {
                    priceText = mainPrice.priceText || "";
                }

                price.priceText = priceText;
                price.priceTitle = priceTitle;
                price.priceSymbol = priceSymbol;
            }

            if (!isEmpty(subPrice)) {
                var subPriceTitle = subPrice.priceTitle || "";
                var subPriceSymbol = subPrice.priceChar || "￥";
                var subPriceText = "";

                if (isSkuPropComplete(originalData, storedData)) {
                    if (!isEmpty(subPrice)/** && !isEmpty(subPrice.priceText) */) {
                        subPriceText = totalPrice.toFixed(2);
                    } else {
                        subPriceText = subPrice.priceText || "";
                    }
                } else {
                    subPriceText = subPrice.priceText || "";
                }

                price.subPriceText = subPriceSymbol + subPriceText;
                price.subPriceTitle = subPriceTitle;
                price.subPriceSymbol = subPriceSymbol;
            }

            return price;
        };

        /** 获取头部的优惠信息表达 */
        var getHeadExtraProm = function getHeadExtraProm(originalData, storedData) {
            var extraProm = "";

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info)) {
                var skuIdInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuIdInfo)) {
                    extraProm = skuIdInfo.extraProm;
                }
            }

            if (isEmpty(extraProm) && !isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuItem)) {
                extraProm = originalData.skuCore.skuItem.extraProm;
            }

            return (extraProm || "");
        };

        var getSkuHeadInfo = function getSkuHeadInfo(originalData, storedData, extInput) {
            var images = getHeadImagesMap(originalData, storedData);
            var headImageInfo = getHeadMainImageInfo(originalData, storedData);
            var stockText = getCurrentSkuQuantityDisplay(originalData, storedData);

            /**let price = "￥" + getCurrentSkuPrice(originalData, storedData, opData, bizData);*/
            var selectedText = getSelectedPVText(originalData, storedData);
            var desc = getHeadLogisticsTime(originalData, storedData);
            var priceNode = getPriceNode(originalData, storedData, extInput);
            var extraProm = getHeadExtraProm(originalData, storedData);
            var sku_head = {
                simpleMode: storedData["id_biz_property"].bigImageMode,
                imageInfoMap: images,
                mainPic: headImageInfo.mainPic,
                mainDesc: headImageInfo.mainDesc,
                stockText: stockText,
                priceText: priceNode.priceText,
                priceTitle: priceNode.priceTitle,
                subPriceText: priceNode.subPriceText,
                subPriceTitle: priceNode.subPriceTitle,
                currencySymbol: priceNode.priceSymbol,
                selText: selectedText,
                desc: desc,
                extraProm: extraProm
            };

            return sku_head;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            return getSkuHeadInfo(context.originalData, context.storedData, context.extInput);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 底部提示 */
    (function () {

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_bottom_tips";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {};
        };

        /** 获取底部提示 */
        var getSkuBottomTips = function getSkuBottomTips(originalData, storedData) {
            var sku_bottom_tips = {};

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info)) {
                var skuInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuInfo) && !isEmpty(skuInfo.skuPromTip)) {
                    sku_bottom_tips["tips"] = skuInfo.skuPromTip;
                }
            }

            return sku_bottom_tips;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            return getSkuBottomTips(context.originalData, context.storedData);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })(),
    /** 底部Bar */
    (function () {

        var replenishedMap = {};

        /** 初始化补货提醒 */
        var initReplenishedMap = function initReplenishedMap(originalData, storedData) {
            replenishedMap = {};
        };

        var synchronizeReplenishedData = function synchronizeReplenishedData(context, bizStoredData) {
            var componentSpace = context.storedData[getComponentId(context, bizStoredData)];
            if (isEmpty(componentSpace)) {
                return;
            }
            replenishedMap = (componentSpace.replenishedMap || {});
        };

        /** 初始化 */
        var initContext = function initContext(context, bizStoredData) {
            initReplenishedMap(context.originalData, context.storedData);
        };

        /** 当前组件的Id */
        var getComponentId = function getComponentId(context, bizStoredData) {
            return "id_biz_bottom";
        };

        /** 往全局容器存数据，便于在组件间传递 */
        var saveStoredData = function saveStoredData(context, bizStoredData) {
            return {
                replenishedMap: replenishedMap
            };
        };

        var dealReplenishEvent = function dealReplenishEvent(originalData, opData) {
            if ("update_replenish" !== opData.type || isEmpty(opData.eventData) || isEmpty(opData.eventData.skuId)) {
                return;
            }
            replenishedMap[opData.eventData.skuId] = true;
        };

        var getCurrentBuyMethod = function getCurrentBuyMethod(originalData, storedData) {
            var types = [];

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.buyPattern) && !isEmpty(originalData.skuCore.skuBuy.buyPattern.type)) {
                types = originalData.skuCore.skuBuy.buyPattern.type;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.skuBuy) && !isEmpty(originalData.skuCore.skuBuy.skuPattern) && !isEmpty(originalData.skuCore.skuBuy.skuPattern.type)) {
                types = originalData.skuCore.skuBuy.skuPattern.type;
            }

            for (var i = 0, size = types.length; i < size; i++) {
                var type = types[i];

                if (storedData["id_biz_buy_method"].method === type.bizId) {
                    return type;
                }
            }

            return {};
        };

        /** 当前的购买方式是否要隐藏花呗分期（天猫信用购） */
        var isCurrentBuyMethodHideInstallment = function isCurrentBuyMethodHideInstallment(originalData, storedData) {
            var buyMethod = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(buyMethod) && isTrue(buyMethod.hideInstallment)) {
                return true;
            }

            return false;
        };

        var assembleServiceUniquesToString = function assembleServiceUniquesToString(originalData, storedData) {
            var serviceUniqueStrArray = [];

            if (!isEmpty(storedData["id_biz_service"])) {
                if (!isEmpty(storedData["id_biz_service"].fixedServiceUnique)) {
                    var fixedServiceUnique = storedData["id_biz_service"].fixedServiceUnique;
                    for (var key in fixedServiceUnique) {
                        serviceUniqueStrArray.push(key + "|" + fixedServiceUnique[key]);
                    }
                }
                if (!isEmpty(storedData["id_biz_service"].checkedServiceUnique)) {
                    var checkedServiceUnique = storedData["id_biz_service"].checkedServiceUnique;
                    for (var _key in checkedServiceUnique) {
                        serviceUniqueStrArray.push(_key + "|" + checkedServiceUnique[_key]);
                    }
                }
            }

            var result = "";
            serviceUniqueStrArray.forEach(function (su, index) {
                result += "-" + su;
            });

            if (result.indexOf("-") > -1) {
                return result.substring(1);
            } else {
                return result;
            }
        };

        var isSkuPropComplete = function isSkuPropComplete(originalData, storedData) {
            if (hasSku(originalData, storedData)) {
                return storedData["id_biz_property"].skuId !== "0"/**非默认值*/
                    && parseInt(storedData["id_biz_quantity"].quantity.currentNum) > 0;
            }

            return true;
        };

        var hasServiceChecked = function hasServiceChecked(originalData, storedData) {
            if (!isEmpty(storedData["id_biz_service"])
                && (!isEmpty(storedData["id_biz_service"].fixedServiceUnique) || !isEmpty(storedData["id_biz_service"].checkedServiceUnique))) {
                return true;
            }

            return false;
        };

        var isSkuServiceComplete = function isSkuServiceComplete(originalData, storedData) {
            /** 没有服务节点时，默认服务是完成的状态 */
            if (isEmpty(originalData.services)) {
                return true;
            }

            if (isTrue(originalData.services.mustSelect)) {
                return hasServiceChecked(originalData, storedData);
            }

            return true;
        };

        var isNormalBuyMethod = function isNormalBuyMethod(originalData, storedData) {
            if (isEmpty(storedData["id_biz_buy_method"].method)) {
                /** 默认是常规购买 */
                return true;
            }

            return "normal" === storedData["id_biz_buy_method"].method;
        };

        var getCurrentBuyTypeOpenUrl = function getCurrentBuyTypeOpenUrl(originalData, storedData) {
            if (!isNormalBuyMethod(originalData, storedData)) {
                /** 非常规购买方式时，获取是否需要进入自定义的下单地址 */
                var buyMethod = getCurrentBuyMethod(originalData, storedData);

                if (!isEmpty(buyMethod)) {
                    return buyMethod.buyUrl;
                }
            }

            return "";
        };

        var getBuyNowWithCouponParams = function getBuyNowWithCouponParams(originalData, storedData) {
            var buyNowWithCouponParams = {};

            if (!isEmpty(originalData.seller)) {
                buyNowWithCouponParams["sellerId"] = originalData.seller.userId;
            }

            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info)) {
                var skuInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuInfo)) {
                    buyNowWithCouponParams["asac"] = skuInfo.asac || "";
                    buyNowWithCouponParams["itemApplyParams"] = skuInfo.itemApplyParams || "";
                }
            }

            return buyNowWithCouponParams;
        };

        var getFixedCartText = function getFixedCartText(originalData, storedData) {
            if (!isEmpty(originalData.trade) && !isEmpty(originalData.trade.cartText)) {
                return originalData.trade.cartText;
            }

            return "";
        };

        var getFixedBuyText = function getFixedBuyText(originalData, storedData) {
            /** 优先获取购买方式中的字段（信用购） */
            var buyMethod = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(buyMethod) && !isEmpty(buyMethod.okBtnText)) {
                return buyMethod.okBtnText;
            }

            /** skuInfo中的buyText优先 */
            if (!isEmpty(originalData.skuCore) && !isEmpty(originalData.skuCore.sku2info)) {
                var skuInfo = originalData.skuCore.sku2info[storedData["id_biz_property"].skuId];

                if (!isEmpty(skuInfo) && !isEmpty(skuInfo.buyText)) {
                    return skuInfo.buyText;
                }
            }

            /** trade中的buyText */
            if (!isEmpty(originalData.trade) && !isEmpty(originalData.trade.buyText)) {
                return originalData.trade.buyText;
            }

            return "";
        };

        var getCartParamsMap = function getCartParamsMap(originalData, storedData) {
            var params = {};

            for (var key in storedData.transparent_map) {
                params[key] = storedData.transparent_map[key];
            }

            if (!isEmpty(originalData.trade) && !isEmpty(originalData.trade.cartParam)) {
                for (var key in originalData.trade.cartParam) {
                    params[key] = originalData.trade.cartParam[key];
                }
            }

            return params;
        };

        var getBuyParamsMap = function getBuyParamsMap(originalData, storedData) {
            var params = {};

            for (var key in storedData.transparent_map) {
                params[key] = storedData.transparent_map[key];
            }

            if (!isEmpty(originalData.trade) && !isEmpty(originalData.trade.buyParam)) {
                for (var key in originalData.trade.buyParam) {
                    params[key] = originalData.trade.buyParam[key];
                }

                if (!isEmpty(originalData.delivery) && !isEmpty(originalData.delivery.addressId)) {
                    params["addressId"] = originalData.delivery.addressId;
                }
            }

            var buyMethod = getCurrentBuyMethod(originalData, storedData);

            if (!isEmpty(buyMethod) && !isEmpty(buyMethod.buyParams)) {
                if (isString(buyMethod.buyParams)) {
                    /** 不确定这段逻辑是否有用。如果是String的话，尝试转换成JsonObject。失败则不管 */
                    try {
                        var buyParamsMap = JSON.parse(buyMethod.buyParams);

                        for (var _key2 in buyParamsMap) {
                            params[_key2] = buyParamsMap[_key2];
                        }
                    } catch (e) {
                        /** Json转换可能出错，try catch起来 */
                    }
                } else {
                    /** 当JsonObject遍历处理 */
                    for (var _key3 in buyMethod.buyParams) {
                        params[_key3] = buyMethod.buyParams[_key3];
                    }
                }
            }

            return params;
        };

        var getBottomBarModeWithReplenish = function getBottomBarModeWithReplenish(originalData, storedData, extInput) {
            /** 默认是左边："加入购物车"、右边："立即购买" */
            var mode = getBottomBarMode(originalData, storedData, extInput);

            /** 有skuId，并且当前库存为零时，则表示开启了补货提醒。 */
            if (hasSku(originalData, storedData) && storedData["id_biz_property"].skuId !== "0") {
                /** skuId不为0时。一定能够获取到对应的sku2info。否则整个前提假设都崩了。 */
                /** 取反的意义在于防止服务端出现quantity未传，导致NaN的问题出现。 */
                if (isEmpty(originalData.skuCore) || isEmpty(originalData.skuCore.sku2info) || isEmpty(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId])) {
                    /** 标识无法获取当前skuId的quantity，则开启补货提醒功能 */
                    mode = "REPLENISH";
                } else if (!(parseInt(originalData.skuCore.sku2info[storedData["id_biz_property"].skuId].quantity) > 0)) {
                    /** 标识当前skuId的quantity <=0，则开启补货提醒功能 */
                    mode = "REPLENISH";
                }
            }

            return mode;
        };

        var getSkuBottomInfo = function getSkuBottomInfo(originalData, storedData, extInput) {
            /** 默认是左边："加入购物车"、右边："立即购买" */
            var mode = getBottomBarModeWithReplenish(originalData, storedData, extInput);
            var installmentCount = "";
            var installmentRatio = "";

            for (var cr in storedData["id_biz_installment"].checkedInstallment) {
                var crId = cr.split(":");
                installmentCount = crId[0];
                installmentRatio = crId[1];
            }

            /** 是否要禁用花呗分期，禁用的同时花呗分期的组件也会隐藏 */
            if (isCurrentBuyMethodHideInstallment(originalData, storedData)) {
                installmentCount = "";
                installmentRatio = "";
            }

            var areaId = "";

            if (!isEmpty(originalData.delivery)) {
                areaId = originalData.delivery.areaId;
            }

            var itemId = !isEmpty(originalData.item) ? originalData.item.itemId : "";
            var skuId = storedData["id_biz_property"].skuId;
            var quantity = storedData["id_biz_quantity"].quantity.currentNum;
            var cartQuantity = quantity;
            var serviceId = assembleServiceUniquesToString(originalData, storedData);

            // TODO 还有个isExtComponentComplete()的逻辑待补充
            var enableAction = !isEmpty(itemId) && isSkuPropComplete(originalData, storedData) && isSkuServiceComplete(originalData, storedData);

            var verificationTips = "商品ID获取失败，无法继续!";
            if (hasSku(originalData, storedData) && storedData["id_biz_property"].skuId === "0") {
                verificationTips = "请选择商品属性!";
            } else if (parseInt(storedData["id_biz_quantity"].quantity.currentNum) <= 0) {
                verificationTips = "请增加购买数量!";
            } else if (!isSkuServiceComplete(originalData, storedData)) {
                verificationTips = "请选择商品服务!";
                /** verificationTips = "请选择相关套餐" */
            }

            var buyNowUrl = "";

            if (!isEmpty(originalData.trade) && !isEmpty(originalData.trade.buyNowUrl)) {
                buyNowUrl = originalData.trade.buyNowUrl;
            }

            var buyTypeOpenUrl = getCurrentBuyTypeOpenUrl(originalData, storedData);

            if (!isEmpty(buyTypeOpenUrl)) {
                buyNowUrl = buyTypeOpenUrl;
            }

            buyNowUrl = buyNowUrl || "https://h5.m.taobao.com/awp/base/buy.htm";

            if (buyNowUrl.indexOf("?") === -1) {
                buyNowUrl += "?preBizName=taobao_sku";
            } else {
                buyNowUrl += "&preBizName=taobao_sku";
            }

            var buyNowWithCouponParams = getBuyNowWithCouponParams(originalData, storedData);
            var fixedCartText = getFixedCartText(originalData, storedData);
            var fixedBuyText = getFixedBuyText(originalData, storedData);
            var enableBuyNowClick = true;
            var enableAddCartClick = true;
            var fixedBuyNowEventName = "";
            var fixedAddCartEventName = "";

            if (!isEmpty(originalData.feature) && isTrue(originalData.feature.promotion2019) && !isEmpty(buyNowWithCouponParams.itemApplyParams)) {
                fixedBuyNowEventName = "BUYNOW_COUPON";
            }

            if (!isEmpty(originalData.trade) && !isTrue(originalData.trade.buyEnable)) {
                enableBuyNowClick = false;
                fixedBuyNowEventName = "UNKNOWN";
            }

            if (!isEmpty(originalData.vertical) && !isEmpty(originalData.vertical.jhs) && isTrue(originalData.vertical.jhs.needJoin)) {
                fixedAddCartEventName = "ADDCART_JHS";
                fixedBuyNowEventName = "BUYNOW_JHS";
            }

            if (!isEmpty(originalData.trade) && !isTrue(originalData.trade.cartEnable)) {
                enableAddCartClick = false;
                fixedAddCartEventName = "UNKNOWN";
            }

            var items = [];
            var addCartExParams = {};
            var buyNowExParams = {};

            switch (mode) {
                case "CONFIRM":
                    addCartExParams = getCartParamsMap(originalData, storedData);
                    buyNowExParams = getBuyParamsMap(originalData, storedData);

                    if (isNumberGreaterThan(installmentCount, 0)) {
                        addCartExParams["installmentPay"] = "true";
                        addCartExParams["installmentNum"] = installmentCount;
                        addCartExParams["installmentRate"] = installmentRatio;
                        buyNowExParams["installmentPay"] = "true";
                        buyNowExParams["installmentNum"] = installmentCount;
                        buyNowExParams["installmentRate"] = installmentRatio;
                    }

                    // 加购有个脑残逻辑，quantity需要除以倍数加购
                    cartQuantity /= storedData["id_biz_quantity"].quantity.unit;

                    addCartExParams["serviceId"] = serviceId;
                    addCartExParams["divisionId"] = areaId;
                    items.push({
                        "title": "确认",
                        "background": {
                            "startColor": "#ff5001",
                            "endColor": "#ff5001"
                        },
                        "eventName": "CONFIRM",
                        "enableAction": enableAction,
                        "enableClick": true,
                        "desc": ""
                    });
                    break;

                case "CONFIRM_ADDCART":
                    fixedCartText = (fixedCartText || "确认");
                case "ADDCART":
                    fixedCartText = (fixedCartText || "加入购物车");
                    addCartExParams = getCartParamsMap(originalData, storedData);

                    if (isNumberGreaterThan(installmentCount, 0)) {
                        addCartExParams["installmentPay"] = "true";
                        addCartExParams["installmentNum"] = installmentCount;
                        addCartExParams["installmentRate"] = installmentRatio;
                    }

                    // 加购有个脑残逻辑，quantity需要除以倍数加购
                    cartQuantity /= storedData["id_biz_quantity"].quantity.unit;
                    addCartExParams["serviceId"] = serviceId;
                    addCartExParams["divisionId"] = areaId;
                    items.push({
                        "title": fixedCartText,
                        "background": {
                            "startColor": "#ff5001",
                            "endColor": "#ff5001"
                        },
                        "eventName": fixedAddCartEventName || "ADDCART",
                        "enableAction": enableAction,
                        "enableClick": enableAddCartClick,
                        "desc": ""
                    });
                    break;

                case "CONFIRM_BUYNOW":
                    fixedBuyText = (fixedBuyText || "确认");
                case "BUYNOW":
                    fixedBuyText = (fixedBuyText || "立即购买");
                    buyNowExParams = getBuyParamsMap(originalData, storedData);

                    if (isNumberGreaterThan(installmentCount, 0)) {
                        buyNowExParams["installmentPay"] = "true";
                        buyNowExParams["installmentNum"] = installmentCount;
                        buyNowExParams["installmentRate"] = installmentRatio;
                    }

                    // TODO isIsvCustom()是个什么东西?
                    items.push({
                        "title": fixedBuyText,
                        "background": {
                            "startColor": "#ff5001",
                            "endColor": "#ff5001"
                        },
                        "eventName": fixedBuyNowEventName || "BUYNOW",
                        "enableAction": enableAction,
                        "enableClick": enableBuyNowClick,
                        "desc": ""
                    });
                    break;

                case "REPLENISH":
                    items.push({
                        "title": "缺货中，提醒掌柜补货",
                        "background": {
                            "startColor": "#ff5001",
                            "endColor": "#ff5001"
                        },
                        "eventName": replenishedMap[storedData["id_biz_property"].skuId] ? "REPLENISHED" : "REPLENISH",
                        "enableAction": true,
                        /**补货提醒，一定可点击*/
                        "enableClick": true,
                        /**补货提醒，一定可点击*/
                        "desc": ""
                    });
                    break;

                case "ADDCART_AND_BUYNOW":
                default:
                    addCartExParams = getCartParamsMap(originalData, storedData);
                    buyNowExParams = getBuyParamsMap(originalData, storedData);

                    if (isNumberGreaterThan(installmentCount, 0)) {
                        addCartExParams["installmentPay"] = "true";
                        addCartExParams["installmentNum"] = installmentCount;
                        addCartExParams["installmentRate"] = installmentRatio;
                        buyNowExParams["installmentPay"] = "true";
                        buyNowExParams["installmentNum"] = installmentCount;
                        buyNowExParams["installmentRate"] = installmentRatio;
                    }

                    // 加购有个脑残逻辑，quantity需要除以倍数加购
                    cartQuantity /= storedData["id_biz_quantity"].quantity.unit;

                    addCartExParams["serviceId"] = serviceId;
                    addCartExParams["divisionId"] = areaId;

                    /** 防止外部传入异常，再次设置默认值 */
                    mode = "ADDCART_AND_BUYNOW";
                    items.push({
                        "title": fixedCartText || "加入购物车",
                        "background": {
                            "startColor": "#ff9100",
                            "endColor": "#ff9100"
                        },
                        "eventName": fixedAddCartEventName || "ADDCART",
                        "enableAction": enableAction,
                        "enableClick": enableAddCartClick,
                        "desc": ""
                    });

                    // TODO isIsvCustom()是个什么东西?
                    items.push({
                        "title": fixedBuyText || "立即购买",
                        "background": {
                            "startColor": "#ff5001",
                            "endColor": "#ff5001"
                        },
                        "eventName": fixedBuyNowEventName || "BUYNOW",
                        "enableAction": enableAction,
                        "enableClick": enableBuyNowClick,
                        "desc": ""
                    });
                    break;
            }

            var sku_bottom = {
                bottom_bar_mode: mode,
                itemId: itemId,
                skuId: skuId,
                quantity: quantity,
                cartQuantity: cartQuantity,
                items: items,
                verificationTips: verificationTips,
                inputMode: getBottomBarMode(originalData, storedData, extInput),
                addCartParams: {
                    exParams: JSON.stringify(addCartExParams)
                },
                addCartJHSParams: JSON.stringify({
                    "action": "add2Cart"
                }),
                buyNowParams: {
                    targetUrl: buyNowUrl,
                    serviceId: serviceId,
                    tgKey: buyNowExParams.tgKey || "",
                    bookingDate: buyNowExParams.bookingDate || "",
                    entranceDate: buyNowExParams.entranceDate || "",
                    exParams: JSON.stringify(buyNowExParams)
                },
                buyNowWithJHSParams: JSON.stringify({
                    "action": "toBuy"
                }),
                buyNowWithCouponParams: buyNowWithCouponParams,
                replenishParams: {
                    sellerId: getSellerId(originalData)
                }
            };

            return sku_bottom;
        };

        /** 返回对应组件的视图数据 */
        var getDisplayData = function getDisplayData(context, bizStoredData) {
            synchronizeReplenishedData(context, bizStoredData);
            dealReplenishEvent(context.originalData, context.opData);

            return getSkuBottomInfo(context.originalData, context.storedData, context.extInput);
        };

        return function () {
            return {
                initContext: initContext,
                getComponentId: getComponentId,
                saveStoredData: saveStoredData,
                getDisplayData: getDisplayData
            };
        };
    })()
];

/** __targetSpecialBizsStoredData__在入参矫正时会设置成跟__targetSpecialBizs__长度一样的数组空间 */
var __targetSpecialBizsStoredData__ = [];

var __targetSpecialBizs__ = [];