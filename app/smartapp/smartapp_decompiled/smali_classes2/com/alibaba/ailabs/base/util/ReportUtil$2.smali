.class final Lcom/alibaba/ailabs/base/util/ReportUtil$2;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/ReportUtil;->reportPageShow(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/HashMap;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$map:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$page:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "reportPageShow "

    const-string v1, "MarketReport-"

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$map:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$page:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$event:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->manualExposure(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$page:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$event:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$map:Ljava/util/HashMap;

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->manualExposure(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$2;->val$map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
