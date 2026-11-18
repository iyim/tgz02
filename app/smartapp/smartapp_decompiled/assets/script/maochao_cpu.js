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