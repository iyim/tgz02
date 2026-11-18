.class public Lcom/alibaba/ailabs/genie/utils/ut/UtReport;
.super Ljava/lang/Object;
.source "UtReport.java"


# static fields
.field public static APP_KEY:Ljava/lang/String; = ""

.field public static APP_VERSION:Ljava/lang/String; = "1.0"

.field private static final SPM_CNT:Ljava/lang/String; = "spm-cnt"

.field private static final SPM_URL:Ljava/lang/String; = "spm-url"

.field private static final TAG:Ljava/lang/String; = "UtReport"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clickUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickUT() called with: eventName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], pageName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], spm_cnt = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], props = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm-cnt"

    .line 111
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 112
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_KEY:Ljava/lang/String;

    const-string v1, "source_app_key"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_VERSION:Ljava/lang/String;

    const-string v1, "source_app_version"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 116
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_0
    new-instance p2, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 119
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    const-string p2, "controlHit"

    .line 120
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object p0

    .line 125
    const-class p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    .line 127
    :try_start_0
    invoke-interface {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customHit() called with: eventName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], pageName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],spm_cnt = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], props = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm-cnt"

    .line 78
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 79
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_VERSION:Ljava/lang/String;

    const-string v1, "source_app_version"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_KEY:Ljava/lang/String;

    const-string v1, "source_app_key"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 85
    :cond_0
    new-instance p2, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 86
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    const-string p2, "customHit"

    .line 87
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object p0

    .line 92
    const-class p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    .line 94
    :try_start_0
    invoke-interface {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static exposeUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exposeUT() called with: pageName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] spm_cnt = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], props = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm-cnt"

    .line 144
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 145
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_KEY:Ljava/lang/String;

    const-string v1, "source_app_key"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p2, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_VERSION:Ljava/lang/String;

    const-string v1, "source_app_version"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 151
    :cond_0
    new-instance p2, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 152
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    const-string p2, "manualExposureAll"

    .line 153
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 156
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object p0

    .line 159
    const-class p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    .line 161
    :try_start_0
    invoke-interface {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static initUT(Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;->app_version:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_VERSION:Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;->app_key:Ljava/lang/String;

    sput-object p0, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_KEY:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageUT() called with: pageName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] spm_cnt = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], props = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm-cnt"

    .line 47
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 48
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_KEY:Ljava/lang/String;

    const-string v1, "source_app_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->APP_VERSION:Ljava/lang/String;

    const-string v1, "source_app_version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_0
    new-instance p1, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 55
    invoke-virtual {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    const-string p1, "customPageHit"

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object p0

    .line 60
    const-class p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    .line 62
    :try_start_0
    invoke-interface {p1, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
