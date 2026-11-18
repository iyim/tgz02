.class final Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;
.super Ljava/lang/Object;
.source "MemoryMonitorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->sendImgInfo(Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Ljava/lang/String;

.field final synthetic val$size:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$size:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$config:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$url:Ljava/lang/String;

    const-string v2, "_field_arg1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$size:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_field_arg2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$config:Ljava/lang/String;

    const-string v2, "_field_arg3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;->val$url:Ljava/lang/String;

    const-string v2, "img_size"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
