.class Lcom/alibaba/analytics/core/store/LogStoreMgr$1;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/store/LogStoreMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/store/LogStoreMgr;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$1;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$1;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->store()V

    return-void
.end method
