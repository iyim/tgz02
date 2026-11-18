.class public Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;
.super Landroid/os/Binder;
.source "MarketDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    return-object v0
.end method
