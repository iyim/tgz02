.class final Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;
.super Ljava/lang/Object;
.source "GenieTimeMonitorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->stopTimeCalculate(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$costTime:J

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$key:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$costTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " costTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$costTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTimeMonitorUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$costTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_field_arg1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;->val$key:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
