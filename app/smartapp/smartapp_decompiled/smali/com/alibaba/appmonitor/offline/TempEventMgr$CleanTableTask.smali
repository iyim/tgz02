.class Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/offline/TempEventMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanTableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;


# direct methods
.method private constructor <init>(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/appmonitor/offline/TempEventMgr;Lcom/alibaba/appmonitor/offline/TempEventMgr$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;-><init>(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-static {v0}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->access$200(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-static {v0}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->access$300(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/appmonitor/offline/TempEventMgr$CleanTableTask;->this$0:Lcom/alibaba/appmonitor/offline/TempEventMgr;

    invoke-static {v0}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->access$400(Lcom/alibaba/appmonitor/offline/TempEventMgr;)V

    return-void
.end method
