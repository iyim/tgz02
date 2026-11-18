.class final Lcom/alibaba/ailabs/base/util/ReportUtil$1;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
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

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$map:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MarketReport-"

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$map:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$page:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$page:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$map:Ljava/util/HashMap;

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCustomEvent page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", map = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$1;->val$map:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportPageShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
