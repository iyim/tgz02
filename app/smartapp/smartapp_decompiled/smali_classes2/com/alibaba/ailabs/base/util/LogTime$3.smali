.class final Lcom/alibaba/ailabs/base/util/LogTime$3;
.super Ljava/lang/Object;
.source "LogTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/LogTime;->clearTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LogTime"

    const-string v1, "clearTime"

    .line 103
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$100()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
