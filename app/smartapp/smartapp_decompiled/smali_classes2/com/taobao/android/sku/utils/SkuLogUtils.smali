.class public Lcom/taobao/android/sku/utils/SkuLogUtils;
.super Ljava/lang/Object;
.source "SkuLogUtils.java"


# static fields
.field private static final CHILD_BIZ_NAME:Ljava/lang/String; = "Main"

.field private static final FEATURE_TYPE:Ljava/lang/String; = "Main"

.field private static final MAIN_BIZ_NAME:Ljava/lang/String; = "New_Sku"

.field private static final PAGE_NAME:Ljava/lang/String; = "Page_New_SKU"

.field public static final UM_DOWNGRADE_E:Ljava/lang/String; = "UME_SKU_001"

.field public static final UM_PERFORMANCE_M:Ljava/lang/String; = "UPM_SKU_000"

.field public static final UM_URL_DOWNGRADE_INIT_E:Ljava/lang/String; = "UME_SKU_URL_001"

.field public static final UM_URL_DOWNGRADE_JSI_E:Ljava/lang/String; = "UME_SKU_URL_003"

.field public static final UM_URL_DOWNGRADE_MTOP_E:Ljava/lang/String; = "UME_SKU_URL_002"

.field public static final UM_URL_DOWNGRADE_REDIRECT_URL_E:Ljava/lang/String; = "UME_SKU_URL_004"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 101
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AliXSkuCore"

    .line 103
    invoke-interface {v0, v1, p2}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v8, Lcom/taobao/android/sku/utils/SkuLogUtils$2;

    invoke-direct {v8, p2}, Lcom/taobao/android/sku/utils/SkuLogUtils$2;-><init>(Ljava/lang/String;)V

    const-string v3, "Main"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "New_Sku"

    move-object v7, p0

    move-object v9, p1

    move-object v10, p2

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 77
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AliXSkuCore"

    invoke-interface {v1, v4, v3}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v6, Lcom/taobao/android/sku/utils/SkuLogUtils$1;

    invoke-direct {v6, p2, p3, p4}, Lcom/taobao/android/sku/utils/SkuLogUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Main"

    const-string v4, ""

    const-string v5, "New_Sku"

    move-object v0, v1

    move-object v1, v3

    move-object v2, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static exposureNewSKU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 41
    invoke-static {}, Lcom/taobao/android/AliUserTrackerServiceFetcher;->getUserTrackerService()Lcom/taobao/android/AliUserTrackerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x899

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 43
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",sellerId="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    const-string v1, "Page_New_SKU"

    const-string v3, "showSKU"

    invoke-interface/range {v0 .. v6}, Lcom/taobao/android/AliUserTrackerInterface;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 11

    .line 57
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AliXSkuCore"

    .line 59
    invoke-interface {v0, v1, p0}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "New_Sku"

    const-string v4, "Main"

    const-string v5, "Main"

    const-string v7, "UME_SKU_LOG_E"

    move-object v8, p0

    .line 64
    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static recordCloseNewSKU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 49
    invoke-static {}, Lcom/taobao/android/AliUserTrackerServiceFetcher;->getUserTrackerService()Lcom/taobao/android/AliUserTrackerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x899

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 51
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",sellerId="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    const-string v1, "Page_New_SKU"

    const-string v3, "closeSKU"

    invoke-interface/range {v0 .. v6}, Lcom/taobao/android/AliUserTrackerInterface;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
