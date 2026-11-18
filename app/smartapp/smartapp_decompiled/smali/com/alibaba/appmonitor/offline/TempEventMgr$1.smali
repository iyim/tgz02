.class Lcom/alibaba/appmonitor/offline/TempEventMgr$1;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/offline/TempEventMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$1;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$1;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->store()V

    return-void
.end method
