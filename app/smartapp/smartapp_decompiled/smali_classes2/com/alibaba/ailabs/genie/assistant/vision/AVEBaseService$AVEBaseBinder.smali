.class public Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;
.super Landroid/os/Binder;
.source "AVEBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AVEBaseBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object v0
.end method
